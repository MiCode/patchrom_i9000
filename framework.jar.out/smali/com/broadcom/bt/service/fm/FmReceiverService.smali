.class public final Lcom/broadcom/bt/service/fm/FmReceiverService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;
    }
.end annotation


# static fields
.field private static final BCM_VOL_0:I = 0x0

.field private static final BCM_VOL_1:I = 0x2

.field private static final BCM_VOL_10:I = 0x4b

.field private static final BCM_VOL_11:I = 0x5a

.field private static final BCM_VOL_12:I = 0x69

.field private static final BCM_VOL_13:I = 0x78

.field private static final BCM_VOL_14:I = 0x87

.field private static final BCM_VOL_15:I = 0x96

.field private static final BCM_VOL_2:I = 0x4

.field private static final BCM_VOL_3:I = 0x8

.field private static final BCM_VOL_4:I = 0xc

.field private static final BCM_VOL_5:I = 0x12

.field private static final BCM_VOL_6:I = 0x19

.field private static final BCM_VOL_7:I = 0x22

.field private static final BCM_VOL_8:I = 0x2d

.field private static final BCM_VOL_9:I = 0x3c

.field private static final FM_BROADCAST_RECEIVER_INCLUDED:Z = true

.field private static final FM_RADIO_STATE_FORCE_OFF_IF_TURNOFF:Z = true

.field private static final TAG:Ljava/lang/String; = "FmReceiverService"

.field private static final V:Z = true

.field private static final volumeTable:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmReceiverCallback;",
            ">;"
        }
    .end annotation
.end field

.field public operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable:[I

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverService;->classFmInitNative()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "FmReceiverService"

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/broadcom/bt/service/fm/FmReceiverService$1;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    .local v0, broadcastRcvr:Landroid/content/BroadcastReceiver;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v2, "FmReceiverService"

    const-string v2, "broadcastRcvr addAction .."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, iFilter:Landroid/content/IntentFilter;
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v1           #iFilter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    :cond_0
    const-string v2, "FmReceiverService"

    const-string v2, "context  is  null"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "FmReceiverService"

    const-string v2, "broadcastRcvr\tis null"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z

    move-result v0

    return v0
.end method

.method private static native classFmInitNative()V
.end method

.method private native cleanupLoopNative()V
.end method

.method private native configureDeemphasisNative(I)Z
.end method

.method private native configureSignalNotificationNative(I)Z
.end method

.method private native disableNative(Z)Z
.end method

.method private native enableNative(I)Z
.end method

.method private native estimateNoiseFloorNative(I)Z
.end method

.method private native getAudioQualityNative(Z)Z
.end method

.method private native initLoopNative()V
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    const/16 v0, 0x7f

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAlternateFreqHopThreshold:I

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mStepSize:I

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mLiveAudioQuality:Z

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    const/16 v0, 0x64

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSignalPollInterval:I

    const/16 v0, 0x40

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mDeemphasisTime:I

    return-void
.end method

.method private native muteNative(Z)Z
.end method

.method private native searchAbortNative()Z
.end method

.method private native searchNative(IIII)Z
.end method

.method private sendAudioModeEventCallback(I)V
    .locals 6
    .parameter "audioMode"

    .prologue
    const-string v5, "sendAudioModeEventCallback"

    const-string v4, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "sendAudioModeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioModeEvent(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string v3, "sendAudioModeEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private sendAudioModeEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "sendAudioModeEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallback(I)V

    return-void
.end method

.method private sendAudioPathEventCallback(I)V
    .locals 6
    .parameter "audioPath"

    .prologue
    const-string v5, "sendAudioPathEventCallback"

    const-string v4, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "sendAudioPathEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioPathEvent(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string v3, "sendAudioPathEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private sendAudioPathEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "sendAudioPathEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallback(I)V

    return-void
.end method

.method private sendEstimateNflEventCallback(I)V
    .locals 6
    .parameter "nfl"

    .prologue
    const-string v5, "sendEstimateNflEventCallback"

    const-string v4, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "sendEstimateNflEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onEstimateNflEvent(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string v3, "sendEstimateNflEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private sendEstimateNflEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "sendEstimateNflEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallback(I)V

    return-void
.end method

.method private sendLiveAudioQualityEventCallback(I)V
    .locals 6
    .parameter "rssi"

    .prologue
    const-string v4, "sendLiveAudioQualityEventCallback"

    const-string v5, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "sendLiveAudioQualityEventCallback"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onLiveAudioQualityEvent(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string v3, "sendLiveAudioQualityEventCallback"

    invoke-static {v5, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radio_state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendLiveAudioQualityEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "sendLiveAudioQualityEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    return-void
.end method

.method private sendRdsDataEventCallback(IILjava/lang/String;)V
    .locals 5
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    const-string v4, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "sendRdsDataEventCallback"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string v3, "sendRdsModeEventCallback"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private sendRdsDataEventCallbackFromLocalStore()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "TEST RDS MESSAGE"

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    return-void
.end method

.method private sendRdsModeEventCallback(II)V
    .locals 6
    .parameter "rdsMode"
    .parameter "alternateFreqMode"

    .prologue
    const-string v5, "sendRdsModeEventCallback"

    const-string v4, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "sendRdsModeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsModeEvent(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string v3, "sendRdsModeEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private sendRdsModeEventCallbackFromLocalStore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v2, "FmReceiverService"

    const-string v3, "sendRdsModeEventCallbackFromLocalStore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, rds:I
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    if-eqz v2, :cond_1

    move v0, v4

    .local v0, af:I
    :goto_0
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    if-nez v2, :cond_2

    move v1, v4

    :cond_0
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallback(II)V

    return-void

    .end local v0           #af:I
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .restart local v0       #af:I
    :cond_2
    const/4 v2, 0x2

    move v1, v2

    goto :goto_1
.end method

.method private sendSeekCompleteEventCallback(IIZ)V
    .locals 6
    .parameter "freq"
    .parameter "rssi"
    .parameter "seekSuccess"

    .prologue
    const-string v5, "sendSeekCompleteEventCallback"

    const-string v4, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "sendSeekCompleteEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onSeekCompleteEvent(IIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string v3, "sendSeekCompleteEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private sendSeekCompleteEventCallbackFromLocalStore()V
    .locals 3

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "sendSeekCompleteEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallback(IIZ)V

    return-void
.end method

.method private sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "sendStatusEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    .local v9, callbacks:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v9, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v11, v0

    .local v11, t:Ljava/lang/Throwable;
    const-string v0, "FmReceiverService"

    const-string v1, "sendStatusEventCallback"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v11           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private sendVolumeEventCallback(II)V
    .locals 6
    .parameter "status"
    .parameter "volume"

    .prologue
    const-string v5, "sendVolumeEventCallback"

    const-string v4, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "sendVolumeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onVolumeEvent(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string v3, "sendVolumeEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private sendWorldRegionEventCallback(I)V
    .locals 6
    .parameter "worldRegion"

    .prologue
    const-string v5, "sendWorldRegionEventCallback"

    const-string v4, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "sendWorldRegionEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onWorldRegionEvent(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string v3, "sendWorldRegionEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private sendWorldRegionEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "sendWorldRegionEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallback(I)V

    return-void
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setFMVolumeNative(I)Z
.end method

.method private native setRdsModeNative(ZZI)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setScanStepNative(I)Z
.end method

.method private native tuneNative(I)Z
.end method


# virtual methods
.method public checkForPendingResponses()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "checkForPendingResponses"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    return-void
.end method

.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 7
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorLevel()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_1

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v3, :cond_2

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x63

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "getName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bluetooth_fm_receiver_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public declared-synchronized getStatus()I
    .locals 4

    .prologue
    const-string v1, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v1, "FmReceiverService"

    const-string v2, "getStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, returnStatus:I
    const/4 v1, 0x2

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v1, v2, :cond_0

    const-string v1, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #returnStatus:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 6
    .parameter "mute"

    .prologue
    const-string v3, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "muteAudio()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteNative(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "muteAudio failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onRadioAfJumpEvent(III)V
    .locals 4
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioAfJumpEvent(status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioAudioDataEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "mode"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioDataEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioAudioModeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "mode"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioAudioPathEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "path"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioPathEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioDeemphEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "time"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioDeemphEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    return-void
.end method

.method public onRadioMuteEvent(IZ)V
    .locals 2
    .parameter "status"
    .parameter "muted"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioMuteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioNflEstimationEvent(I)V
    .locals 2
    .parameter "level"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioNflEstimationEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioOffEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    const-string v0, "FmReceiverService"

    const-string v1, "onRadioOffEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    if-nez p1, :cond_0

    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_2

    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    return-void

    :cond_2
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_0
.end method

.method public onRadioOnEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    const-string v0, "FmReceiverService"

    const-string v1, "onRadioOnEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-ne v2, v0, :cond_1

    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    return-void

    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_0
.end method

.method public onRadioRdsModeEvent(IZZI)V
    .locals 3
    .parameter "status"
    .parameter "rdsOn"
    .parameter "afOn"
    .parameter "rdsType"

    .prologue
    const-string v2, "FmReceiverService"

    const-string v0, "FmReceiverService"

    const-string v0, "onRadioRdsModeEvent()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    sput-boolean p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    sput p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    const-string v0, "FmReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRadioRdsModeEvent( rdsOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", afOn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    return-void
.end method

.method public onRadioRdsTypeEvent(II)V
    .locals 4
    .parameter "status"
    .parameter "rdsType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRdsTypeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    :cond_0
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    if-ne v2, v0, :cond_1

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    :goto_0
    return-void

    :cond_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    goto :goto_0
.end method

.method public onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "data"
    .parameter "index"
    .parameter "text"

    .prologue
    const-string v3, ","

    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioRdsUpdateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    :cond_0
    return-void

    :pswitch_1
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    goto :goto_0

    :pswitch_2
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRadioRegionEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "region"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRegionEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallbackFromLocalStore()V

    :cond_0
    return-void
.end method

.method public onRadioScanStepEvent(I)V
    .locals 2
    .parameter "stepSize"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioScanStepEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    return-void
.end method

.method public onRadioSearchCompleteEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioSearchCompleteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioSearchEvent(II)V
    .locals 3
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    const-string v0, "FmReceiverService"

    const-string v1, "onRadioSearchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioTuneEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioTuneEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioVolumeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioVolumeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallback(II)V

    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .locals 1
    .parameter "started"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .locals 8
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "seekRdsStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    if-le p2, v7, :cond_2

    :cond_0
    const/4 v2, 0x4

    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    :cond_2
    if-ltz p4, :cond_3

    if-le p4, v7, :cond_4

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    if-eq p3, v5, :cond_5

    if-eq p3, v6, :cond_5

    const/4 v2, 0x4

    goto :goto_0

    :cond_5
    :try_start_1
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v3, :cond_6

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 p1, p1, 0x82

    :try_start_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized seekStation(II)I
    .locals 6
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    const-string v3, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "seekStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    const/16 v3, 0xff

    if-le p2, v3, :cond_2

    :cond_0
    const/4 v2, 0x4

    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    :cond_2
    const/4 v3, 0x2

    :try_start_1
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 p1, p1, 0x82

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 6

    .prologue
    const-string v3, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "seekStationAbort()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchAbortNative()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "searchAbortNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendStatusEventCallbackFromLocalStore()V
    .locals 9

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "sendStatusEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 6
    .parameter "audioMode"

    .prologue
    const-string v3, "FmReceiverService"

    monitor-enter p0

    const/4 v2, 0x0

    .local v2, returnStatus:I
    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 p1, p1, 0x3

    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioModeNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #msg:Landroid/os/Message;
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioModeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 6
    .parameter "audioPath"

    .prologue
    const-string v3, "FmReceiverService"

    monitor-enter p0

    const/4 v2, 0x0

    .local v2, returnStatus:I
    :try_start_0
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioPath("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 p1, p1, 0x3

    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPathNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioPathNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 6
    .parameter "volume"

    .prologue
    const-string v3, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "setFMVolume()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-ltz p1, :cond_0

    const/16 v3, 0x100

    if-le p1, v3, :cond_2

    :cond_0
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume is illegal ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x4

    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    :cond_2
    const/4 v3, 0x2

    :try_start_1
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFMVolume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolumeNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "setFMVolumeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 5
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const-string v2, "STATE = "

    const-string v2, "FmReceiverService"

    monitor-enter p0

    const/4 v1, 0x0

    .local v1, returnStatus:I
    :try_start_0
    const-string v2, "FmReceiverService"

    const-string v3, "setLiveAudioPolling()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/16 v2, 0xa

    if-lt p2, v2, :cond_0

    const v2, 0x186a0

    if-le p2, v2, :cond_1

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v2, :cond_2

    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getAudioQualityNative(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureSignalNotificationNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x2

    :try_start_3
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    :try_start_4
    const-string v2, "FmReceiverService"

    const-string v3, "setLiveAudioPolling failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 11
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "FmReceiverService"

    monitor-enter p0

    const/4 v5, 0x0

    .local v5, returnStatus:I
    :try_start_0
    const-string v6, "FmReceiverService"

    const-string v7, "setRdsMode()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p4, :cond_0

    const/16 v6, 0xff

    if-le p4, v6, :cond_2

    :cond_0
    const/4 v5, 0x4

    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    :cond_2
    const/4 v6, 0x2

    :try_start_1
    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v7, :cond_3

    const-string v6, "FmReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    goto :goto_0

    :cond_3
    const/4 v6, 0x4

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    const/4 v6, 0x0

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    const/4 v6, 0x1

    iput v6, v2, Landroid/os/Message;->what:I

    const/16 v6, 0x64

    iput v6, v2, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 p1, p1, 0x3

    and-int/lit8 p3, p3, 0x1

    and-int/lit8 p2, p2, 0x7c

    if-eqz p1, :cond_4

    move v4, v9

    .local v4, rdsOnNative:Z
    :goto_1
    if-eqz p3, :cond_5

    move v0, v9

    .local v0, afOnNative:Z
    :goto_2
    and-int/lit8 v3, p1, 0x1

    .local v3, rdsModeNative:I
    :try_start_2
    invoke-direct {p0, v4, v0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsModeNative(ZZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    if-eqz v6, :cond_6

    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_1

    :try_start_3
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #afOnNative:Z
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rdsModeNative:I
    .end local v4           #rdsOnNative:Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v2       #msg:Landroid/os/Message;
    :cond_4
    move v4, v10

    goto :goto_1

    .restart local v4       #rdsOnNative:Z
    :cond_5
    move v0, v10

    goto :goto_2

    .restart local v0       #afOnNative:Z
    .restart local v3       #rdsModeNative:I
    :cond_6
    const/4 v5, 0x2

    goto :goto_3

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "FmReceiverService"

    const-string v7, "setRdsNative failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x2

    goto :goto_3
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 6
    .parameter "stepSize"

    .prologue
    const-string v3, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "setStepSize()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .local v2, returnStatus:I
    const/16 v3, 0x10

    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v3, 0x2

    :try_start_1
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setScanStepNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "setScanStepNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setWorldRegion(II)I
    .locals 7
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "setWorldRegion()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-eqz p1, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v6, :cond_1

    const/4 v2, 0x4

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    if-eqz p2, :cond_2

    const/16 v3, 0x40

    if-eq p2, v3, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    :try_start_1
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v3, :cond_3

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRegionNative(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureDeemphasisNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "setRdsNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "FmReceiverService"

    const-string v1, "Service already started...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->startFM_Loop()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startFM_Loop()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "startFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initLoopNative()V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initNativeDataNative()V

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-nez v0, :cond_0

    const-string v0, "FmReceiverService"

    const-string v1, "Service already stopped...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopFM_Loop()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanupLoopNative()V

    return-void
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 6
    .parameter "freq"

    .prologue
    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "tuneRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-lt p1, v5, :cond_0

    const v3, 0x1869f

    if-le p1, v3, :cond_2

    :cond_0
    const/4 v2, 0x4

    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    :cond_2
    const/4 v3, 0x2

    :try_start_1
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "tuneNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized turnOffRadio()I
    .locals 6

    .prologue
    const-string v3, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "turnOffRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v3, 0x3

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v3, 0x0

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string v4, "turnOnRadioNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized turnOnRadio(I)I
    .locals 8
    .parameter "functionalityMask"

    .prologue
    const/4 v7, 0x1

    const-string v5, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v5, "FmReceiverService"

    const-string v6, "turnOnRadio........()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initFmPower()V

    const/4 v4, 0x0

    .local v4, returnStatus:I
    and-int/lit8 v3, p1, 0x3

    .local v3, requestedRegion:I
    and-int/lit8 v2, p1, 0x70

    .local v2, requestedRdsFeatures:I
    if-eq v3, v7, :cond_1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    if-eqz v3, :cond_1

    const-string v5, "FmReceiverService"

    const-string v6, "Illegal parameter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x4

    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_2

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_2

    :try_start_1
    const-string v5, "FmReceiverService"

    const-string v6, "Illegal parameter (2)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v5, :cond_3

    const-string v5, "FmReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    goto :goto_0

    :cond_3
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFuncMask:I

    const/4 v5, 0x1

    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    iput v5, v1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 p1, p1, 0x73

    :try_start_2
    const-string v5, "FmReceiverService"

    const-string v6, "Calling enableNative()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->enableNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    :try_start_3
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #requestedRdsFeatures:I
    .end local v3           #requestedRegion:I
    .end local v4           #returnStatus:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #requestedRdsFeatures:I
    .restart local v3       #requestedRegion:I
    .restart local v4       #returnStatus:I
    :cond_4
    const/4 v4, 0x2

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x2

    :try_start_4
    const-string v5, "FmReceiverService"

    const-string v6, "turnOnRadioNative failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
