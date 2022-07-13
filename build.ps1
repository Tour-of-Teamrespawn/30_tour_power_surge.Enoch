# TODO - Copy new PBO to local dedicated server
# TODO - Option to start (local) dedicated server with new mission launched

$ErrorActionPreference = 'Stop'
if (($null -eq $PSScriptRoot) -or ([System.String]::IsNullOrWhiteSpace($PSScriptRoot))) {
    # assume we are in the root of the mission folder (same as this file)
    $ProjectRoot = (Get-Location).Path
} else {
    $ProjectRoot = $PSScriptRoot
}
$MissionFolderName = Split-Path $ProjectRoot -Leaf
$TourServerIP = $ENV:TOUR_SERVER_IP # e.g. "12.23.32.41"
$TourServerPort = $ENV:TOUR_SERVER_PORT # e.g. 8821
$TourServer = "$($TourServerIP):$($TourServerPort)"

# Automatic increment of mission version found in init.sqf, used to add to the exported PBO
$InitSQF = Get-Content -Path (Join-Path -Path $ProjectRoot -ChildPath 'init.sqf') -Raw
if ($InitSQF -match '###MISSION_VERSION\s(\d\.\d)') {
    $Version = [System.Version]($Matches.1)
    Write-Host "Current mission version: $Version"

    $NewVersion = [System.Version]"$($Version.Major).$($Version.Minor + 1)"
    Write-Host "New mission version: $NewVersion"

    $NewInitSQF = $InitSQF -replace '###MISSION_VERSION\s(\d\.\d)', "###MISSION_VERSION $NewVersion"
    try { [System.IO.File]::WriteAllLines((Join-Path -Path $ProjectRoot -ChildPath 'init.sqf'), $NewInitSQF) }
    catch { throw "Failed to overwrite init.sqf with version tag. Maybe close the file?" }
    Write-Host "Overwrote init.sqf with version tag successfully"
} else {
    Write-Warning "Version missing from init.sqf. For automatic version increments add a block comment somewhere in your init.sqf with a line exactly like so: '###MISSION_VERSION 0.1'"
}

# Path to FileBank, part of the Arma 3 Tools steam download
$FileBank_EXE = 'C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Tools\FileBank\FileBank.exe'

# Where to save the resulting PBO, set to MPMissions for easy local testing
$OutputPath = 'C:\Program Files (x86)\Steam\steamapps\common\Arma 3\MPMissions'

Write-Host "Exporting current mission folder: '$MissionFolderName' to MPMissions path: '$OutputPath'"
& $FileBank_EXE -dst $OutputPath $ProjectRoot

# Get the pbo built with FileBank
$ExportedPBO = Get-Item -Path (Join-Path -Path $OutputPath -ChildPath "$MissionFolderName.pbo")

# insert (file name compatible) version to pbo before world
# insert _mods_ as it will pretty much always do it anyway
# e.g. 30_tour_power_surge.Enoch.pbo -> 30_tour_power_surge_mods_0_2.Enoch.pbo
$PBO_withVersion = $ExportedPBO.Name.SubString(0, $ExportedPBO.Name.IndexOf('.')) + "_mods" + "_v$($NewVersion.ToString().Replace('.','_'))" + $ExportedPBO.Name.SubString($ExportedPBO.Name.IndexOf('.'))

# rename PBO to include version
$NewPBO = Rename-Item -Path $ExportedPBO.FullName -NewName $PBO_withVersion -Force -PassThru

$title    = "Upload PBO '$PBO_withVersion' to Tour ARMA 3 server $TourServer ?"
$question = 'Are you sure you want to proceed?'
$choices  = '&Yes', '&No'

$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 0) {
    $FTPUsername = if ($null -eq $env:TOUR_FTP_USERNAME) {
        # Environment var for username not set, prompt for response
        Read-Host "Paste FTP username for the server '$TourServer'"
    } else {
        Write-Host "Getting FTP username from env:TOUR_FTP_USERNAME"
        $env:TOUR_FTP_USERNAME
    }
    $FTPPassword = if ($null -eq $env:TOUR_FTP_PASSWORD) {
        # Environment var for password not set, prompt for response
        Read-Host "Paste FTP password for user '$FTPUsername'" -MaskInput
    } else {
        Write-Host "Getting FTP password from env:TOUR_FTP_PASSWORD"
        $env:TOUR_FTP_PASSWORD
    }

    # ensure powershell can use all the available TLS protocols (not just TLS1.0 or w.e)
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12,[Net.SecurityProtocolType]::Tls11,[Net.SecurityProtocolType]::Tls,[Net.SecurityProtocolType]::Tls13
    
    # create the FtpWebRequest and configure it
    # ensure full path is set including desired filename
    $ftp = [System.Net.FtpWebRequest]::Create("ftp://$TourServer/$($TourServer)_2302/mpmissions/$PBO_withVersion")
    $ftp = [System.Net.FtpWebRequest]$ftp
    $ftp.Method = [System.Net.WebRequestMethods+Ftp]::UploadFile
    $ftp.Credentials = new-object System.Net.NetworkCredential($FTPUsername,$FTPPassword)
    $ftp.UseBinary = $true
    $ftp.UsePassive = $true
    $ftp.EnableSsl = $True
    # read in the file to upload as a byte array
    $content = [System.IO.File]::ReadAllBytes($NewPBO.FullName)
    $ftp.ContentLength = $content.Length
    # get the request stream, and write the bytes into it
    $rs = $ftp.GetRequestStream()
    $rs.Write($content, 0, $content.Length)
    # be sure to clean up after ourselves
    $rs.Close()
    $rs.Dispose()
} else {
    Write-Host 'Skipping FTP upload'
}
