.class public Lcom/immersion/android/ImmVibe;
.super Ljava/lang/Object;
.source "ImmVibe.java"


# static fields
.field public static final VIBE_BUILTINEFFECT_LONG:I = 0xb

.field public static final VIBE_BUILTINEFFECT_LONG_ON_LONG_OFF:I = 0x8

.field public static final VIBE_BUILTINEFFECT_LONG_ON_MEDIUM_OFF:I = 0x7

.field public static final VIBE_BUILTINEFFECT_LONG_ON_SHORT_OFF:I = 0x6

.field public static final VIBE_BUILTINEFFECT_MEDIUM:I = 0xa

.field public static final VIBE_BUILTINEFFECT_MEDIUM_ON_LONG_OFF:I = 0x5

.field public static final VIBE_BUILTINEFFECT_MEDIUM_ON_MEDIUM_OFF:I = 0x4

.field public static final VIBE_BUILTINEFFECT_MEDIUM_ON_SHORT_OFF:I = 0x3

.field public static final VIBE_BUILTINEFFECT_SHORT:I = 0x9

.field public static final VIBE_BUILTINEFFECT_SHORT_ON_LONG_OFF:I = 0x2

.field public static final VIBE_BUILTINEFFECT_SHORT_ON_MEDIUM_OFF:I = 0x1

.field public static final VIBE_BUILTINEFFECT_SHORT_ON_SHORT_OFF:I = 0x0

.field public static final VIBE_DEFAULT_STYLE:I = 0x1

.field public static final VIBE_DEVACTUATORTYPE_BLDC:I = 0x1

.field public static final VIBE_DEVACTUATORTYPE_ERM:I = 0x0

.field public static final VIBE_DEVACTUATORTYPE_LRA:I = 0x2

.field public static final VIBE_DEVACTUATORTYPE_PIEZO:I = 0x3

.field public static final VIBE_DEVACTUATORTYPE_PIEZO_WAVE:I = 0x4

.field public static final VIBE_DEVCAPTYPE_ACTUATOR_TYPE:I = 0x3

.field public static final VIBE_DEVCAPTYPE_APIVERSIONNUMBER:I = 0xc

.field public static final VIBE_DEVCAPTYPE_DEVICE_CATEGORY:I = 0x0

.field public static final VIBE_DEVCAPTYPE_DEVICE_NAME:I = 0xa

.field public static final VIBE_DEVCAPTYPE_MAX_EFFECT_DURATION:I = 0x8

.field public static final VIBE_DEVCAPTYPE_MAX_ENVELOPE_TIME:I = 0xb

.field public static final VIBE_DEVCAPTYPE_MAX_IVT_SIZE:I = 0xe

.field public static final VIBE_DEVCAPTYPE_MAX_IVT_SIZE_TETHERED:I = 0xd

.field public static final VIBE_DEVCAPTYPE_MAX_NESTED_REPEATS:I = 0x1

.field public static final VIBE_DEVCAPTYPE_MAX_PERIOD:I = 0x7

.field public static final VIBE_DEVCAPTYPE_MIN_PERIOD:I = 0x6

.field public static final VIBE_DEVCAPTYPE_NUM_ACTUATORS:I = 0x2

.field public static final VIBE_DEVCAPTYPE_NUM_EFFECT_SLOTS:I = 0x4

.field public static final VIBE_DEVCAPTYPE_SUPPORTED_EFFECTS:I = 0x9

.field public static final VIBE_DEVCAPTYPE_SUPPORTED_STYLES:I = 0x5

.field public static final VIBE_DEVICECATEGORY_EMBEDDED:I = 0x3

.field public static final VIBE_DEVICECATEGORY_IFC:I = 0x0

.field public static final VIBE_DEVICECATEGORY_IMMERSION_USB:I = 0x5

.field public static final VIBE_DEVICECATEGORY_IMPULSE:I = 0x1

.field public static final VIBE_DEVICECATEGORY_TETHERED:I = 0x4

.field public static final VIBE_DEVICECATEGORY_VIRTUAL:I = 0x2

.field public static final VIBE_DEVICESTATE_ATTACHED:I = 0x1

.field public static final VIBE_DEVICESTATE_BUSY:I = 0x2

.field public static final VIBE_DEVPRIORITY_DEFAULT:I = 0x0

.field public static final VIBE_DEVPROPTYPE_DISABLE_EFFECTS:I = 0x2

.field public static final VIBE_DEVPROPTYPE_LICENSE_KEY:I = 0x0

.field public static final VIBE_DEVPROPTYPE_MASTERSTRENGTH:I = 0x4

.field public static final VIBE_DEVPROPTYPE_PRIORITY:I = 0x1

.field public static final VIBE_DEVPROPTYPE_STRENGTH:I = 0x3

.field public static final VIBE_EFFECT_STATE_NOT_PLAYING:I = 0x0

.field public static final VIBE_EFFECT_STATE_PAUSED:I = 0x2

.field public static final VIBE_EFFECT_STATE_PLAYING:I = 0x1

.field public static final VIBE_EFFECT_TYPE_MAGSWEEP:I = 0x1

.field public static final VIBE_EFFECT_TYPE_PERIODIC:I = 0x0

.field public static final VIBE_EFFECT_TYPE_STREAMING:I = 0x3

.field public static final VIBE_EFFECT_TYPE_TIMELINE:I = 0x2

.field public static final VIBE_ELEMTYPE_MAGSWEEP:I = 0x1

.field public static final VIBE_ELEMTYPE_PERIODIC:I = 0x0

.field public static final VIBE_ELEMTYPE_REPEAT:I = 0x2

.field public static final VIBE_E_ALREADY_INITIALIZED:I = -0x1

.field public static final VIBE_E_DEVICE_NEEDS_LICENSE:I = -0x8

.field public static final VIBE_E_FAIL:I = -0x4

.field public static final VIBE_E_INCOMPATIBLE_CAPABILITY_TYPE:I = -0x6

.field public static final VIBE_E_INCOMPATIBLE_EFFECT_TYPE:I = -0x5

.field public static final VIBE_E_INCOMPATIBLE_PROPERTY_TYPE:I = -0x7

.field public static final VIBE_E_INSUFFICIENT_PRIORITY:I = -0xb

.field public static final VIBE_E_INVALID_ARGUMENT:I = -0x3

.field public static final VIBE_E_NOT_ENOUGH_MEMORY:I = -0x9

.field public static final VIBE_E_NOT_INITIALIZED:I = -0x2

.field public static final VIBE_E_SERVICE_BUSY:I = -0xc

.field public static final VIBE_E_SERVICE_NOT_RUNNING:I = -0xa

.field public static final VIBE_INVALID_DEVICE_HANDLE_VALUE:I = -0x1

.field public static final VIBE_INVALID_EFFECT_HANDLE_VALUE:I = -0x1

.field public static final VIBE_INVALID_INDEX:I = -0x1

.field public static final VIBE_MAGSWEEP_EFFECT_SUPPORT:I = 0x2

.field public static final VIBE_MAX_CAPABILITY_STRING_LENGTH:I = 0x40

.field public static final VIBE_MAX_DEVICE_NAME_LENGTH:I = 0x40

.field public static final VIBE_MAX_DEVICE_PRIORITY:I = 0xf

.field public static final VIBE_MAX_DEV_DEVICE_PRIORITY:I = 0x7

.field public static final VIBE_MAX_EFFECT_NAME_LENGTH:I = 0x80

.field public static final VIBE_MAX_MAGNITUDE:I = 0x2710

.field public static final VIBE_MAX_OEM_DEVICE_PRIORITY:I = 0xf

.field public static final VIBE_MAX_PROPERTY_STRING_LENGTH:I = 0x40

.field public static final VIBE_MAX_STREAMING_SAMPLE_SIZE:I = 0xff

.field public static final VIBE_MIN_DEVICE_PRIORITY:I = 0x0

.field public static final VIBE_MIN_MAGNITUDE:I = 0x0

.field public static final VIBE_PERIODIC_EFFECT_SUPPORT:I = 0x1

.field public static final VIBE_REPEAT_COUNT_INFINITE:I = 0xff

.field public static final VIBE_STREAMING_EFFECT_SUPPORT:I = 0x8

.field public static final VIBE_STYLE_SHARP:I = 0x2

.field public static final VIBE_STYLE_SHARP_SUPPORT:I = 0x4

.field public static final VIBE_STYLE_SMOOTH:I = 0x0

.field public static final VIBE_STYLE_SMOOTH_SUPPORT:I = 0x1

.field public static final VIBE_STYLE_STRONG:I = 0x1

.field public static final VIBE_STYLE_STRONG_SUPPORT:I = 0x2

.field public static final VIBE_S_FALSE:I = 0x0

.field public static final VIBE_S_SUCCESS:I = 0x0

.field public static final VIBE_S_TRUE:I = 0x1

.field public static final VIBE_TIMELINE_EFFECT_SUPPORT:I = 0x4

.field public static final VIBE_TIME_INFINITE:I = 0x7fffffff

.field public static final VIBE_W_EFFECTS_DISABLED:I = 0x3

.field public static final VIBE_W_INSUFFICIENT_PRIORITY:I = 0x2

.field public static final VIBE_W_NOT_PAUSED:I = 0x4

.field public static final VIBE_W_NOT_PLAYING:I = 0x1


# instance fields
.field private m_bInitialized:Z

.field private m_hDevice:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 398
    const-string v0, "ImmVibeJ"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    const/4 v0, -0x1

    iput v0, p0, Lcom/immersion/android/ImmVibe;->m_hDevice:I

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/immersion/android/ImmVibe;->m_bInitialized:Z

    .line 395
    return-void
.end method

.method private native CloseDevice(I)V
.end method

.method private native CreateStreamingEffect(I)I
.end method

.method private native DeleteIVTFile(Ljava/lang/String;)V
.end method

.method private native DestroyStreamingEffect(II)V
.end method

.method private native GetDeviceCapabilityBool(II)Z
.end method

.method private native GetDeviceCapabilityInt32(II)I
.end method

.method private native GetDeviceCapabilityString(II)Ljava/lang/String;
.end method

.method private native GetDeviceCount()I
.end method

.method private native GetDevicePropertyBool(II)Z
.end method

.method private native GetDevicePropertyInt32(II)I
.end method

.method private native GetDevicePropertyString(II)Ljava/lang/String;
.end method

.method private native GetDeviceState(I)I
.end method

.method private native GetEffectState(II)I
.end method

.method private native GetIVTEffectCount([B)I
.end method

.method private native GetIVTEffectDuration([BI)I
.end method

.method private native GetIVTEffectIndexFromName([BLjava/lang/String;)I
.end method

.method private native GetIVTEffectName([BI)Ljava/lang/String;
.end method

.method private native GetIVTEffectType([BI)I
.end method

.method private native GetIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V
.end method

.method private native GetIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V
.end method

.method private native GetIVTSize([BI)I
.end method

.method private native Initialize()V
.end method

.method private native InitializeIVTBuffer(I)[B
.end method

.method private native InsertIVTElement([BII[I)[B
.end method

.method private native ModifyPlayingMagSweepEffect(IIIIIIIII)V
.end method

.method private native ModifyPlayingPeriodicEffect(IIIIIIIIII)V
.end method

.method private native OpenCompositeDevice([IILjava/lang/String;)I
.end method

.method private native OpenDevice(ILjava/lang/String;)I
.end method

.method private native PausePlayingEffect(II)V
.end method

.method private native PlayBuiltInEffectRepeat(IIB)I
.end method

.method private native PlayIVTEffect(I[BI)I
.end method

.method private native PlayIVTEffectRepeat(I[BIB)I
.end method

.method private native PlayMagSweepEffect(IIIIIIII)I
.end method

.method private native PlayPeriodicEffect(IIIIIIIII)I
.end method

.method private native PlayStreamingSample(II[BI)V
.end method

.method private native PlayStreamingSampleWithOffset(II[BII)V
.end method

.method private native ReadIVTElement([BIII)[I
.end method

.method private native RemoveIVTElement([BIII)[B
.end method

.method private native ResumePausedEffect(II)V
.end method

.method private native SaveIVTFile([BLjava/lang/String;)V
.end method

.method private native SetDevicePropertyBool(IIZ)V
.end method

.method private native SetDevicePropertyInt32(III)V
.end method

.method private native SetDevicePropertyString(IILjava/lang/String;)V
.end method

.method private native StopAllPlayingEffects(I)V
.end method

.method private native StopPlayingEffect(II)V
.end method

.method private native Terminate()V
.end method


# virtual methods
.method public closeDevice(I)V
    .locals 0
    .parameter "hDeviceHandle"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->CloseDevice(I)V

    .line 236
    return-void
.end method

.method public createStreamingEffect(I)I
    .locals 1
    .parameter "hDeviceHandle"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->CreateStreamingEffect(I)I

    move-result v0

    return v0
.end method

.method public deleteIVTFile(Ljava/lang/String;)V
    .locals 0
    .parameter "strPathName"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->DeleteIVTFile(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public destroyStreamingEffect(II)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "hEffectHandle"

    .prologue
    .line 339
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->DestroyStreamingEffect(II)V

    .line 340
    return-void
.end method

.method public getDeviceCapabilityBool(II)Z
    .locals 1
    .parameter "nDeviceIndex"
    .parameter "nDevCapType"

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityBool(II)Z

    move-result v0

    return v0
.end method

.method public getDeviceCapabilityInt32(II)I
    .locals 1
    .parameter "nDeviceIndex"
    .parameter "nDevCapType"

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityInt32(II)I

    move-result v0

    return v0
.end method

.method public getDeviceCapabilityString(II)Ljava/lang/String;
    .locals 1
    .parameter "nDeviceIndex"
    .parameter "nDevCapType"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCount()I
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetDeviceCount()I

    move-result v0

    return v0
.end method

.method public getDevicePropertyBool(II)Z
    .locals 1
    .parameter "hDeviceHandle"
    .parameter "nDevPropType"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyBool(II)Z

    move-result v0

    return v0
.end method

.method public getDevicePropertyInt32(II)I
    .locals 1
    .parameter "hDeviceHandle"
    .parameter "nDevPropType"

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyInt32(II)I

    move-result v0

    return v0
.end method

.method public getDevicePropertyString(II)Ljava/lang/String;
    .locals 1
    .parameter "hDeviceHandle"
    .parameter "nDevPropType"

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceState(I)I
    .locals 1
    .parameter "nDeviceIndex"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetDeviceState(I)I

    move-result v0

    return v0
.end method

.method public getEffectState(II)I
    .locals 1
    .parameter "hDeviceHandle"
    .parameter "hEffectHandle"

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetEffectState(II)I

    move-result v0

    return v0
.end method

.method public getIVTEffectCount([B)I
    .locals 1
    .parameter "pIVT"

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetIVTEffectCount([B)I

    move-result v0

    return v0
.end method

.method public getIVTEffectDuration([BI)I
    .locals 1
    .parameter "pIVT"
    .parameter "nEffectIndex"

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectDuration([BI)I

    move-result v0

    return v0
.end method

.method public getIVTEffectIndexFromName([BLjava/lang/String;)I
    .locals 1
    .parameter "pIVT"
    .parameter "strEffectName"

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectIndexFromName([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIVTEffectName([BI)Ljava/lang/String;
    .locals 1
    .parameter "pIVT"
    .parameter "nEffectIndex"

    .prologue
    .line 267
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectName([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIVTEffectType([BI)I
    .locals 1
    .parameter "pIVT"
    .parameter "nEffectIndex"

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectType([BI)I

    move-result v0

    return v0
.end method

.method public getIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V
    .locals 0
    .parameter "pIVT"
    .parameter "nEffectIndex"
    .parameter "pnDuration"
    .parameter "pnMagnitude"
    .parameter "pnControlModeType"
    .parameter "pnAttackTime"
    .parameter "pnAttackLevel"
    .parameter "pnFadeTime"
    .parameter "nFadeLevel"

    .prologue
    .line 295
    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->GetIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V

    .line 296
    return-void
.end method

.method public getIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V
    .locals 0
    .parameter "pIVT"
    .parameter "nEffectIndex"
    .parameter "pnDuration"
    .parameter "pnMagnitude"
    .parameter "pnPeriod"
    .parameter "pnControlModeType"
    .parameter "pnAttackTime"
    .parameter "pnAttackLevel"
    .parameter "pnFadeTime"
    .parameter "pnFadeLevel"

    .prologue
    .line 299
    invoke-direct/range {p0 .. p10}, Lcom/immersion/android/ImmVibe;->GetIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V

    .line 300
    return-void
.end method

.method public getIVTSize([BI)I
    .locals 1
    .parameter "pIVT"
    .parameter "nBufferSize"

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTSize([BI)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->Initialize()V

    .line 388
    return-void
.end method

.method public initializeIVTBuffer(I)[B
    .locals 1
    .parameter "nBufferSize"

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->InitializeIVTBuffer(I)[B

    move-result-object v0

    return-object v0
.end method

.method public insertIVTElement([BII[I)[B
    .locals 1
    .parameter "pIVT"
    .parameter "nBufferSize"
    .parameter "nTimelineIndex"
    .parameter "pIVTElement"

    .prologue
    .line 375
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->InsertIVTElement([BII[I)[B

    move-result-object v0

    return-object v0
.end method

.method public modifyPlayingMagSweepEffect(IIIIIIIII)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "hEffectHandle"
    .parameter "nDuration"
    .parameter "nMagnitude"
    .parameter "nControlModeType"
    .parameter "nAttackTime"
    .parameter "nAttackLevel"
    .parameter "nFadeTime"
    .parameter "nFadeLevel"

    .prologue
    .line 311
    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->ModifyPlayingMagSweepEffect(IIIIIIIII)V

    .line 312
    return-void
.end method

.method public modifyPlayingPeriodicEffect(IIIIIIIIII)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "hEffectHandle"
    .parameter "nDuration"
    .parameter "nMagnitude"
    .parameter "nPeriod"
    .parameter "nControlModeType"
    .parameter "nAttackTime"
    .parameter "nAttackLevel"
    .parameter "nFadeTime"
    .parameter "nFadeLevel"

    .prologue
    .line 315
    invoke-direct/range {p0 .. p10}, Lcom/immersion/android/ImmVibe;->ModifyPlayingPeriodicEffect(IIIIIIIIII)V

    .line 316
    return-void
.end method

.method public openCompositeDevice([IILjava/lang/String;)I
    .locals 1
    .parameter "pDeviceIndex"
    .parameter "nDeviceNumber"
    .parameter "strLicenseKey"

    .prologue
    .line 231
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->OpenCompositeDevice([IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public openDevice(ILjava/lang/String;)I
    .locals 1
    .parameter "nDeviceIndex"
    .parameter "strLicenseKey"

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->OpenDevice(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public pausePlayingEffect(II)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "hEffectHandle"

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->PausePlayingEffect(II)V

    .line 352
    return-void
.end method

.method public playBuiltInEffect(II)I
    .locals 1
    .parameter "hDeviceHandle"
    .parameter "nEffectIndex"

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/immersion/android/ImmVibe;->PlayBuiltInEffectRepeat(IIB)I

    move-result v0

    return v0
.end method

.method public playBuiltInEffectRepeat(IIB)I
    .locals 1
    .parameter "hDeviceHandle"
    .parameter "nEffectIndex"
    .parameter "nRepeat"

    .prologue
    .line 291
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->PlayBuiltInEffectRepeat(IIB)I

    move-result v0

    return v0
.end method

.method public playIVTEffect(I[BI)I
    .locals 1
    .parameter "hDeviceHandle"
    .parameter "pIVT"
    .parameter "nEffectIndex"

    .prologue
    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->PlayIVTEffect(I[BI)I

    move-result v0

    return v0
.end method

.method public playIVTEffectRepeat(I[BIB)I
    .locals 1
    .parameter "hDeviceHandle"
    .parameter "pIVT"
    .parameter "nEffectIndex"
    .parameter "nRepeat"

    .prologue
    .line 283
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->PlayIVTEffectRepeat(I[BIB)I

    move-result v0

    return v0
.end method

.method public playMagSweepEffect(IIIIIIII)I
    .locals 1
    .parameter "hDeviceHandle"
    .parameter "nDuration"
    .parameter "nMagnitude"
    .parameter "nControlModeType"
    .parameter "nAttackTime"
    .parameter "nAttackLevel"
    .parameter "nFadeTime"
    .parameter "nFadeLevel"

    .prologue
    .line 303
    invoke-direct/range {p0 .. p8}, Lcom/immersion/android/ImmVibe;->PlayMagSweepEffect(IIIIIIII)I

    move-result v0

    return v0
.end method

.method public playPeriodicEffect(IIIIIIIII)I
    .locals 1
    .parameter "hDeviceHandle"
    .parameter "nDuration"
    .parameter "nMagnitude"
    .parameter "nPeriod"
    .parameter "nControlModeType"
    .parameter "nAttackTime"
    .parameter "nAttackLevel"
    .parameter "nFadeTime"
    .parameter "nFadeLevel"

    .prologue
    .line 307
    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->PlayPeriodicEffect(IIIIIIIII)I

    move-result v0

    return v0
.end method

.method public playStreamingSample(II[BI)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "hEffectHandle"
    .parameter "pStreamingSample"
    .parameter "nSize"

    .prologue
    .line 343
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->PlayStreamingSample(II[BI)V

    .line 344
    return-void
.end method

.method public playStreamingSampleWithOffset(II[BII)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "hEffectHandle"
    .parameter "pStreamingSample"
    .parameter "nSize"
    .parameter "nOffsetTime"

    .prologue
    .line 347
    invoke-direct/range {p0 .. p5}, Lcom/immersion/android/ImmVibe;->PlayStreamingSampleWithOffset(II[BII)V

    .line 348
    return-void
.end method

.method public readIVTElement([BIII)[I
    .locals 1
    .parameter "pIVT"
    .parameter "nBufferSize"
    .parameter "nTimelineIndex"
    .parameter "nElementIndex"

    .prologue
    .line 383
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->ReadIVTElement([BIII)[I

    move-result-object v0

    return-object v0
.end method

.method public removeIVTElement([BIII)[B
    .locals 1
    .parameter "pIVT"
    .parameter "nBufferSize"
    .parameter "nTimelineIndex"
    .parameter "nElementIndex"

    .prologue
    .line 379
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->RemoveIVTElement([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public resumePausedEffect(II)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "hEffectHandle"

    .prologue
    .line 355
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->ResumePausedEffect(II)V

    .line 356
    return-void
.end method

.method public saveIVTFile([BLjava/lang/String;)V
    .locals 0
    .parameter "pIVT"
    .parameter "strPathName"

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->SaveIVTFile([BLjava/lang/String;)V

    .line 328
    return-void
.end method

.method public setDevicePropertyBool(IIZ)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "nDevPropType"
    .parameter "bDevPropValue"

    .prologue
    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyBool(IIZ)V

    .line 244
    return-void
.end method

.method public setDevicePropertyInt32(III)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "nDevPropType"
    .parameter "nDevPropValue"

    .prologue
    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyInt32(III)V

    .line 252
    return-void
.end method

.method public setDevicePropertyString(IILjava/lang/String;)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "nDevPropType"
    .parameter "strDevPropValue"

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyString(IILjava/lang/String;)V

    .line 260
    return-void
.end method

.method public stopAllPlayingEffects(I)V
    .locals 0
    .parameter "hDeviceHandle"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->StopAllPlayingEffects(I)V

    .line 324
    return-void
.end method

.method public stopPlayingEffect(II)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "hEffect"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->StopPlayingEffect(II)V

    .line 320
    return-void
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->Terminate()V

    .line 392
    return-void
.end method
