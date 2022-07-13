// LAMBS Danger
force lambs_danger_cqbRange = 60;
force lambs_danger_disableAIAutonomousManoeuvres = false;
force lambs_danger_disableAIDeployStaticWeapons = false;
force lambs_danger_disableAIFindStaticWeapons = false;
force lambs_danger_disableAIHideFromTanksAndAircraft = false;
force lambs_danger_disableAIPlayerGroup = false;
force lambs_danger_disableAIPlayerGroupReaction = false;
force lambs_danger_disableAutonomousFlares = false;
force lambs_danger_disableAutonomousSmokeGrenades = false;
force lambs_danger_panicChance = 0.1;

// LAMBS Danger Eventhandlers
force lambs_eventhandlers_ExplosionEventHandlerEnabled = true;
force lambs_eventhandlers_ExplosionReactionTime = 9;

// LAMBS Danger WP
force lambs_wp_autoAddArtillery = true;

// LAMBS Main
force lambs_main_debug_drawAllUnitsInVehicles = false;
force lambs_main_debug_Drawing = false;
force lambs_main_debug_FSM = false;
force lambs_main_debug_FSM_civ = false;
force lambs_main_debug_functions = false;
force lambs_main_debug_RenderExpectedDestination = false;
force lambs_main_disableAICallouts = false;
force lambs_main_disableAIDodge = false;
force lambs_main_disableAIFleeing = false;
force lambs_main_disableAIGestures = false;
force lambs_main_disableAutonomousMunitionSwitching = false;
force lambs_main_indoorMove = 0.1;
force lambs_main_maxRevealValue = 0.8;
force lambs_main_minObstacleProximity = 5;
force lambs_main_disablePlayerGroupSuppression = false;
force lambs_main_minFriendlySuppressionDistance = 20;
force lambs_main_minSuppressionRange = 100;
force lambs_main_combatShareRange = 300;
force lambs_main_radioBackpack = 2000;
force lambs_main_radioDisabled = false;
force lambs_main_radioShout = 50;
force lambs_main_radioEast = 500;
force lambs_main_radioGuer = 500;
force lambs_main_radioWest = 500;


// ACE Advanced Ballistics
force ace_advanced_ballistics_ammoTemperatureEnabled = true;
force ace_advanced_ballistics_barrelLengthInfluenceEnabled = true;
force ace_advanced_ballistics_bulletTraceEnabled = true;
force ace_advanced_ballistics_enabled = true;
force ace_advanced_ballistics_muzzleVelocityVariationEnabled = true;
force ace_advanced_ballistics_simulationInterval = 0.05;

// ACE Artillery
force ace_artillerytables_advancedCorrections = true;
force ace_artillerytables_disableArtilleryComputer = true;
force ace_mk6mortar_airResistanceEnabled = false;
force ace_mk6mortar_allowCompass = true;
force ace_mk6mortar_allowComputerRangefinder = true;
force ace_mk6mortar_useAmmoHandling = false;

// ACE Headless
force acex_headless_delay = 15;
force acex_headless_enabled = false;
force acex_headless_endMission = 0;
force acex_headless_log = false;
force acex_headless_transferLoadout = 0;

// ACE Medical
ace_medical_ai_enabledFor = 2;
ace_medical_AIDamageThreshold = 1;
ace_medical_bleedingCoefficient = 1;
ace_medical_blood_bloodLifetime = 900;
ace_medical_blood_enabledFor = 2;
ace_medical_blood_maxBloodObjects = 500;
ace_medical_deathChance = 1;
ace_medical_enableVehicleCrashes = true;
ace_medical_fatalDamageSource = 0;
ace_medical_feedback_bloodVolumeEffectType = 0;
ace_medical_feedback_enableHUDIndicators = true;
ace_medical_feedback_painEffectType = 0;
ace_medical_fractureChance = 0.8;
force ace_medical_fractures = 1;
ace_medical_gui_enableActions = 0;
ace_medical_gui_enableMedicalMenu = 1;
ace_medical_gui_enableSelfActions = true;
ace_medical_gui_interactionMenuShowTriage = 1;
ace_medical_gui_maxDistance = 3;
ace_medical_gui_openAfterTreatment = true;
ace_medical_gui_showBloodlossEntry = true;
ace_medical_ivFlowRate = 1;
ace_medical_limping = 1;
ace_medical_painCoefficient = 1;
ace_medical_painUnconsciousChance = 0.1;
ace_medical_playerDamageThreshold = 1;
ace_medical_spontaneousWakeUpChance = 0.05;
ace_medical_spontaneousWakeUpEpinephrineBoost = 1;
ace_medical_statemachine_AIUnconsciousness = true;
ace_medical_statemachine_cardiacArrestBleedoutEnabled = true;
ace_medical_statemachine_cardiacArrestTime = 300;
ace_medical_statemachine_fatalInjuriesAI = 0;
ace_medical_statemachine_fatalInjuriesPlayer = 0;
ace_medical_treatment_advancedBandages = 1;
force ace_medical_treatment_advancedDiagnose = 2;
force ace_medical_treatment_advancedMedication = true;
force ace_medical_treatment_allowBodyBagUnconscious = true;
ace_medical_treatment_allowLitterCreation = true;
ace_medical_treatment_allowSelfIV = 1;
ace_medical_treatment_allowSelfPAK = 0;
ace_medical_treatment_allowSelfStitch = 0;
ace_medical_treatment_allowSharedEquipment = 0;
ace_medical_treatment_clearTrauma = 1;
ace_medical_treatment_consumePAK = 0;
ace_medical_treatment_consumeSurgicalKit = 0;
ace_medical_treatment_convertItems = 0;
ace_medical_treatment_cprSuccessChanceMax = 0.4;
ace_medical_treatment_cprSuccessChanceMin = 0.4;
ace_medical_treatment_holsterRequired = 0;
ace_medical_treatment_litterCleanupDelay = 600;
ace_medical_treatment_locationEpinephrine = 0;
ace_medical_treatment_locationIV = 0;
ace_medical_treatment_locationPAK = 3;
ace_medical_treatment_locationsBoostTraining = false;
ace_medical_treatment_locationSurgicalKit = 2;
ace_medical_treatment_maxLitterObjects = 500;
ace_medical_treatment_medicEpinephrine = 0;
ace_medical_treatment_medicIV = 1;
ace_medical_treatment_medicPAK = 1;
ace_medical_treatment_medicSurgicalKit = 1;
ace_medical_treatment_timeCoefficientPAK = 1;
ace_medical_treatment_treatmentTimeAutoinjector = 5;
ace_medical_treatment_treatmentTimeBodyBag = 15;
ace_medical_treatment_treatmentTimeCPR = 15;
ace_medical_treatment_treatmentTimeIV = 12;
ace_medical_treatment_treatmentTimeSplint = 7;
ace_medical_treatment_treatmentTimeTourniquet = 7;
ace_medical_treatment_woundReopenChance = 1;
ace_medical_treatment_woundStitchTime = 5;

// ACE Weather
force ace_weather_enabled = true;
force ace_weather_showCheckAirTemperature = true;
force ace_weather_updateInterval = 60;
force ace_weather_windSimulation = true;

// ACE Wind Deflection
force ace_winddeflection_enabled = true;
force ace_winddeflection_simulationInterval = 0.05;
force ace_winddeflection_vehicleEnabled = true;