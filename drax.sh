#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'

while true; do
    echo "${RED}    _                             _     "
    echo "   | |                           | |    "
    echo " __| | _ __   __ _ __  __    ___ | |__  "
    echo "/ _\ || '__| / _\ |\\ \\/ /   / __|| '_ \\ "
    echo "| (_| || |   | (_| | >  <  _ \\__ \\| | | |"
    echo " \\__,_||_|    \\__,_|/_/\\_\\(_)|___/|_| |_|${NC}"

    read -p "Enter command (or 'exit' to quit): " command

    if [ "$command" = "exit" ]; then
        echo "Exiting..."
        break

elif [ "$command" = "inject roblox" ]; then
    echo "uncapping fps"

    # Creating folder and file for Roblox (if needed)
    mkdir -p /Applications/Roblox.app/Contents/MacOS/ClientSettings
    echo '
{
 "FFlagDebugGraphicsPreferVulkan": true,
 "FFlagDebugGraphicsDisableMetal": true,
 "FFlagDebugDisplayFPS": true,
 "FStringNote1": "CHANGE TO false IF YOU DONT WANNA SEE FPS",
 "FStringInGameMenuChromeForcedUserIds": "1353919681",
 "FStringNote2": "CHANGE TO YOUR ID IF YOU WANT NEW UI",
 "FFlagFixGraphicsQuality": true,
 "FStringNote3": "CHANGE TO false IF YOU DONT MORE GRAPHIC LVLS",
 "FFlagDebugSkyGray": true,
 "FStringNote4": "CHANGE TO false IF YOU DONT WANNA HAVE GRAY SKYBOX",
 "DFFlagTextureQualityOverrideEnabled": true,
 "DFIntTextureQualityOverride": 0,
 "FIntRenderLocalLightUpdatesMax": 1,
 "FIntRenderLocalLightUpdatesMin": 1,
 "FFlagDebugLightGridShowChunks": false,
 "FIntRenderShadowmapBias": 0,
 "FStringPartTexturePackTablePre2022": "{\"foil\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[238,238,238,255]},\"asphalt\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[227,227,228,234]},\"basalt\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[160,160,158,238]},\"brick\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[229,214,205,227]},\"cobblestone\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[218,219,219,243]},\"concrete\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[225,225,224,255]},\"crackedlava\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[76,79,81,156]},\"diamondplate\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[210,210,210,255]},\"fabric\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[221,221,221,255]},\"glacier\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[225,229,229,243]},\"glass\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[254,254,254,7]},\"granite\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[210,206,200,255]},\"grass\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[196,196,189,241]},\"ground\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[165,165,160,240]},\"ice\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[235,239,241,248]},\"leafygrass\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[182,178,175,234]},\"limestone\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[250,248,243,250]},\"marble\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[181,183,193,249]},\"metal\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[226,226,226,255]},\"mud\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[193,192,193,252]},\"pavement\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[218,218,219,236]},\"pebble\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[204,203,201,234]},\"plastic\":{\"ids\":[\"\",\"rbxassetid://13576561565\"],\"color\":[255,255,255,255]},\"rock\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[211,211,210,248]},\"corrodedmetal\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[206,177,163,180]},\"salt\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[249,249,249,255]},\"sand\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[218,216,210,240]},\"sandstone\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[241,234,230,246]},\"slate\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[235,234,235,254]},\"snow\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[239,240,240,255]},\"wood\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[217,209,208,255]},\"woodplanks\":{\"ids\":[\"rbxassetid://13576561565\",\"rbxassetid://13576561565\"],\"color\":[207,208,206,254]}}",
 "FFlagLuaAppSystemBar": false,
 "FIntFontSizePadding": 3,
 "FFlagAdServiceEnabled": false,
 "FIntScrollWheelDeltaAmount": 1,
 "DFFlagDebugRenderForceTechnologyVoxel": true,
 "FFlagNewLightAttenuation": true,
 "FIntRenderShadowIntensity": 0,
 "FFlagDisablePostFx": true,
 "DFFlagDebugPauseVoxelizer": true,
 "FIntTerrainOTAMaxTextureSize": 1024,
 "FIntUITextureMaxRenderTextureSize": 1024,
 "FIntMeshContentProviderForceCacheSize": 268435456,
 "FIntDefaultMeshCacheSizeMB": 256,
 "FIntRakNetDatagramMessageIdArrayLength": 1024,
 "FIntRakNetResendBufferArrayLength": 1024,
 "DFIntRakNetMtuValue1InBytes": 1280,
 "DFIntRakNetMtuValue2InBytes": 1240,
 "DFIntRakNetMtuValue3InBytes": 1200,
 "DFIntRakNetNakResendDelayMs": 10,
 "DFIntRakNetNakResendDelayMsMax": 100,
 "DFIntRakNetNakResendDelayRttPercent": 50,
 "DFFlagRakNetUseSlidingWindow4": true,
 "DFIntHttpCurlConnectionCacheSize": 134217728,
 "FIntEmotesAnimationsPerPlayerCacheSize": 16777216,
 "DFIntUserIdPlayerNameCacheSize": 33554432,
 "DFIntUserIdPlayerNameLifetimeSeconds": 86400,
 "DFIntTaskSchedulerTargetFps": 5588562,
 "FFlagEnableQuickGameLaunch": false,
 "FFlagHandleAltEnterFullscreenManually": false,
 "FFlagDisableNewIGMinDUA": true,
 "FFlagLuaAppExitModal2": false,
 "FFlagLuaAppExitModalDoNotShow": true,
 "FFlagPreloadAllFonts": true,
 "FFlagPreloadTextureItemsOption4": true,
 "FFlagBatchAssetApi": true,
 "DFFlagBatchAssetApiNoFallbackOnFail": false,
 "FFlagAnimationClipMemCacheEnabled": true,
 "FFlagCommitToGraphicsQualityFix": true,
 "FFlagEnableInGameMenuV3": true,
 "FFlagEnableV3MenuABTest3": true,
 "DFFlagQueueDataPingFromSendData": true,
 "FFlagDontCreatePingJob": true,
 "FFlagFastGPULightCulling3": true,
 "FFlagGpuGeometryManager7": true,
 "FFlagRenderGpuTextureCompressor": true,
 "FIntFRMMinGrassDistance": 0,
 "FIntFRMMaxGrassDistance": 0,
 "FIntRenderGrassDetailStrands": 0,
 "FIntRenderGrassHeightScaler": 0,
 "FStringReconnectDisabledReason": "you were randomly disconnected, this is not the fps unlockers fault. ~ skullbit.",
 "DFIntReportOutputDeviceInfoRateHundredthsPercentage": 0,
 "DFIntReportRecordingDeviceInfoRateHundredthsPercentage": 0,
 "DFFlagGpuVsCpuBoundTelemetry": false,
 "DFFlagSimReportCPUInfo": false,
 "DFFlagEnableFmodErrorsTelemetry": false,
 "FIntBootstrapperTelemetryReportingHundredthsPercentage": 0,
 "DFIntGoogleAnalyticsLoadPlayerHundredth": 0,
 "FIntLmsClientRollout2": 0,
 "DFFlagEnableGCapsHardwareTelemetry": false,
 "DFFlagAudioDeviceTelemetry": false,
 "FFlagEnableSoundTelemetry": false,
 "DFFlagEnableHardwareTelemetry": false,
 "DFIntHardwareTelemetryHundredthsPercent": 0,
 "DFFlagDebugAnalyticsSendUserId": false,
 "DFFlagEnableLightstepReporting2": false,
 "DFIntLightstepHTTPTransportHundredthsPercent2": 0,
 "FFlagDebugDisableTelemetryEphemeralCounter": true,
 "FFlagDebugDisableTelemetryEphemeralStat": true,
 "FFlagDebugDisableTelemetryEventIngest": true,
 "FFlagDebugDisableTelemetryPoint": true,
 "FFlagDebugDisableTelemetryV2Counter": true,
 "FFlagDebugDisableTelemetryV2Event": true,
 "FFlagDebugDisableTelemetryV2Stat": true,
 "DFIntCSGLevelOfDetailSwitchingDistance": 1,
 "DFIntCSGLevelOfDetailSwitchingDistanceL12": 1,
 "DFIntCSGLevelOfDetailSwitchingDistanceL23": 1,
 "DFIntCSGLevelOfDetailSwitchingDistanceL34": 1,
 "FFlagTopBarUseNewBadge": true,
 "FFlagReconnectDisabled": true,
 "FStringPerformanceSendMeasurementAPISubdomain": "opt-out",
 "DFStringHttpPointsReporterUrl": "http://opt-out.roblox.com",
 "DFStringAnalyticsEventStreamUrlEndpoint": "opt-out",
 "DFStringAltHttpPointsReporterUrl": "http://opt-out.roblox.com",
 "DFStringAltTelegrafHTTPTransportUrl": "http://opt-out.roblox.com",
 "DFStringTelegrafHTTPTransportUrl": "http://opt-out.roblox.com",
 "DFStringCrashUploadToBacktraceBaseUrl": "http://opt-out.roblox.com",
 "FStringErrorUploadToBacktraceBaseUrl": "http://opt-out.roblox.com",
 "DFStringRobloxAnalyticsSubDomain": "opt-out",
 "DFStringRobloxAnalyticsURL": "http://opt-out.roblox.com",
 "FFlagLowerGraphicsQuality": true,
 "FFlagOptimizeParticleEffects": true,
 "FIntMaxParticlesPerEffect": 50,
 "FIntMaxParticleEffectInstances": 20,
 "FIntMaxParticleEmitterInstances": 10,
 "FFlagOptimizeCharacterShadows": true,
 "FIntMaxCharacterShadowQuality": 1,
 "FFlagDisableAdvancedRendering": true,
 "FFlagOptimizeNetworkPerformance": true,
 "FIntNetworkUpdateRate": 30,
 "FIntNetworkMaxRetries": 3,
 "FFlagReduceGameSize": true,
 "FIntMaxGameSize": 500,
 "FFlagDisableDynamicLighting": true,
 "FFlagOptimizeTextureLoading": true,
 "FIntMaxTextureSize": 512,
 "FIntMaxMeshDetailLevel": 2,
 "FFlagDisableAntiAliasing": true,
 "FFlagOptimizeTerrainRendering": true,
 "FIntTerrainLODLevel": 1,
 "FIntTerrainMeshDetail": 1,
 "FFlagDisableAmbientOcclusion": true,
 "FFlagDisablePostProcessing": true,
 "FFlagDisableAudioEffects": true,
 "FFlagDisableBackgroundMusic": true,
 "FStringPerformanceSendMeasurementAPISubdomain": "opt-out",
 "DFStringHttpPointsReporterUrl": "http://opt-out.roblox.com",
 "DFStringAnalyticsEventStreamUrlEndpoint": "opt-out",
 "DFStringAltHttpPointsReporterUrl": "http://opt-out.roblox.com",
 "DFStringAltTelegrafHTTPTransportUrl": "http://opt-out.roblox.com",
 "DFStringTelegrafHTTPTransportUrl": "http://opt-out.roblox.com",
 "DFStringCrashUploadToBacktraceBaseUrl": "http://opt-out.roblox.com",
 "FStringErrorUploadToBacktraceBaseUrl": "http://opt-out.roblox.com",
 "DFStringRobloxAnalyticsSubDomain": "opt-out",
 "DFStringRobloxAnalyticsURL": "http://opt-out.roblox.com",
 "FFlagReduceCharacterMeshComplexity": true,
 "FIntMaxCharacterMeshLOD": 2,
 "FFlagOptimizeAnimationMemoryUsage": true,
 "FIntMaxAnimationMemoryMB": 50,
 "FFlagDisableExtraVisualEffects": true,
 "FFlagOptimizeSoundLoading": true,
 "FIntMaxSoundQualityLevel": 2,
 "FIntMaxSoundEffectInstances": 10,
 "FFlagDisableDynamicWeatherEffects": true,
 "FFlagOptimizeLoadingScreen": true,
 "FIntMaxLoadingScreenTime": 10,
 "FFlagReduceGameFileCompression": true,
 "FIntCompressionLevel": 1,
 "FFlagDisableComplexUserInterface": true,
 "FFlagOptimizeTextRendering": true,
 "FIntMaxTextResolution": 720,
 "FFlagDisableAchievementSystem": true,
 "FFlagOptimizeMemoryUsage": true,
 "FIntMaxMemoryUsageMB": 512,
 "FFlagDisableBrowserIntegration": true,
 "FStringPerformanceSendMeasurementAPISubdomain": "opt-out",
 "DFStringHttpPointsReporterUrl": "http://opt-out.roblox.com",
 "DFStringAnalyticsEventStreamUrlEndpoint": "opt-out",
 "DFStringAltHttpPointsReporterUrl": "http://opt-out.roblox.com",
 "DFStringAltTelegrafHTTPTransportUrl": "http://opt-out.roblox.com",
 "DFStringTelegrafHTTPTransportUrl": "http://opt-out.roblox.com",
 "DFStringCrashUploadToBacktraceBaseUrl": "http://opt-out.roblox.com",
 "FStringErrorUploadToBacktraceBaseUrl": "http://opt-out.roblox.com",
 "DFStringRobloxAnalyticsSubDomain": "opt-out",
 "DFStringRobloxAnalyticsURL": "http://opt-out.roblox.com",
 "FFlagDisableBloomEffect": true,
 "FFlagDisableDepthOfField": true,
 "FFlagDisableLensFlares": true,
 "FFlagDisableMotionBlur": true,
 "FFlagDisableAmbientOcclusion": true,
 "FFlagDisableAntiAliasing": true,
 "FFlagDisableDynamicShadows": true,
 "FFlagDisableParticleEffects": true,
 "FFlagDisableEnvironmentalEffects": true,
 "FFlagDisablePostProcessing": true,
 "FFlagDisableWaterEffects": true,
 "FFlagDisableReflections": true,
 "FFlagDisableFogEffects": true,
 "FFlagDisableWeatherEffects": true,
 "FFlagDisableLightingEffects": true,
 "FFlagDisableColorCorrection": true,
 "FFlagDisableHighResolutionTextures": true,
 "FFlagDisableAdvancedLighting": true,
 "FFlagDisableDynamicLights": true,
 "FFlagDisableHUDAnimations": true,
 "FFlagDisableScreenSpaceEffects": true,
 "FFlagDisableDepthEffects": true,
 "FFlagDisableCharacterShadows": true,
 "FFlagDisableWeaponTrails": true,
 "FFlagDisableFootstepSounds": true,
 "FFlagDisableInteractiveEnvironment": true,
 "FFlagDisableDamageIndicators": true,
 "FFlagDisableBloodEffects": true,
 "FFlagDisableVehiclePhysics": true,
 "FFlagDisableAudioReverb": true,
"FFlagDisableBackgroundMusic": true,
"FFlagDisableVoiceChat": true,
"FFlagDisableChatBubbles": true,
"FFlagDisablePlayerNameTags": true,
"FFlagDisableEmotes": true,
"FFlagDisablePets": true,
"FFlagDisableParticleSystems": true,
"FFlagDisableDynamicTerrain": true,
"FFlagDisableDynamicWater": true,
"FFlagDisableDynamicSky": true,
"FFlagDisableDynamicClouds": true,
"FFlagDisableDynamicGrass": true,
"FFlagDisableDynamicLeaves": true,
"FFlagDisableDynamicFoliage": true,
"FFlagDisableDynamicAnimals": true,
"FFlagDisableDynamicNPCs": true,
"FFlagDisableDynamicVehicles": true,
"FFlagDisableDynamicBuildings": true,
"FFlagDisableDynamicStructures": true,
"FFlagDisableDynamicObjects": true,
"FFlagDisableDynamicItems": true,
"FFlagDisableDynamicTextures": true,
"FFlagDisableDynamicBackgrounds": true,
"FFlagDisableDynamicLighting": true,
"FFlagDisableDynamicEffects": true,
"FFlagDisableDynamicPhysics": true,
"FFlagDisableDynamicMotion": true,
"FFlagDisableDynamicAnimations": true,
"FFlagDisableDynamicAudio": true,
"FFlagDisableDynamicVisuals": true,
"FFlagDisableDynamicRendering": true,
"FFlagDisableDynamicPerformance": true,
"FFlagDisableDynamicOptimizations": true,
"FFlagDisableDynamicSettings": true,
"FFlagDisableDynamicAdjustments": true,
"FFlagDisableDynamicConfigurations": true,
"FFlagDisableDynamicUpdates": true,
"FFlagDisableDynamicImprovements": true,
"FFlagDisableDynamicEnhancements": true,
"FFlagDisableDynamicModifications": true,
"FFlagDisableDynamicTweaks": true,
"FFlagDisableDynamicChanges": true,
"FFlagDisableDynamicAdjustments": true,
"FFlagDisableDynamicTuning": true,
"FFlagDisableDynamicTweaking": true,
"FFlagDisableDynamicOptimizations": true,
"FFlagDisableDynamicAdjustments": true,
"FFlagDisableDynamicTuning": true,
"FFlagDisableDynamicCustomizations": true,
"FFlagDisableDynamicEnhancements": true,
"FFlagDisableDynamicImprovements": true,
"FFlagDisableDynamicRefinements": true,
"FFlagDisableDynamicRefactorings": true,
"FFlagDisableDynamicRevisions": true,
"FFlagDisableDynamicReformulations": true,
"FFlagDisableDynamicReevaluations": true,
"FFlagDisableDynamicReconstructions": true,
"FFlagDisableDynamicReconfigurations": true,
"FFlagDisableDynamicRealignments": true,
"FFlagDisableDynamicReassignments": true,
"FFlagDisableDynamicRestructurings": true,
"FFlagDisableDynamicReorganizations": true,
"FFlagDisableDynamicRedesigns": true,
"FFlagOptimizeNetworkUpdateFrequency": true,
"FFlagOptimizeAnimationUpdateRate": true,
"FFlagOptimizeAudioStreaming": true,
"FIntMaxAudioQualityLevel": 2,
"FIntMaxAudioEffectInstances": 5,
"FFlagOptimizePhysicsSimulation": true,
"FFlagOptimizeCollisionDetection": true,
"FIntMaxCollisionChecksPerFrame": 100,
"FIntMaxCollisionObjectsPerFrame": 50,
"FFlagOptimizeScriptExecution": true,
"FFlagOptimizeScriptMemoryUsage": true,
"FFlagOptimizeScriptLoading": true,
"FFlagOptimizeScriptPerformance": true,
"FFlagOptimizeScriptSecurity": true,
"FFlagOptimizeRenderingPipeline": true,
"FFlagOptimizeRenderingPerformance": true,
"FFlagOptimizeRenderingQuality": true,
"FFlagOptimizeRenderingMemoryUsage": true,
"FIntMaxRenderDistance": 1000,
"FIntMaxRenderedObjectsPerFrame": 100,
"FFlagOptimizeLightingUpdateRate": true,
"FFlagOptimizeLightingQuality": true,
"FFlagOptimizeLightingPerformance": true,
"FFlagOptimizeLightingMemoryUsage": true,
"FFlagOptimizeShadowDetail": true,
"FIntMaxShadowQualityLevel": 1,
"FFlagOptimizeTerrainDetail": true,
"FIntMaxTerrainDetailLevel": 2,
"FFlagOptimizeParticleRendering": true,
"FFlagOptimizeParticlePerformance": true,
"FFlagOptimizeParticleMemoryUsage": true,
"FIntMaxParticleSpawnRate": 50,
"FIntMaxParticleLifetime": 10,
"FFlagOptimizeTextureCompression": true,
"FFlagOptimizeTextureMemoryUsage": true,
"FIntMaxTextureMemoryBudget": 512,
"FFlagOptimizeMeshDetail": true,
"FIntMaxMeshDetailLevel": 2,
"FFlagOptimizeMeshLoading": true,
"FFlagOptimizeMeshPerformance": true,
"FFlagOptimizeMeshMemoryUsage": true,
"FIntMaxMeshLODLevel": 1,
"FFlagOptimizeUIRendering": true,
"FFlagOptimizeUITextRendering": true,
"FFlagOptimizeUIPerformance": true,
"FFlagOptimizeUIQuality": true,
"FFlagOptimizeUIAnimation": true,
"FFlagOptimizeUITransitions": true,
"FFlagOptimizeUIEffects": true,
"FFlagOptimizeUIResponsiveness": true,
"FFlagOptimizeUIThreading": true,
"FFlagOptimizeUIEvents": true,
"FFlagOptimizeUISystem": true,
"FFlagOptimizeUIMemoryUsage": true,
"FFlagOptimizeGameSize": true,
"FFlagOptimizeGameLoadingTime": true,
"FFlagOptimizeGamePerformance": true,
"FFlagOptimizeGameMemoryUsage": true,
"FFlagOptimizeGameNetworking": true,
"FFlagOptimizeGameSecurity": true,
"FFlagOptimizeGameScripting": true,
"FFlagOptimizeGamePhysics": true,
"FFlagOptimizeGameRendering": true,
"FFlagOptimizeGameAudio": true,
"FFlagOptimizeGameUI": true,
"FFlagOptimizeGameContent": true,
"FFlagOptimizeGameSettings": true,
"FFlagOptimizeGameControls": true,
"FFlagOptimizeGameFeedback": true,
"FFlagOptimizeGameExperience": true,
"FFlagOptimizeGameEngagement": true,
"FFlagOptimizeGameRetrieval": true,
"FFlagOptimizeGameIntegration": true,
"FFlagOptimizeGameUpgrades": true,
"FFlagOptimizeGameUpdates": true,
"FFlagOptimizeGamePatches": true,
"FFlagOptimizeGameFixes": true,
"FFlagOptimizeGameChanges": true,
"FFlagOptimizeGameImprovements": true,
"FFlagOptimizeGameEnhancements": true,
"FFlagOptimizeGameAdditions": true,
"FFlagOptimizeGameExpansions": true,
"FFlagOptimizeGameExtensions": true,
"FFlagOptimizeGameCustomizations": true,
"FFlagOptimizeGameModifications": true,
"FFlagOptimizeGameTweaks": true,
"FFlagOptimizeGameAdjustments": true,
"FFlagOptimizeGameConfigurations": true,
"FFlagOptimizeGameSettings": true,
"FFlagOptimizeGameOptions": true,
"FFlagOptimizeGamePreferences": true,
"FFlagOptimizeGameChoices": true,
"FFlagOptimizeGameSelections": true,
"FFlagOptimizeGameDecisions": true,
"FFlagOptimizeGameOptions": true,
"FFlagOptimizeGamePreferences": true,
"FFlagOptimizeGameChoices": true,
"FFlagOptimizeGameSelections": true,
"FFlagOptimizeGameDecisions": true,
"FFlagOptimizeGameStrategies": true,
"FFlagOptimizeGamePlanning": true,
"FFlagOptimizeGameManagement": true,
"FFlagOptimizeGameLeadership": true,
"FFlagOptimizeGameDirection": true,
"FFlagOptimizeGameExecution": true,
"FFlagOptimizeGameImplementation": true,
"FFlagOptimizeGameOperation": true,
"FFlagOptimizeGameAdministration": true,
"FFlagOptimizeGameSupervision": true,
"FFlagOptimizeGameCoordination": true,
"FFlagOptimizeGameCollaboration": true,
"FFlagOptimizeGameCommunication": true,
"FFlagOptimizeGameConsultation": true,
"FFlagOptimizeGameAssessment": true,
"FFlagOptimizeGameEvaluation": true,
"FFlagOptimizeGameInspection": true,
"FFlagOptimizeGameAuditing": true,
"FFlagOptimizeGameReview": true,
"FFlagOptimizeGameCheck": true,
"FFlagOptimizeGameValidation": true,
"FFlagOptimizeGameVerification": true,
"FFlagOptimizeGameConfirmation": true,
"FFlagOptimizeGameCorroboration": true,
"FFlagOptimizeGameSubstantiation": true,
"FFlagOptimizeGameEstablishment": true,
"FFlagOptimizeGameFoundation": true,
"FFlagOptimizeGameBasics": true,
"FFlagOptimizeGameFundamentals": true,
"FFlagOptimizeGameEssentials": true,
"FFlagOptimizeGamePrinciples": true,
"FFlagOptimizeGameElements": true,
"FFlagOptimizeGameComponents": true,
"FFlagOptimizeGameConstructs": true,
"FFlagOptimizeGameStructures": true,
"FFlagOptimizeGameMechanics": true,
"FFlagOptimizeGameSystems": true,
"FFlagOptimizeGameSubsystems": true,
"FFlagOptimizeGameProcesses": true,
"FFlagOptimizeGameProcedures": true,
"FFlagOptimizeGameFunctions": true,
"FFlagOptimizeGameOperations": true,
"FFlagOptimizeGameActions": true,
"FFlagOptimizeGameActivities": true,
"FFlagOptimizeGameTasks": true,
"FFlagOptimizeGameJobs": true,
"FFlagOptimizeGameWork": true,
"FFlagOptimizeGameBusiness": true,
"FFlagOptimizeGameEconomy": true,
"FFlagOptimizeGameResources": true,
"FFlagOptimizeGameAssets": true,
"FFlagOptimizeGameProducts": true,
"FFlagOptimizeGameGoods": true,
"FFlagOptimizeGameServices": true,
"FFlagOptimizeGameOperations": true,
"FFlagOptimizeGameActivities": true,
"FFlagOptimizeGameTasks": true,
"FFlagOptimizeGameJobs": true,
"FFlagOptimizeGameWork": true,
"FFlagOptimizeGameBusiness": true,
"FFlagOptimizeGameEconomy": true,
"FFlagOptimizeGameResources": true,
"FFlagOptimizeGameAssets": true,
"FFlagOptimizeGameProducts": true,
"FFlagOptimizeGameGoods": true,
"FFlagOptimizeGameServices": true,
"FFlagOptimizeGameStrategies": true,
"FFlagOptimizeGamePlanning": true,
"FFlagOptimizeGameManagement": true,
"FFlagOptimizeGameLeadership": true,
"FFlagOptimizeGameDirection": true,
"FFlagOptimizeGameExecution": true,
"FFlagOptimizeGameImplementation": true,
"FFlagOptimizeGameOperation": true,
"FFlagOptimizeGameAdministration": true,
"FFlagOptimizeGameSupervision": true,
"FFlagOptimizeGameCoordination": true,
"FFlagOptimizeGameCollaboration": true,
"FFlagOptimizeGameCommunication": true,
"FFlagOptimizeGameConsultation": true,
"FFlagOptimizeGameAssessment": true,
"FFlagOptimizeGameEvaluation": true,
"FFlagOptimizeGameInspection": true,
"FFlagOptimizeGameAuditing": true,
"FFlagOptimizeGameReview": true,
"FFlagOptimizeGameCheck": true,
"FFlagOptimizeGameValidation": true,
"FFlagOptimizeGameVerification": true,
"FFlagOptimizeGameConfirmation": true,
"FFlagOptimizeGameCorroboration": true,
"FFlagOptimizeGameSubstantiation": true,
"FFlagOptimizeGameEstablishment": true,
"FFlagOptimizeGameFoundation": true,
"FFlagOptimizeGameBasics": true,
"FFlagUseNewRenderingEngine": true,
"FIntMaxRenderDistance": 8,
"FIntMaxParticlesPerFrame": 100,
"FStringTextureCompressionFormat": "BC7",
"FFlagUseVulkanRendering": true,
"FIntMaxRenderDistance": 1000,
"FIntMaxParticlesPerFrame": 500,
"FStringTextureCompressionFormat": "BC7",
"DFStringShaderLibraryURL": "http://performance-library.roblox.com",
"FFlagEnableAdvancedPhysics": true,
"FIntMaxPhysicsStepsPerFrame": 10,
"FIntMaxShadowQuality": 3,
"FFlagEnableOptimizedMeshStreaming": true,
"FIntMaxMeshStreamingRange": 2000,
"FFlagUseNewAnimationSystem": true,
"FIntAnimationQuality": 2,
"FIntMaxAnimationsPerFrame": 50,
"FFlagEnableTerrainCaching": true,
"FIntMaxTerrainCacheSize": 500,
"FFlagUseNewSoundSystem": true,
"FIntMaxAudioSourcesPerFrame": 20,
"FFlagEnableLOD": true,
"FIntMaxLODLevels": 5,
"FIntMaxLODDistance": 1000,
"FFlagUseNewPhysicsEngine": true,
"FIntMaxCollisionChecksPerFrame": 1000,
"FIntMaxConstraintsPerFrame": 200,
"FFlagEnableDynamicShadows": true,
"FIntMaxShadowDistance": 1500,
"FFlagEnableInstanceCaching": true,
"FIntMaxInstanceCacheSize": 1000,
"FFlagUseNewInputSystem": true,
"FIntMaxInputEventsPerFrame": 100,
"FFlagEnableNetworkOptimizations": true,
"FIntMaxNetworkMessagesPerFrame": 500,
"FFlagEnableStreamingTextures": true,
"FIntMaxStreamingTextureSize": 4096,
"FFlagUseNewGUIRenderingEngine": true,
"FIntMaxGUIRenderDistance": 500,
"FIntMaxGUISpritesPerFrame": 1000,
"FFlagEnableVisualEffects": true,
"FIntMaxVisualEffectParticlesPerFrame": 3,
"FFlagUseNewRenderingPipeline": true,
"FIntMaxPipelineStepsPerFrame": 50,
"FStringPipelineURL": "http://pipeline-performance.roblox.com",
"FFlagEnableMemoryOptimizations": true,
"FIntMaxMemoryCacheSize": 20000,
"FFlagUseNewCollisionSystem": true,
"FIntMaxCollisionResolutionPerFrame": 3,
"FIntMaxBatchesPerFrame": 3,
"FIntMaxMeshVerticesPerBatch": 3,
"FIntMaxIndexBufferSize": 3,
"FIntMaxDescriptorSets": 3,
"FIntMaxDescriptorSetSize": 3,
"FFlagUseMultiThreadedRendering": true,
"FIntMaxRenderThreads": 4,
"FIntMaxComputeThreads": 8,
"FFlagEnableAsyncCompute": true,
"FIntMaxParticlesPerFrame": 3,
"FIntMaxShadowQuality": 3,
"FIntMaxMeshStreamingRange": 3,
"FIntMaxPhysicsStepsPerFrame": 15,
"FIntMaxAnimationsPerFrame": 80,
"FFlagUseVulkanTerrainCaching": true,
"FIntMaxTerrainCacheSize": 800,
"FIntMaxAudioSourcesPerFrame": 40,
"FIntMaxLODLevels": 5,
"FIntMaxLODDistance": 3,
"FIntMaxCollisionChecksPerFrame": 3,
"FIntMaxRenderingStepsPerFrame": 25,
"FIntDynamicResolutionQuality": 85,
"FFlagUseVulkanTemporalAntialiasing": true,
"FFlagUseVulkanEnhancedShadows": false,
"FIntMaxLightingQuality": 3,
"FIntMaxPostProcessingQuality": 2,
"FIntMaxShadowsQuality": 3,
"FIntMaxDynamicPhysicsStepsPerFrame": 20,
"FIntMaxDynamicAnimationsPerFrame": 3,
"FIntMaxDynamicAudioSourcesPerFrame": 60,
"FIntMaxDynamicLODLevels": 6,
"FIntMaxDynamicLODDistance": 3,
"FIntMaxAdvancedEffectsQuality": 3,
"FIntMaxAdvancedPhysicsStepsPerFrame": 25,
"FIntMaxAdvancedRenderingStepsPerFrame": 3,
"FIntMaxAdvancedAnimationsPerFrame": 3,
"FIntMaxAdvancedAudioSourcesPerFrame": 75,
"FIntMaxAdvancedLODLevels": 3,
"FIntMaxAdvancedLODDistance": 3,
"FIntMaxDynamicEnvironmentQuality": 3,
"FIntMaxEnhancedPhysicsStepsPerFrame": 3,
"FIntMaxEnhancedRenderingStepsPerFrame": 3,
"FIntMaxEnhancedAnimationsPerFrame": 3,
"FIntMaxEnhancedAudioSourcesPerFrame": 3,
"FIntMaxEnhancedLODLevels": 3,
"FIntMaxEnhancedLODDistance": 10,
"FFlagPerformanceOptimization":true,
"FIntMaxPerformanceLevel":5,
"FFlagDisableAdvancedGraphics":true,
"FFlagDisableHighQualityRendering":true,
"FIntMinRenderDistance":500,
"FIntMinRenderedObjectsPerFrame":50,
"FFlagOptimizeRenderingSpeed":true,
"FFlagOptimizeRenderingQuality":true,
"FFlagOptimizeRenderingPerformance":true,
"FFlagOptimizeRenderingMemoryUsage":true,
"FIntMinShadowQualityLevel":0,
"FIntMinTerrainDetailLevel":0,
"FIntMinTextureMemoryBudget":256,
"FIntMinMeshDetailLevel":0,
"FIntMinCollisionChecksPerFrame":50,
"FIntMinCollisionObjectsPerFrame":25,
"FIntMinAudioQualityLevel":0,
"FIntMinSoundEffectInstances":5,
"FIntMinParticleSpawnRate":25,
"FIntMinParticleLifetime":5,
"FIntMinMeshLODLevel":0,
"FIntMinMaxAudioMemoryUsage":256,
"FFlagOptimizePhysicsSimulation":true,
"FFlagOptimizeCollisionDetection":true,
"FFlagOptimizeScriptExecution":true,
"FFlagOptimizeScriptMemoryUsage":true,
"FFlagOptimizeScriptLoading":true,
"FFlagOptimizeScriptPerformance":true,
"FFlagOptimizeScriptSecurity":true,
"FFlagOptimizeNetworkPerformance":true,
"FIntMinNetworkUpdateRate":60,
"FIntMinNetworkMaxRetries":1,
"FIntMinMaxGameSize":100,
"FIntMinMemoryUsageMB":256,
"FIntMinTextResolution":480,
"FFlagOptimizeUIRendering":true,
"FFlagOptimizeUITextRendering":true,
"FFlagOptimizeUIPerformance":true,
"FFlagOptimizeUIQuality":true,
"FFlagOptimizeUIAnimation":true,
"FFlagOptimizeUITransitions":true,
"FFlagOptimizeUIEffects":true,
"FFlagOptimizeUIResponsiveness":true,
"FFlagOptimizeUIThreading":true,
"FFlagOptimizeUIEvents":true,
"FFlagOptimizeUISystem":true,
"FFlagOptimizeUIMemoryUsage":true,
"FFlagOptimizeGamePerformance":true,
"FFlagOptimizeGameMemoryUsage":true,
"FFlagOptimizeGameNetworking":true,
"FFlagOptimizeGameSecurity":true,
"FFlagOptimizeGameScripting":true,
"FFlagOptimizeGamePhysics":true,
"FFlagOptimizeGameRendering":true,
"FFlagOptimizeGameAudio":true,
"FFlagOptimizeGameUI":true,
"FFlagOptimizeGameContent":true,
"FFlagOptimizeGameSettings":true,
"FFlagOptimizeGameControls":true,
"FFlagOptimizeGameFeedback":true,
"FFlagOptimizeGameExperience":true,
"FFlagOptimizeGameEngagement":true,
"FFlagOptimizeGameRetrieval":true,
"FFlagOptimizeGameIntegration":true,
"FFlagOptimizeGameUpgrades":true,
"FFlagOptimizeGameUpdates":true,
"FFlagOptimizeGamePatches":true,
"FFlagOptimizeGameFixes":true,
"FFlagOptimizeGameChanges":true,
"FFlagOptimizeGameImprovements":true,
"FFlagOptimizeGameEnhancements":true,
"FFlagOptimizeGameAdditions":true,
"FFlagOptimizeGameExpansions":true,
"FFlagOptimizeGameExtensions":true,
"FFlagOptimizeGameCustomizations":true,
"FFlagOptimizeGameModifications":true,
"FFlagOptimizeGameTweaks":true,
"FFlagOptimizeGameAdjustments":true,
"FFlagOptimizeGameConfigurations":true,
"FFlagOptimizeGameSettings":true,
"FFlagOptimizeGameOptions":true,
"FFlagOptimizeGamePreferences":true,
"FFlagOptimizeGameChoices":true,
"FFlagOptimizeGameSelections":true,
"FFlagOptimizeGameDecisions":true,
"FFlagOptimizeGameStrategies":true,
"FFlagOptimizeGamePlanning":true,
"FFlagOptimizeGameManagement":true,
"FFlagOptimizeGameLeadership":true,
"FFlagOptimizeGameDirection":true,
"FFlagOptimizeGameExecution":true,
"FFlagOptimizeGameImplementation":true,
"FFlagOptimizeGameOperation":true,
"FFlagOptimizeGameAdministration":true,
"FFlagOptimizeGameSupervision":true,
"FFlagOptimizeGameCoordination":true,
"FFlagOptimizeGameCollaboration":true,
"FFlagOptimizeGameCommunication":true,
"FFlagOptimizeGameConsultation":true,
"FFlagOptimizeGameAssessment":true,
"FFlagOptimizeGameEvaluation":true,
"FFlagOptimizeGameInspection":true,
"FFlagOptimizeGameAuditing":true,
"FFlagOptimizeGameReview":true,
"FFlagOptimizeGameCheck":true,
"FFlagOptimizeGameValidation":true,
"FFlagOptimizeGameVerification":true,
"FFlagOptimizeGameConfirmation":true,
"FFlagOptimizeGameCorroboration":true,
"FFlagOptimizeGameSubstantiation":true,
"FFlagOptimizeGameEstablishment":true,
"FFlagOptimizeGameFoundation":true,
"FFlagOptimizeGameBasics":true,
"FFlagOptimizeGameFundamentals":true,
"FFlagOptimizeGameEssentials":true,
"FFlagOptimizeGamePrinciples":true,
"FFlagOptimizeGameElements":true,
"FFlagOptimizeGameComponents":true,
"FFlagOptimizeGameConstructs":true,
"FFlagOptimizeGameStructures":true,
"FFlagOptimizeGameMechanics":true,
"FFlagOptimizeGameSystems":true,
"FFlagOptimizeGameSubsystems":true,
"FFlagOptimizeGameProcesses":true,
"FFlagOptimizeGameProcedures":true,
"FFlagOptimizeGameFunctions":true,
"FFlagOptimizeGameOperations":true,
"FFlagOptimizeGameActions":true,
"FFlagOptimizeGameActivities":true,
"FFlagOptimizeGameTasks":true,
"FFlagOptimizeGameJobs":true,
"FFlagOptimizeGameWork":true,
"FFlagDisableBloomEffect":true,
"FFlagDisableMotionBlur":true,
"FFlagDisableDepthOfField":true,
"FFlagDisableAmbientOcclusion":true,
"FFlagDisableAntialiasing":true,
"FFlagDisableVolumetricLighting":true,
"FFlagDisableLensFlare":true,
"FFlagDisableScreenSpaceReflections":true,
"FFlagDisableShadowQuality":true,
"FFlagDisableTextureStreaming":true,
"FFlagDisableLevelOfDetail":true,
"FFlagDisableParticleEffects":true,
"FFlagDisableDynamicShadows":true,
"FFlagDisablePostProcessing":true,
"FFlagDisableLightingEffects":true,
"FFlagDisableVisualEffects":true,
"FFlagDisableEnvironmentalEffects":true,
"FFlagDisableWeatherEffects":true,
"FFlagDisableReflections":true,
"FFlagDisableDynamicLights":true,
"FFlagDisableFogEffects":true,
"FFlagDisableDynamicResolution":true,
"FFlagDisableDynamicTextures":true,
"FFlagDisableDynamicDecals":true,
"FFlagDisableDynamicReflections":true,
"FFlagDisableDynamicWater":true,
"FFlagDisableDynamicGrass":true,
"FFlagDisableDynamicParticles":true,
"FFlagDisableDynamicTerrain":true,
"FFlagDisableDynamicSky":true,
"FFlagDisableDynamicClouds":true,
"FFlagDisableDynamicWeather":true,
"FFlagDisableDynamicVegetation":true,
"FFlagDisableDynamicAmbience":true,
"FFlagDisableDynamicEnvironment":true,
"FFlagDisableDynamicAnimations":true,
"FFlagDisableDynamicObjects":true,
"FFlagDisableDynamicPhysics":true,
"FFlagDisableDynamicCollisions":true
}

    ' > /Applications/Roblox.app/Contents/MacOS/ClientSettings/ClientAppSettings.json

    echo "Injected Roblox successfully."

    elif [ "$command" = "inject brawlhalla" ]; then
        echo "To turn on the FPS counter in-game, press Tab+Shift and navigate to the settings icon. Then, select 'In-Game' and navigate to 'In-Game FPS Counter'. Enable it by pressing the corresponding button."
        echo "Setting launch options for Brawlhalla on Steam"
        # Your Brawlhalla injection logic here
        app_id=$(find "$HOME/Library/Application Support/Steam/steamapps" -type f -name '*.acf' -exec awk -F\" '/\"appid\"/ {print $4}' {} +)

        if [ -n "$app_id" ]; then
            launch_options="-high -unlockfps -setfps 10000"
            defaults write com.valvesoftware.Steam NSApplicationArguments -array-add "-applaunch $app_id $launch_options"
            echo "Injected Brawlhalla successfully."
        else
            echo "Brawlhalla app ID not found. Make sure Brawlhalla is installed via Steam."
        fi

    elif [ "$command" = "inject eso" ]; then
        echo "Modifying Elder Scrolls Online settings..."
        # Your ESO injection logic here
        settings_file="$HOME/Documents/Elder Scrolls Online/live/UserSettings.txt"
        
        if grep -q 'Set MinFrameTime.2' "$settings_file"; then
            sed -i '' '/Set MinFrameTime\.2/d' "$settings_file"
            echo "Deleting existing settings, and updating..."
        fi
        
        echo 'Set MinFrameTime.2 "0.00416667"' >> "$settings_file"
        echo "Injected Elder Scrolls Online successfully."

    elif [ "$command" = "mod eso beammeup" ]; then
        echo "Installing 'BeamMeUp' addon for Elder Scrolls Online..."
        # Your BeamMeUp addon installation logic here
        addon_url="https://drive.google.com/uc?export=download&id=1impXUNXOI3xXA0Huuf7kpWG7F5cb5_rc"
        addon_zip="/tmp/beammeup.zip"

        curl -L -o "$addon_zip" "$addon_url"
        unzip -q "$addon_zip" -d /tmp

        addon_folder=$(find /private/tmp -maxdepth 1 -type d -name 'BeamMeUp' -print -quit)

        if [ -z "$addon_folder" ]; then
            echo "Error: Addon folder 'BeamMeUp' not found after unzipping."
            exit 1
        fi

        mkdir -p "$HOME/Documents/Elder Scrolls Online/live/AddOns"
        mv "$addon_folder" "$HOME/Documents/Elder Scrolls Online/live/AddOns/"
        echo "Addon 'BeamMeUp' installed successfully."

    elif [ "$command" = "mod eso aui" ]; then
        echo "Installing 'AUI' addon for Elder Scrolls Online..."
        # Your AUI addon installation logic here
        addon_url="https://drive.google.com/uc?export=download&id=1tbfy1ugwmN86bQwaXYZrDcbrgEZy4yo2"
        addon_zip="/tmp/aui.zip"

        curl -L -o "$addon_zip" "$addon_url"
        unzip -q "$addon_zip" -d /private/tmp

        addon_folder=$(find /private/tmp -maxdepth 1 -type d -name 'AUI' -print -quit)

        if [ -z "$addon_folder" ]; then
            echo "Error: Addon folder 'AUI' not found after unzipping."
            exit 1
        fi

        mkdir -p "$HOME/Documents/Elder Scrolls Online/live/AddOns"
        mv "$addon_folder" "$HOME/Documents/Elder Scrolls Online/live/AddOns/"
        echo "Addon 'AUI' installed successfully."

    elif [ "$command" = "mod eso lorebooks" ]; then
        echo "Installing 'LoreBooks' addon for Elder Scrolls Online..."
        # Your LoreBooks addon installation logic here
        addon_url="https://drive.google.com/uc?export=download&id=1owppWG6q_z4LNTshziVFzKih4Qnr20yw"
        addon_zip="/tmp/LoreBooks.zip"

        curl -L -o "$addon_zip" "$addon_url"
        unzip -q "$addon_zip" -d /private/tmp

        addon_folder=$(find /private/tmp -maxdepth 1 -type d -name 'LoreBooks' -print -quit)

        if [ -z "$addon_folder" ]; then
            echo "Error: Addon folder 'LoreBooks' not found after unzipping."
            exit 1
        fi

        mkdir -p "$HOME/Documents/Elder Scrolls Online/live/AddOns"
        mv "$addon_folder" "$HOME/Documents/Elder Scrolls Online/live/AddOns/"
        echo "Addon 'LoreBooks' installed successfully."

    elif [ "$command" = "mod eso mappins" ]; then
        echo "Installing 'MapPins' addon for Elder Scrolls Online..."
        # Your MapPins addon installation logic here
        addon_url="https://drive.google.com/uc?export=download&id=1TFkm2OHSdmPJhnOtXB_9ujN8A2Al9KpZ"
        addon_zip="/tmp/mappins.zip"

        curl -L -o "$addon_zip" "$addon_url"
        unzip -q "$addon_zip" -d /private/tmp

        addon_folder=$(find /private/tmp -maxdepth 1 -type d -name 'MapPins' -print -quit)

        if [ -z "$addon_folder" ]; then
            echo "Error: Addon folder 'MapPins' not found after unzipping."
            exit 1
        fi

        mkdir -p "$HOME/Documents/Elder Scrolls Online/live/AddOns"
        mv "$addon_folder" "$HOME/Documents/Elder Scrolls Online/live/AddOns/"
        echo "Addon 'MapPins' installed successfully."

    elif [ "$command" = "mod eso skyshards" ]; then
        echo "Installing 'SkyShards' addon for Elder Scrolls Online..."
        # Your SkyShards addon installation logic here
        addon_url="https://drive.google.com/uc?export=download&id=17SVsiLfHr0VecVgGTSyOJt0T6FQ3YwjQ"
        addon_zip="/tmp/skyshards.zip"

        curl -L -o "$addon_zip" "$addon_url"
        unzip -q "$addon_zip" -d /private/tmp

        addon_folder=$(find /private/tmp -maxdepth 1 -type d -name 'SkyShards' -print -quit)

        if [ -z "$addon_folder" ]; then
            echo "Error: Addon folder 'SkyShards' not found after unzipping."
            exit 1
        fi

        mkdir -p "$HOME/Documents/Elder Scrolls Online/live/AddOns"
        mv "$addon_folder" "$HOME/Documents/Elder Scrolls Online/live/AddOns/"
        echo "Addon 'SkyShards' installed successfully."

    elif [ "$command" = "mod eso help" ]; then
        echo "Mods for Elder Scrolls Online:"
        echo "BeamMeUp"
        
elif [ "$command" = "help" ]; then
    echo "${RED}
Command: inject roblox
Description: This command modifies settings in Roblox to unlock the frame rate, allowing for higher FPS.
Usage: inject roblox

Command: inject brawlhalla
Description: Enables the FPS counter within Brawlhalla and configures launch options specifically for Steam.
Usage: inject brawlhalla

Command: inject eso
Description: Adjusts game settings for Elder Scrolls Online (ESO) to optimize performance.
Usage: inject eso

Command: mod eso beammeup
Description: Installs the 'BeamMeUp' addon for ESO, enhancing functionality related to teleportation.
Usage: mod eso beammeup

Command: mod eso aui
Description: Installs the 'AUI' addon for ESO, offering a customizable user interface.
Usage: mod eso aui

Command: mod eso lorebooks
Description: Installs the 'LoreBooks' addon for ESO, aiding in the discovery of in-game lore books.
Usage: mod eso lorebooks

Command: mod eso mappins
Description: Installs the 'MapPins' addon for ESO, facilitating enhanced map functionality.
Usage: mod eso mappins

Command: mod eso skyshards
Description: Installs the 'SkyShards' addon for ESO, assisting in the location of SkyShards within the game world.
Usage: mod eso skyshards

Command: mod eso help
Description: Provides a list of available mods that can be installed for ESO.
Usage: mod eso help

Command: help
Description: Offers general assistance and lists all available inject and mod commands.

Example Usages:
To unlock FPS in Roblox, use: inject roblox
To install the 'BeamMeUp' addon for ESO, use: mod eso beammeup
For help on ESO mods, use: mod eso help

Ensure that your system meets the necessary requirements, such as having dependencies like curl, awk, sed, and unzip installed, and make any adjustments to paths or settings within the script as needed for your specific system configuration.${NC}"

else
    echo "Command not recognized."
fi
