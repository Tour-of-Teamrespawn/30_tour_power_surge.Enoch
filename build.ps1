$ErrorActionPreference = 'Stop'
$MissionFolderName = Split-Path $PSScriptRoot -Leaf

# Automatic increment of mission version found in init.sqf, used to add to the exported PBO
$InitSQF = Get-Content -Path (Join-Path -Path $PSScriptRoot -ChildPath 'init.sqf') -Raw
if ($InitSQF -match '###MISSION_VERSION\s(\d\.\d)') {
    $Version = [System.Version]($Matches.1)
    Write-Host "Current mission version: $Version"

    $NewVersion = [System.Version]"$($Version.Major).$($Version.Minor + 1)"
    Write-Host "New mission version: $NewVersion"

    $NewInitSQF = $InitSQF -replace '###MISSION_VERSION\s(\d\.\d)', "###MISSION_VERSION $NewVersion"
    try { [System.IO.File]::WriteAllLines((Join-Path -Path $PSScriptRoot -ChildPath 'init.sqf'), $NewInitSQF) }
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
& $FileBank_EXE -dst $OutputPath $PSScriptRoot

# Get the pbo built with FileBank
$ExportedPBO = Get-Item -Path (Join-Path -Path $OutputPath -ChildPath "$MissionFolderName.pbo")

# insert (file name compatible) version to pbo before world
# e.g. 30_tour_power_surge.Enoch.pbo -> 30_tour_power_surge_0_2.Enoch.pbo
$PBO_withVersion = $ExportedPBO.Name.SubString(0, $ExportedPBO.Name.IndexOf('.')) + "_$($NewVersion.ToString().Replace('.','_'))" + $ExportedPBO.Name.SubString($ExportedPBO.Name.IndexOf('.'))

# rename PBO to include version
$NewPBO = Rename-Item -Path $ExportedPBO.FullName -NewName $PBO_withVersion -Force -PassThru

# TODO - Copy new PBO to local dedicated server
# TODO - Option to start (local) dedicated server with new mission launched
# TODO - Option to upload file via FTP to Tour server
