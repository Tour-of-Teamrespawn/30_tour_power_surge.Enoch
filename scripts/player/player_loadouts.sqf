private _unit = _this;
private _loadout = [];

if (!hasinterface || {
    player != _unit
}) exitwith {
    false
};

switch (typeOf _unit) do {
    case "UK3CB_BAF_Officer_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Smock_DPMW", [["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 3, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["HandGrenade", 2, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 5, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 2, 20], ["UK3CB_BAF_SmokeShell", 2, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["B_IR_Grenade", 1, 1],["acex_intelitems_notepad",1,1]]], ["UK3CB_BAF_B_Bergen_OLI_SL_A", [["ACE_EarPlugs", 1], ["ACE_quikclot", 4], ["ACE_elasticBandage", 8], ["ACE_packingBandage", 4], ["ACE_tourniquet", 4], ["ACE_morphine", 5], ["ACE_epinephrine", 7], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_splint", 2], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 7, 20], ["HandGrenade", 2, 1], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["rhs_mag_20Rnd_762x51_m62_fnfal", 3, 20]]], "UK3CB_BAF_H_Mk6_DPMW_B", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_Medic_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Smock_DPMW_OLI", [["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1], ["UK3CB_BAF_SmokeShellPurple", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["HandGrenade", 1, 1], ["UK3CB_BAF_SmokeShellPurple", 1, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 3, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 1, 20]]], ["UK3CB_BAF_B_Carryall_OLI", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_elasticBandage", 24], ["ACE_packingBandage", 12], ["ACE_quikclot", 12], ["ACE_splint", 10], ["ACE_tourniquet", 12], ["ACE_morphine", 10], ["ACE_epinephrine", 22], ["ACE_adenosine", 8], ["ACE_salineIV", 4], ["ACE_salineIV_500", 8], ["ACE_personalAidKit", 1], ["ACE_surgicalKit", 1], ["ACE_bodyBag", 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["UK3CB_BAF_SmokeShellPurple", 2, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 4, 20]]], "UK3CB_BAF_H_Mk6_DPMW_C", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_SC_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Smock_DPMW", [["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 3, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1],["acex_intelitems_notepad",1,1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["ACE_Clacker", 1], ["ACE_SpraypaintBlue", 1], ["HandGrenade", 3, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 3, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 2, 20], ["UK3CB_BAF_SmokeShell", 1, 1], ["DemoCharge_Remote_Mag", 1, 1]]], ["UK3CB_BAF_B_Bergen_OLI_SL_A", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_20Rnd_762x51_m62_fnfal", 1, 20], ["rhs_mag_20Rnd_762x51_m80_fnfal", 4, 20], ["UK3CB_BAF_SmokeShell", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["HandGrenade", 2, 1], ["B_IR_Grenade", 1, 1]]], "UK3CB_BAF_H_Mk6_DPMW_B", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_FT_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Jumperuniform_DPMW", [["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 3, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1],["acex_intelitems_notepad",1,1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["ACE_Clacker", 1], ["ACE_SpraypaintBlue", 1], ["HandGrenade", 3, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 3, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 2, 20], ["UK3CB_BAF_SmokeShell", 1, 1], ["DemoCharge_Remote_Mag", 1, 1]]], ["UK3CB_BAF_B_Bergen_OLI_SL_A", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_20Rnd_762x51_m62_fnfal", 1, 20], ["rhs_mag_20Rnd_762x51_m80_fnfal", 4, 20], ["UK3CB_BAF_SmokeShell", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["HandGrenade", 2, 1], ["UK3CB_BAF_762_100Rnd_T", 4, 100]]], "UK3CB_BAF_H_Mk6_DPMW_F", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_LAT_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], ["rhs_weap_m72a7", "", "", "", [], [], ""], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Jumperuniform_DPMW", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 1], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_elasticBandage", 3], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["HandGrenade", 1, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 3, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 2, 20]]], ["UK3CB_BAF_B_Bergen_OLI_Rifleman_B", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_20Rnd_762x51_m62_fnfal", 1, 20], ["rhs_mag_20Rnd_762x51_m80_fnfal", 4, 20], ["UK3CB_BAF_762_100Rnd_T", 4, 100]]], "UK3CB_BAF_H_Mk6_DPMW_B", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_explosive_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Jumperuniform_DPMW", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 1], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_elasticBandage", 3], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["ACE_DefusalKit", 1], ["ACE_Clacker", 1], ["HandGrenade", 1, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 3, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 2, 20], ["DemoCharge_Remote_Mag", 3, 1]]], ["UK3CB_BAF_B_Carryall_OLI", [["UK3CB_BAF_H_Beret_RM_Bootneck", 1], ["ACE_M26_Clacker", 1], ["ACE_SpraypaintRed", 1], ["ACE_SpraypaintBlue", 1], ["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_20Rnd_762x51_m62_fnfal", 1, 20], ["rhs_mag_20Rnd_762x51_m80_fnfal", 4, 20], ["DemoCharge_Remote_Mag", 5, 1], [["ACE_VMH3", "", "", "", [], [], ""], 1]]], "UK3CB_BAF_H_Mk6_DPMW_B", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_Engineer_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Smock_DPMW_OLI", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 1], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["HandGrenade", 1, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 5, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 3, 20], ["DemoCharge_Remote_Mag", 2, 1]]], ["UK3CB_BAF_B_Carryall_OLI", [["ACE_elasticBandage", 7], ["ACE_packingBandage", 4], ["ACE_tourniquet", 4], ["ACE_morphine", 5], ["ACE_epinephrine", 7], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["ACE_DefusalKit", 1], ["ACE_Clacker", 1], ["ACE_M26_Clacker", 1], ["ACE_SpraypaintRed", 1], ["toolKit", 1], ["ACE_wirecutter", 1], ["ACE_SpraypaintBlue", 1], ["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_splint", 2], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["ACE_EarPlugs", 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 2, 20], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1], [["ACE_VMH3", "", "", "", [], [], ""], 1]]], "UK3CB_BAF_H_Mk6_DPMW_F", "G_Tactical_Clear", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_MGGPMG_Smock_DPMW": {
        _loadout = [["UK3CB_BAF_L7A2", "", "", "", ["UK3CB_BAF_762_100Rnd_T", 100], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Smock_DPMW", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 1], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_elasticBandage", 3], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["HandGrenade", 1, 1], ["UK3CB_BAF_9_13Rnd", 2, 13], ["UK3CB_BAF_762_100Rnd_T", 2, 100]]], ["UK3CB_BAF_B_Kitbag_DPMW", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["UK3CB_BAF_762_100Rnd_T", 4, 100]]], "UK3CB_BAF_H_Mk6_DPMW_C", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_MGGPMGA_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Smock_DPMW", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 1], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_elasticBandage", 3], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["HandGrenade", 1, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 3, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 2, 20]]], ["UK3CB_BAF_B_Carryall_OLI", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_20Rnd_762x51_m62_fnfal", 1, 20], ["rhs_mag_20Rnd_762x51_m80_fnfal", 4, 20], ["UK3CB_BAF_762_100Rnd_T", 6, 100]]], "UK3CB_BAF_H_Mk6_DPMW_A", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_MAT_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], ["rhs_weap_maaws", "", "", "", ["rhs_mag_maaws_HEAT", 1], [], ""], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Smock_DPMW_OLI", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 1], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_elasticBandage", 3], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["HandGrenade", 1, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 3, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 2, 20]]], ["UK3CB_BAF_B_Bergen_OLI_Rifleman_B", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_20Rnd_762x51_m62_fnfal", 1, 20], ["rhs_mag_20Rnd_762x51_m80_fnfal", 4, 20]]], "UK3CB_BAF_H_Mk6_DPMW_F", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_MATC_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Smock_DPMW", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 1], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_elasticBandage", 3], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["HandGrenade", 1, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 6, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 2, 20]]], ["UK3CB_BAF_B_Carryall_OLI", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_maaws_HEAT", 3, 1]]], "UK3CB_BAF_H_Mk6_DPMW_C", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_Marksman_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "rhsgref_acc_l1a1_l2a2", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Smock_DPMW_OLI", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 1], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_OLI", [["ACE_elasticBandage", 3], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["HandGrenade", 1, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 6, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 2, 20]]], ["UK3CB_BAF_B_Carryall_DPMW", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 6, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 2, 20], ["UK3CB_BAF_762_100Rnd_T", 2, 100]]], "UK3CB_BAF_H_Mk6_DPMW_C", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_Spotter_Smock_DPMW_Ghillie": {
        _loadout = [["rhs_weap_l1a1", "", "", "rhsgref_acc_l1a1_l2a2", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Combatuniform_DPMW_Ghillie_RM", [["ACE_EarPlugs", 1], ["ACE_quikclot", 1], ["UK3CB_BAF_9_13Rnd", 3, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 2, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_quikclot", 1], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["ACE_Clacker", 1], ["Laserbatteries", 1], ["ACE_Kestrel4500", 1], ["ACE_ATragMX", 1], ["ACE_RangeCard", 1], ["ACE_Altimeter", 1], ["UK3CB_BAF_SmokeShellGreen", 1, 1], ["UK3CB_BAF_SmokeShellorange", 1, 1], ["B_IR_Grenade", 1, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 3, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 1, 20], ["Claymoredirectionalmine_Remote_Mag", 1, 1]]], ["UK3CB_BAF_B_Bergen_OLI_JTAC_A", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 4, 20]]], "UK3CB_BAF_H_Mk6_DPMW_A", "", ["UK3CB_BAF_Soflam_Laserdesignator", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_Sniper_Smock_DPMW_Ghillie": {
        _loadout = [["UK3CB_BAF_L115A3_RKSL_PMII_525_wdl", "", "", "RKSL_optic_PMII_525_wdl", ["UK3CB_BAF_338_5Rnd", 5], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Combatuniform_DPMW_Ghillie_RM", [["ACE_EarPlugs", 1], ["ACE_quikclot", 1], ["UK3CB_BAF_9_13Rnd", 3, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 2, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_quikclot", 1], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["ACE_Clacker", 1], ["ACE_Kestrel4500", 1], ["ACE_RangeCard", 1], ["ACE_Altimeter", 1], ["UK3CB_BAF_SmokeShellGreen", 1, 1], ["UK3CB_BAF_SmokeShellorange", 1, 1], ["B_IR_Grenade", 1, 1], ["UK3CB_BAF_338_5Rnd", 4, 5], ["Claymoredirectionalmine_Remote_Mag", 1, 1], [["ACE_Vector", "", "", "", [], [], ""], 1]]], ["UK3CB_BAF_B_Bergen_OLI_JTAC_A", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["UK3CB_BAF_338_5Rnd", 4, 5]]], "UK3CB_BAF_H_Mk6_DPMW_A", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_MFC_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Jumperuniform_DPMW", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 1], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_elasticBandage", 3], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["ACE_Altimeter", 1], ["ACE_SpraypaintBlue", 1], ["HandGrenade", 1, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 3, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 2, 20], [["ACE_Vector", "", "", "", [], [], ""], 1]]], ["UK3CB_BAF_B_Bergen_OLI_SL_A", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_20Rnd_762x51_m62_fnfal", 1, 20], ["rhs_mag_20Rnd_762x51_m80_fnfal", 4, 20], ["B_IR_Grenade", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["UK3CB_BAF_SmokeShellRed", 4, 1], ["HandGrenade", 2, 1], ["ACE_Kestrel4500", 1], ["UK3CB_BAF_L16_RangeTable", 1]]], "UK3CB_BAF_H_Mk6_DPMW_A", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    case "UK3CB_BAF_gunnerStatic_Smock_DPMW": {
        _loadout = [["rhs_weap_l1a1", "", "", "", ["rhs_mag_20Rnd_762x51_m80_fnfal", 20], [], ""], [], ["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd", 13], [], ""], ["UK3CB_BAF_U_Smock_DPMW_OLI", [["ACE_EarPlugs", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 1], ["UK3CB_BAF_9_13Rnd", 1, 13], ["Chemlight_green", 1, 1], ["Chemlight_blue", 1, 1], ["UK3CB_BAF_SmokeShellBlue", 1, 1], ["UK3CB_BAF_SmokeShellRed", 1, 1], ["UK3CB_BAF_SmokeShell", 2, 1], ["HandGrenade", 1, 1]]], ["UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW", [["ACE_elasticBandage", 3], ["ACE_packingBandage", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_Maptools", 1], ["ACE_Flashlight_XL50", 1], ["ACE_CableTie", 2], ["ACE_IR_strobe_Item", 1], ["HandGrenade", 1, 1], ["rhs_mag_20Rnd_762x51_m80_fnfal", 4, 20], ["rhs_mag_20Rnd_762x51_m62_fnfal", 1, 20]]], ["UK3CB_BAF_B_Carryall_DPMW", [["UK3CB_BAF_G_Tactical_Clear", 1], ["ACE_quikclot", 2], ["ACE_elasticBandage", 4], ["ACE_packingBandage", 2], ["ACE_splint", 2], ["ACE_tourniquet", 2], ["ACE_morphine", 2], ["ACE_epinephrine", 4], ["ACE_salineIV_500", 1], ["ACE_Entrenchingtool", 1], ["rhs_mag_20Rnd_762x51_m62_fnfal", 1, 20], ["rhs_mag_20Rnd_762x51_m80_fnfal", 4, 20], ["ACE_Kestrel4500", 1], ["UK3CB_BAF_L16_RangeTable", 1]]], "UK3CB_BAF_H_Mk6_DPMW_B", "", ["Binocular", "", "", "", [], [], ""], ["ItemMap", "", "", "ItemCompass", "ItemWatch", ""]];
    };
    default {
        throw (format ["invalid unit typeOf: %1", typeOf _unit])
    };
};

_unit setUnitLoadout _loadout;
_unit addItem "ACRE_PRC343"; 
_unit addItem "ACRE_PRC152";

if (A455_DEBUG_modE) then {
    hint format ["Class: %1\nloadout: %2", typeOf _unit, _loadout];
};