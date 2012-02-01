.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private isRingerStartedRinging:Z

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCdmaVoicePrivacyState:Z

.field private mCurrentEmergencyToneState:I

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mIsAutoRejectedCall:Z

.field private mIsCdmaRedialCall:Z

.field private mIsEmergencyToneOn:I

.field private mIsGsmRedialCall:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

.field private mRedialCallCount:I

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSilentRingerRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .locals 6
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    const/4 v5, 0x0

    .line 197
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 112
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 122
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 170
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 171
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 172
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 178
    iput v5, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 187
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 188
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 373
    new-instance v2, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v2, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 198
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    .line 199
    iget-object v2, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 200
    iput-object p5, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 202
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 204
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 211
    :try_start_0
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v3, 0x0

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 220
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 222
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 224
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 228
    iput v5, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 229
    return-void

    .line 213
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 214
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return v0
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter "conn"

    .prologue
    .line 2614
    const/4 v1, 0x0

    .line 2615
    .local v1, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 2617
    .local v2, o:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_1

    .line 2618
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    .line 2622
    .end local v2           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2620
    .restart local v2       #o:Ljava/lang/Object;
    :cond_1
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2568
    .line 2570
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2571
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2591
    :goto_0
    if-nez v0, :cond_4

    .line 2592
    const/4 v0, 0x0

    .line 2603
    :goto_1
    return-object v0

    .line 2578
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2580
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2582
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2584
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2587
    :cond_3
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 2594
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 2597
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, p2, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2599
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2600
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2602
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLogNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2636
    if-nez p2, :cond_2

    .line 2637
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 2643
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2644
    :cond_1
    return v0

    .line 2639
    :cond_2
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2640
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2648
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    return-void
.end method

.method private onBatteryLow()V
    .locals 1

    .prologue
    .line 1835
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBatteryLow()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1839
    :cond_0
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x17

    const/4 v2, 0x0

    .line 2267
    invoke-virtual {p0, v3}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2268
    invoke-virtual {p0, v4}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2272
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 2277
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2278
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2279
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 2283
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2284
    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2288
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 2291
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2295
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2296
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 2297
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2298
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2299
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 2300
    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 2301
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 2302
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uAlertPitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2305
    :cond_3
    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v0

    .line 2309
    new-instance v1, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2311
    :cond_4
    return-void
.end method

.method private onCdmaCallWaitingReject()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    .line 2332
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2335
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_3

    .line 2337
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    .line 2339
    if-eqz v10, :cond_2

    .line 2340
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2341
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 2342
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    .line 2343
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v8

    .line 2344
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v0, :cond_4

    move v5, v12

    .line 2348
    :goto_0
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 2350
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_5

    .line 2351
    :cond_0
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    .line 2358
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v2, v1, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2360
    if-eqz v2, :cond_6

    iget v0, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2361
    :goto_2
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- onCdmaCallWaitingReject(): logNumber set to: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ", newPresentation value is: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2364
    :cond_1
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallArgs;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct/range {v0 .. v9}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 2369
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 2371
    if-ne v5, v12, :cond_7

    .line 2373
    invoke-direct {p0, v10, v6, v7}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 2380
    :goto_3
    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 2384
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2386
    :cond_3
    return-void

    .line 2344
    :cond_4
    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    .line 2353
    :cond_5
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    goto :goto_1

    :cond_6
    move v0, v4

    .line 2360
    goto :goto_2

    .line 2376
    :cond_7
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto :goto_3
.end method

.method private onCfiChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCfiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1805
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    .line 1806
    return-void
.end method

.method private onCustomRingQueryComplete()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "CallNotifier"

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, isQueryExecutionTimeExpired:Z
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 639
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 640
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 641
    const/4 v0, 0x1

    .line 643
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 645
    if-eqz v0, :cond_1

    .line 648
    const-string v1, "CallNotifier"

    const-string v1, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const v1, 0x112a0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 664
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_2

    .line 665
    const-string v1, "CallNotifier"

    const-string v1, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    return-void

    .line 643
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 672
    :cond_2
    const-string v1, "RINGING... (onCustomRingQueryComplete)"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    .line 676
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 677
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 21
    .parameter

    .prologue
    .line 1401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect()...  CallManager state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1403
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v15, v0

    .line 1404
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_0

    if-eqz v15, :cond_0

    .line 1405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onDisconnect: cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", incoming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", date = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1409
    :cond_0
    const/4 v4, 0x0

    .line 1410
    const/4 v5, 0x0

    .line 1411
    if-eqz v15, :cond_42

    .line 1412
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v4

    .line 1413
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    .line 1416
    :goto_0
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1417
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    move v4, v0

    if-eqz v4, :cond_2

    .line 1418
    const-string v4, "- onDisconnect: This is Incomming Video call disconnect so calling continueDisconnectionAfterVTStackCleanup "

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1419
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    .line 1420
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1766
    :cond_1
    :goto_1
    return-void

    .line 1422
    :cond_2
    const-string v4, "- onDisconnect: This is Video call disconnect so returning back."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-nez v4, :cond_1

    .line 1426
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    goto :goto_1

    .line 1432
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 1433
    const/4 v4, 0x0

    .line 1434
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_auto_retry"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1438
    :cond_4
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_41

    .line 1440
    :cond_5
    const-string v4, "autoredial_mode"

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "autoredial_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move/from16 v18, v4

    .line 1443
    :goto_2
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1451
    const/16 v4, 0x17

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1452
    const/16 v4, 0x18

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1468
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1469
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1f

    .line 1470
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1473
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_7

    const-string v4, "cancelCallInProgressNotification()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1474
    :cond_7
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 1498
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object v4, v0

    if-eqz v4, :cond_9

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1500
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1505
    :cond_9
    const/4 v4, 0x0

    .line 1508
    if-eqz v15, :cond_40

    .line 1509
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_23

    .line 1510
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_a

    const-string v4, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1511
    :cond_a
    const/4 v4, 0x2

    move/from16 v19, v4

    .line 1542
    :goto_4
    const/4 v4, 0x0

    .line 1550
    if-nez v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_c

    if-eqz v15, :cond_c

    .line 1553
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_b

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_c

    .line 1555
    :cond_b
    const-string v4, "- need to play CALL_ENDED tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->playCallEndTone(Landroid/content/Context;I)Z

    move-result v4

    .line 1561
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1562
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1563
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 1566
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_36

    :cond_d
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_36

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_36

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_36

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_36

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_36

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_36

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_36

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_36

    if-eqz v15, :cond_36

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-nez v5, :cond_36

    .line 1578
    const/4 v5, 0x1

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_35

    .line 1579
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_34

    .line 1580
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRedialState : redialCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1581
    :cond_e
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1597
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1598
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_f

    const-string v5, "wake up screen"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1599
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1601
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_12

    .line 1604
    if-nez v19, :cond_11

    if-nez v4, :cond_11

    .line 1605
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1608
    :cond_11
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    move v4, v0

    if-nez v4, :cond_37

    .line 1616
    const-string v4, "onDisconnect: force InCallScreen to finish()"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 1624
    :cond_12
    :goto_6
    if-eqz v15, :cond_1

    .line 1625
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1626
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v10

    .line 1627
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v12

    .line 1628
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    .line 1632
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1633
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v4

    if-ne v0, v1, :cond_38

    const/4 v4, 0x3

    :goto_7
    move v9, v4

    .line 1638
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- callLogType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1642
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 1643
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v7

    .line 1645
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_13

    const-string v4, "- onDisconnect(): logNumber set to: xxxxxxx"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1652
    :cond_13
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v8

    .line 1654
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_14

    .line 1655
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    move v4, v0

    if-eqz v4, :cond_14

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object v4, v0

    if-eqz v4, :cond_14

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object v4, v0

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v4}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1668
    :cond_14
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3a

    const/4 v4, 0x1

    .line 1672
    :goto_9
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v14, 0x2

    if-ne v5, v14, :cond_3b

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v5, 0x1

    .line 1674
    :goto_a
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    .line 1677
    if-nez v5, :cond_16

    if-eqz v14, :cond_15

    if-nez v4, :cond_16

    .line 1678
    :cond_15
    new-instance v4, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    const-string v14, "content://logs/call"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct/range {v4 .. v14}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 1687
    :cond_16
    const/4 v4, 0x3

    if-ne v9, v4, :cond_17

    .line 1691
    move-object/from16 v0, p0

    move-object v1, v15

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1698
    :cond_17
    if-eqz v19, :cond_18

    .line 1699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- starting post-disconnect tone ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1700
    new-instance v4, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1712
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_3d

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1718
    const-string v4, "- NOT showing in-call screen; releasing wake locks!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    sget-object v5, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    sget-object v5, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1728
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1a

    :cond_19
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v4

    if-eq v0, v1, :cond_1a

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v4

    if-eq v0, v1, :cond_1a

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v4

    if-eq v0, v1, :cond_1a

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v4

    if-eq v0, v1, :cond_1a

    .line 1735
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    move v4, v0

    if-nez v4, :cond_3f

    .line 1736
    const/4 v4, 0x1

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_3e

    .line 1739
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    .line 1740
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1749
    :cond_1a
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1751
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    .line 1754
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c

    .line 1755
    const-string v4, "- onDisconnect: mIsAutoRejectedCall"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1756
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 1757
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 1764
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V

    goto/16 :goto_1

    .line 1476
    :cond_1d
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_1e

    const-string v4, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1477
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_3

    .line 1480
    :cond_1f
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_20

    const-string v5, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1481
    :cond_20
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v5

    if-nez v5, :cond_22

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 1484
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_8

    .line 1489
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_21

    const-string v5, "Start ring after the first call was cleared and accept the waiting call"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1490
    :cond_21
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_3

    .line 1493
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_3

    .line 1512
    :cond_23
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_25

    .line 1513
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_24

    const-string v4, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1514
    :cond_24
    const/4 v4, 0x3

    move/from16 v19, v4

    goto/16 :goto_4

    .line 1515
    :cond_25
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-eq v0, v1, :cond_26

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_28

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1518
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_27

    const-string v4, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1519
    :cond_27
    const/16 v4, 0xc

    move/from16 v19, v4

    goto/16 :goto_4

    .line 1520
    :cond_28
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_2a

    .line 1521
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_29

    const-string v4, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1522
    :cond_29
    const/4 v4, 0x7

    move/from16 v19, v4

    goto/16 :goto_4

    .line 1523
    :cond_2a
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_2c

    .line 1524
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_2b

    const-string v4, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1525
    :cond_2b
    const/16 v4, 0x8

    move/from16 v19, v4

    goto/16 :goto_4

    .line 1526
    :cond_2c
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_2e

    .line 1527
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_2d

    const-string v4, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1528
    :cond_2d
    const/16 v4, 0x9

    move/from16 v19, v4

    goto/16 :goto_4

    .line 1529
    :cond_2e
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_30

    .line 1530
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_2f

    const-string v4, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1531
    :cond_2f
    const/16 v4, 0xa

    move/from16 v19, v4

    goto/16 :goto_4

    .line 1532
    :cond_30
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_32

    .line 1533
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_31

    const-string v4, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1534
    :cond_31
    const/16 v4, 0xe

    move/from16 v19, v4

    goto/16 :goto_4

    .line 1535
    :cond_32
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_40

    .line 1536
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_33

    const-string v4, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1537
    :cond_33
    const/4 v4, 0x5

    move/from16 v19, v4

    goto/16 :goto_4

    .line 1584
    :cond_34
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1585
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_5

    .line 1588
    :cond_35
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1589
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_5

    .line 1593
    :cond_36
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1594
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_5

    .line 1619
    :cond_37
    const-string v4, "onDisconnect: In call screen. Set short timeout."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->clearUserActivityTimeout()V

    goto/16 :goto_6

    .line 1633
    :cond_38
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1636
    :cond_39
    const/4 v4, 0x2

    move v9, v4

    goto/16 :goto_8

    .line 1668
    :cond_3a
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 1672
    :cond_3b
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 1722
    :cond_3c
    const-string v4, "- still showing in-call screen; not releasing wake locks."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1725
    :cond_3d
    const-string v4, "- phone still in use; not releasing wake locks."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1742
    :cond_3e
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_c

    .line 1745
    :cond_3f
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_c

    :cond_40
    move/from16 v19, v4

    goto/16 :goto_4

    :cond_41
    move/from16 v18, v4

    goto/16 :goto_2

    :cond_42
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    goto/16 :goto_0
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter

    .prologue
    .line 2176
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 2178
    if-eqz v0, :cond_1

    .line 2179
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 2180
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfo: displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2181
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 2184
    const/16 v0, 0x19

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2187
    :cond_1
    return-void
.end method

.method private onMwiChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMwiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1791
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(Z)V

    .line 1792
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "CallNotifier"

    .line 386
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 387
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewRingingConnection(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 388
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 392
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    .line 394
    :goto_0
    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 395
    const-string v0, "CallNotifier"

    const-string v0, "CallNotifier: rejecting incoming call: not provisioned / ECM"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 558
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v8

    .line 392
    goto :goto_0

    .line 403
    :cond_3
    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 404
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v3, v4, :cond_4

    move v3, v6

    .line 406
    :goto_2
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v4, v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v5, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v4, v5, :cond_5

    move v4, v6

    .line 408
    :goto_3
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 410
    if-eqz v5, :cond_6

    .line 411
    const-string v0, "CallNotifier"

    const-string v0, "CallNotifier: rejecting incoming call: OTA call is active"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    :cond_4
    move v3, v8

    .line 404
    goto :goto_2

    :cond_5
    move v4, v8

    .line 406
    goto :goto_3

    .line 414
    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_9

    .line 415
    :cond_7
    if-eqz v4, :cond_8

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 416
    :cond_8
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 417
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 421
    :cond_9
    if-nez v0, :cond_a

    .line 422
    const-string v0, "CallNotifier"

    const-string v0, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 427
    :cond_a
    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 429
    const-string v3, "CallNotifier"

    const-string v3, "CallNotifier: rejecting incoming call: auto reject call"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    .line 433
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v3, v4, :cond_b

    .line 434
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 440
    :goto_4
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-class v5, Lcom/android/phone/CallAlertDialog;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    sget-object v4, Lcom/android/phone/CallAlertDialog;->MESSAGE:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const/high16 v2, 0x1400

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 443
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 446
    const-string v2, "CallNotifier"

    const-string v2, "CallNotifier: auto rejecting incoming call"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 449
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 451
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v6, :cond_1

    .line 452
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    goto/16 :goto_1

    .line 435
    :cond_b
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v3, v4, :cond_c

    .line 436
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 438
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 457
    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v1

    if-nez v1, :cond_e

    .line 458
    const-string v0, "CallNotifier"

    const-string v0, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 468
    :cond_e
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v9, :cond_f

    .line 469
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 472
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- connection is ringing!  state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 502
    const-string v2, "Holding wake lock on new incoming connection."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 503
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v3, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 507
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 508
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 511
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->autoAnsweringMode(Lcom/android/internal/telephony/Connection;)V

    .line 557
    :goto_5
    const-string v0, "- onNewRingingConnection() done."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 513
    :cond_10
    const-string v0, "- starting call waiting tone..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 514
    const-string v0, "alertoncall_mode"

    .line 516
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 518
    packed-switch v0, :pswitch_data_0

    .line 533
    const-string v0, "- call waiting tone SOUND..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_11

    .line 535
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v0, p0, v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 536
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 542
    :cond_11
    :goto_6
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "- showing incoming call (this is a WAITING call)..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 543
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 544
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    goto :goto_5

    .line 520
    :pswitch_0
    const-string v0, "- call waiting tone VOICE...will start TTS"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v9}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    goto :goto_6

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "r"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 774
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 775
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPhoneStateChanged: state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v6, :cond_19

    move v6, v8

    :goto_0
    invoke-virtual {v5, v6}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableNotificationAlerts(Z)V

    .line 783
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 784
    .local v2, fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 785
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    .line 788
    :cond_0
    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v5, :cond_1

    .line 789
    const/16 v4, 0xb

    .line 790
    .local v4, toneToPlay:I
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v5, p0, v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 793
    .end local v4           #toneToPlay:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 795
    :cond_2
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 803
    :cond_3
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v7}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 807
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v3}, Lcom/android/phone/PhoneApp;->updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V

    .line 809
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v5, :cond_8

    .line 811
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v5, :cond_4

    .line 812
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 813
    iput-object v11, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 816
    :cond_4
    const-string v5, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 818
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 822
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_5

    .line 823
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v6, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 824
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v6, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 833
    :cond_5
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 834
    :cond_6
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->stopRing()V

    .line 835
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 837
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "- updating notification for phone state change..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 838
    :cond_7
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 841
    :cond_8
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v9, :cond_b

    .line 842
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 843
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 844
    const-string v5, "onPhoneStateChanged: it is an emergency call."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 845
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 846
    .local v1, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v5, :cond_9

    .line 847
    new-instance v5, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v5, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 850
    :cond_9
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v5, :cond_a

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_1a

    .line 851
    :cond_a
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_tone"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 854
    iget v5, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v5, :cond_b

    .line 856
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v5, :cond_b

    .line 857
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v5}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$200(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 870
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_b
    :goto_1
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v5, v8, :cond_c

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v10, :cond_12

    .line 872
    :cond_c
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 873
    .restart local v1       #callState:Lcom/android/internal/telephony/Call$State;
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_f

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_f

    .line 874
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_d

    const-string v5, "PhoneStateChanged : Call.State.ALERTING"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 877
    :cond_d
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-ne v5, v8, :cond_1b

    .line 879
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v5, v8}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    .line 885
    :goto_2
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-ne v5, v8, :cond_f

    .line 886
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_e

    const-string v5, "PhoneStateChanged : start videocall ringbacktone"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 887
    :cond_e
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 888
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    .line 892
    :cond_f
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_10

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_11

    :cond_10
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_11

    .line 894
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->startCallConnectedVibration(Landroid/content/Context;)Z

    .line 897
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-nez v5, :cond_12

    .line 900
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v5, :cond_12

    .line 901
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 902
    iput-object v11, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 907
    .end local v1           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_12
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v5, v8, :cond_13

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v10, :cond_17

    .line 909
    :cond_13
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_16

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_14

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_16

    .line 912
    :cond_14
    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    if-eqz v5, :cond_15

    .line 914
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 915
    iput v7, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 918
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 920
    :cond_16
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    .line 923
    :cond_17
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v5, :cond_18

    .line 924
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showHidedMmiDialog()V

    .line 927
    :cond_18
    return-void

    .end local v2           #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_19
    move v6, v7

    .line 780
    goto/16 :goto_0

    .line 860
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v1       #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v2       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_1a
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_b

    .line 861
    iget v5, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v5, :cond_b

    .line 862
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v5, :cond_b

    .line 863
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v5}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto/16 :goto_1

    .line 882
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_1b
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    goto/16 :goto_2
.end method

.method private onResendMute()V
    .locals 2

    .prologue
    .line 2548
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 2549
    .local v0, muteState:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2550
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2551
    return-void

    .line 2549
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2524
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2526
    .local v0, playTone:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2531
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v1, :cond_0

    .line 2533
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2534
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2542
    :cond_0
    :goto_0
    return-void

    .line 2537
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_0

    .line 2538
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2539
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_0
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2225
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 2249
    :cond_0
    :goto_0
    return-void

    .line 2228
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 2230
    if-eqz v0, :cond_0

    .line 2231
    iget-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 2232
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalInfo: isPresent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2233
    :cond_2
    if-eqz v1, :cond_0

    .line 2234
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 2235
    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 2236
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 2238
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignalInfo: uSignalType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uAlertPitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2241
    :cond_3
    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v0

    .line 2245
    new-instance v1, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_0
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 683
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 685
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 686
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 687
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 689
    :cond_1
    return-void
.end method

.method private registerForNotifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 962
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 963
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 964
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 965
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 966
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 967
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x1a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 968
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 969
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 970
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 971
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 972
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 973
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 974
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 975
    return-void
.end method

.method private showIncomingCall()V
    .locals 2

    .prologue
    .line 711
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 716
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "call"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 750
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 756
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 757
    :cond_1
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 761
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hideMmiDialog()V

    .line 763
    return-void

    .line 717
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 2429
    if-eqz v0, :cond_3

    .line 2432
    const-string v1, "showMissedCallNotification: Querying for CallerInfo on missed call..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2433
    iget-boolean v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v1, :cond_0

    .line 2436
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2441
    iget-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2442
    iget-object v1, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2443
    iget v2, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v2, v4, :cond_1

    .line 2444
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v2, 0x7f0d0008

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 2451
    :goto_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2459
    :cond_0
    :goto_1
    return-void

    .line 2445
    :cond_1
    iget v2, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v2, v4, :cond_2

    .line 2446
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v2, 0x7f0d0007

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 2448
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget v4, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v2, v3, v1, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 2457
    :cond_3
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 575
    const/4 v1, 0x0

    .line 576
    .local v1, shouldStartQuery:Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 577
    :try_start_0
    iget v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v3, :cond_0

    .line 578
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 579
    const/4 v1, 0x1

    .line 581
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    if-eqz v1, :cond_2

    .line 584
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 587
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 592
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_1

    .line 593
    const-string v2, "- CallerInfo already up to date, using available data"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 594
    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v4, p0, v2}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 617
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :goto_0
    return-void

    .line 581
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 596
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1
    const-string v2, "- Starting query, posting timeout message."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 597
    const/16 v2, 0x64

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 606
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2
    const v2, 0x112a1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 609
    const-string v2, "RINGING... (request to ring arrived while query is running)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    .line 614
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 615
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method


# virtual methods
.method protected continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 1048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "continueDisconnectionAfterVTStackCleanup()...  phone state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    .line 1051
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 1052
    const/4 v4, 0x0

    .line 1053
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1054
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_auto_retry"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1057
    :cond_0
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3a

    .line 1058
    const-string v4, "autoredial_mode"

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "autoredial_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move/from16 v16, v4

    .line 1062
    :goto_0
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1070
    const/16 v4, 0x17

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1071
    const/16 v4, 0x18

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1074
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/Connection;

    .line 1075
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 1076
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onDisconnect: cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", incoming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", date = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1094
    :cond_2
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_19

    .line 1095
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_17

    .line 1098
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "cancelCallInProgressNotification()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1099
    :cond_3
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 1126
    :cond_4
    :goto_1
    const/4 v4, 0x0

    .line 1129
    if-eqz p1, :cond_39

    .line 1130
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v5

    .line 1131
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v6, :cond_1e

    .line 1132
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1133
    :cond_5
    const/4 v4, 0x2

    move/from16 v17, v4

    .line 1161
    :goto_2
    const/4 v4, 0x0

    .line 1169
    if-nez v17, :cond_7

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_7

    if-eqz p1, :cond_7

    .line 1172
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v5

    .line 1173
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v5, v6, :cond_6

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v6, :cond_7

    .line 1175
    :cond_6
    const-string v4, "- need to play CALL_ENDED tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1180
    const-string v4, "in video call, set normal -> play end tone -> send broadcast"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->playCallEndTone(Landroid/content/Context;I)Z

    move-result v4

    .line 1185
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1186
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1187
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 1191
    :cond_7
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_9

    .line 1194
    if-nez v17, :cond_8

    if-nez v4, :cond_8

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1198
    :cond_8
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1206
    const-string v4, "onDisconnect: force InCallScreen to finish()"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 1215
    :cond_9
    if-eqz p1, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isFakeConnection()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1217
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1218
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v18

    .line 1219
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v10

    .line 1220
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v12

    .line 1221
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v19

    .line 1225
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1226
    if-eqz p2, :cond_2d

    .line 1227
    const-string v4, "continueDisconnectionAfterVTStackCleanup()...  Call rejected due to low batter and treted as Missed call"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1228
    const/4 v4, 0x3

    move v9, v4

    .line 1239
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- callLogType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1241
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 1242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v7

    .line 1249
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v8

    .line 1251
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onDisconnect(): logNumber set to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1253
    :cond_a
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 1254
    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    move v4, v0

    if-eqz v4, :cond_b

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object v4, v0

    if-eqz v4, :cond_b

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object v4, v0

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v4}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1267
    :cond_b
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_30

    const/4 v4, 0x1

    .line 1271
    :goto_4
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v14, 0x2

    if-ne v5, v14, :cond_31

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v5, 0x1

    .line 1273
    :goto_5
    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    .line 1276
    if-nez v5, :cond_d

    if-eqz v14, :cond_c

    if-nez v4, :cond_d

    .line 1277
    :cond_c
    new-instance v4, Lcom/android/phone/CallLogAsync$AddCallArgs;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v14, "content://logs/video_call"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct/range {v4 .. v14}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 1286
    :cond_d
    const/4 v4, 0x3

    if-ne v9, v4, :cond_e

    .line 1287
    const-string v4, "- onDisconnect(): show miss call notification"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1298
    :cond_e
    if-eqz v17, :cond_11

    .line 1299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- starting post-disconnect tone ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1300
    const/4 v4, 0x2

    move/from16 v0, v17

    move v1, v4

    if-ne v0, v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1301
    const-string v4, "VT busy call - set audio mode ( normal )"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    move-object v4, v0

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1307
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1309
    :cond_10
    new-instance v4, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1321
    :cond_11
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_33

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v4

    if-nez v4, :cond_32

    .line 1327
    const-string v4, "- NOT showing in-call screen; releasing wake locks!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    sget-object v5, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    sget-object v5, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1337
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_13

    :cond_12
    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_13

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_13

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_13

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_13

    .line 1344
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    move v4, v0

    if-nez v4, :cond_35

    .line 1345
    const/4 v4, 0x1

    move/from16 v0, v16

    move v1, v4

    if-ne v0, v1, :cond_34

    .line 1348
    const/4 v4, 0x0

    move-object v0, v15

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    .line 1349
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1357
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_38

    :cond_14
    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_38

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_38

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_38

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_38

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_38

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_38

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-nez v4, :cond_38

    .line 1368
    const/4 v4, 0x1

    move/from16 v0, v16

    move v1, v4

    if-ne v0, v1, :cond_37

    .line 1369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_36

    .line 1370
    const/4 v4, 0x0

    move-object v0, v15

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    .line 1371
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1392
    :cond_15
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    .line 1393
    const-string v4, "- continueDisconnectionAfterVTStackCleanup: mIsAutoRejectedCall"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1394
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 1395
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 1397
    :cond_16
    return-void

    .line 1101
    :cond_17
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_18

    const-string v4, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1102
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_1

    .line 1105
    :cond_19
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_1a

    const-string v4, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1106
    :cond_1a
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1107
    const/4 v4, 0x0

    .line 1108
    if-eqz p1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v4

    .line 1109
    :cond_1b
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1110
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 1111
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v4, v5, :cond_4

    .line 1116
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_1c

    const-string v4, "Start ring after the first call was cleared and accept the waiting call"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1117
    :cond_1c
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 1120
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_1

    .line 1134
    :cond_1e
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v6, :cond_20

    .line 1135
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_1f

    const-string v4, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1136
    :cond_1f
    const/4 v4, 0x3

    move/from16 v17, v4

    goto/16 :goto_2

    .line 1137
    :cond_20
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v5, v6, :cond_21

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v6, :cond_23

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1140
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_22

    const-string v4, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1141
    :cond_22
    const/16 v4, 0xc

    move/from16 v17, v4

    goto/16 :goto_2

    .line 1142
    :cond_23
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v6, :cond_25

    .line 1143
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_24

    const-string v4, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1144
    :cond_24
    const/4 v4, 0x7

    move/from16 v17, v4

    goto/16 :goto_2

    .line 1145
    :cond_25
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v6, :cond_27

    .line 1146
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_26

    const-string v4, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1147
    :cond_26
    const/16 v4, 0x8

    move/from16 v17, v4

    goto/16 :goto_2

    .line 1148
    :cond_27
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v6, :cond_29

    .line 1149
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_28

    const-string v4, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1150
    :cond_28
    const/16 v4, 0x9

    move/from16 v17, v4

    goto/16 :goto_2

    .line 1151
    :cond_29
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v6, :cond_2b

    .line 1152
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_2a

    const-string v4, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1153
    :cond_2a
    const/16 v4, 0xa

    move/from16 v17, v4

    goto/16 :goto_2

    .line 1154
    :cond_2b
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v5, v6, :cond_39

    .line 1155
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_2c

    const-string v4, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1156
    :cond_2c
    const/4 v4, 0x5

    move/from16 v17, v4

    goto/16 :goto_2

    .line 1230
    :cond_2d
    const-string v4, "continueDisconnectionAfterVTStackCleanup()...  normal condition for Call log not disconnected due to low battery"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1231
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object v1, v4

    if-ne v0, v1, :cond_2e

    const/4 v4, 0x3

    :goto_9
    move v9, v4

    goto/16 :goto_3

    :cond_2e
    const/4 v4, 0x1

    goto :goto_9

    .line 1236
    :cond_2f
    const/4 v4, 0x2

    move v9, v4

    goto/16 :goto_3

    .line 1267
    :cond_30
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1271
    :cond_31
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1331
    :cond_32
    const-string v4, "- still showing in-call screen; not releasing wake locks."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1334
    :cond_33
    const-string v4, "- phone still in use; not releasing wake locks."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1351
    :cond_34
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_7

    .line 1354
    :cond_35
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_7

    .line 1374
    :cond_36
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1375
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 1376
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    goto/16 :goto_8

    .line 1382
    :cond_37
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1383
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_8

    .line 1386
    :cond_38
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1387
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_8

    :cond_39
    move/from16 v17, v4

    goto/16 :goto_2

    :cond_3a
    move/from16 v16, v4

    goto/16 :goto_0
.end method

.method getCdmaVoicePrivacyState()Z
    .locals 1

    .prologue
    .line 2399
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    return v0
.end method

.method getIsCdmaRedialCall()Z
    .locals 1

    .prologue
    .line 2406
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    return v0
.end method

.method getIsGsmRedialCall()Z
    .locals 1

    .prologue
    .line 2420
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    return v0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getPreviousGsmCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v7, "- updating notification for VP state..."

    const-string v5, "CallNotifier"

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 235
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 237
    :sswitch_0
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "RINGING... (new)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 238
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 239
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    goto :goto_0

    .line 245
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 248
    .local v0, pb:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v2, :cond_2

    .line 250
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_2
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "RING before NEW_RING, skipping"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    .end local v0           #pb:Lcom/android/internal/telephony/PhoneBase;
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 265
    :sswitch_3
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "DISCONNECT"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 266
    :cond_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 270
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 277
    :sswitch_5
    const-string v2, "CallNotifier"

    const-string v2, "CallerInfo query took too long; manually starting ringer"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0

    .line 287
    :sswitch_6
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    goto :goto_0

    .line 291
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onBatteryLow()V

    goto/16 :goto_0

    .line 295
    :sswitch_8
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 296
    :cond_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 300
    :sswitch_9
    const-string v2, "CallNotifier"

    const-string v2, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 305
    :sswitch_a
    const-string v2, "CallNotifier"

    const-string v2, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 307
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 311
    :sswitch_b
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 313
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2, v4}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 314
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->updateInCallScreenTouchUi()V

    goto/16 :goto_0

    .line 318
    :sswitch_c
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 319
    :cond_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 323
    :sswitch_d
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 324
    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 328
    :sswitch_e
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "Received Display Info notification done event ..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 329
    :cond_8
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_0

    .line 333
    :sswitch_f
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, p1}, Lcom/android/phone/PhoneApp;->handleOtaEvents(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 337
    :sswitch_10
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 338
    :cond_9
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    if-nez v2, :cond_0

    .line 339
    const/4 v1, 0x6

    .line 340
    .local v1, toneToPlay:I
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 341
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 343
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "- updating notification for VP state..."

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 344
    :cond_a
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 349
    .end local v1           #toneToPlay:I
    :sswitch_11
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 350
    :cond_b
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    if-eqz v2, :cond_0

    .line 351
    const/4 v1, 0x6

    .line 352
    .restart local v1       #toneToPlay:I
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 353
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 355
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "- updating notification for VP state..."

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 356
    :cond_c
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 361
    .end local v1           #toneToPlay:I
    :sswitch_12
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 365
    :sswitch_13
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_0

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_1
        0x6 -> :sswitch_c
        0x7 -> :sswitch_d
        0x8 -> :sswitch_8
        0x9 -> :sswitch_10
        0xa -> :sswitch_11
        0xb -> :sswitch_12
        0xc -> :sswitch_13
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_a
        0x18 -> :sswitch_b
        0x19 -> :sswitch_e
        0x1a -> :sswitch_f
        0x1b -> :sswitch_9
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v8, "group_ringtone"

    .line 984
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 985
    const-string v0, "CallerInfo query complete, posting missed call notification"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 987
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    instance-of v0, p2, Lcom/android/phone/CallNotifier;

    if-eqz v0, :cond_0

    .line 990
    const-string v0, "CallerInfo query complete (for CallNotifier), updating state for incoming call.."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 994
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 997
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    :try_start_0
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-ne v1, v7, :cond_9

    .line 999
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    move v1, v2

    .line 1002
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    if-eqz v1, :cond_0

    .line 1007
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_3

    .line 1008
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1009
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1002
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1013
    :cond_3
    check-cast p2, Lcom/android/phone/CallNotifier;

    iget-object v6, p2, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1015
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Lcom/android/phone/Ringer;->isValidRingtoneURI(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1016
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1017
    :cond_4
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1042
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0

    .line 1018
    :cond_6
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-ne v0, v2, :cond_5
    goto :cond_5

    .line 1019
    const-string v0, "onQueryComplete: start group ringtone query"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1020
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "group_ringtone"

    aput-object v8, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND mimetype = \'vnd.android.cursor.item/group_membership\' AND group_ringtone IS NOT NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "data1 LIMIT 1 "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1024
    if-eqz v0, :cond_5

    .line 1025
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1028
    const-string v1, "group_ringtone"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1029
    if-eq v1, v7, :cond_8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1030
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 1031
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Lcom/android/phone/Ringer;->isValidRingtoneURI(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1032
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1034
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: group ringtone URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1037
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_9
    move v1, v4

    goto/16 :goto_1
.end method

.method playMinuteMinder()V
    .locals 3

    .prologue
    const-string v2, "min_minder"

    .line 1842
    const-string v0, "min_minder"

    .line 1843
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "min_minder"

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1844
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1849
    :goto_0
    return-void

    .line 1848
    :cond_0
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    goto :goto_0
.end method

.method public resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 1772
    const-string v0, "resetAudioStateAfterDisconnect()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1774
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAudioStateAfterDisconnect(): Current phone state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", So return and not continued resetAudio process."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1787
    :goto_0
    return-void

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    .line 1779
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1784
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1786
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method

.method sendBatteryLow()V
    .locals 2

    .prologue
    .line 1830
    const/16 v1, 0x16

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1831
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendMessage(Landroid/os/Message;)Z

    .line 1832
    return-void
.end method

.method sendCdmaCallWaitingReject()V
    .locals 1

    .prologue
    .line 2321
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 2322
    return-void
.end method

.method sendMwiChangedDelayed(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 1799
    const/16 v1, 0x15

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1800
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1801
    return-void
.end method

.method silenceRinger()V
    .locals 1

    .prologue
    .line 1820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1821
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1823
    return-void
.end method

.method stopSignalInfoTone()V
    .locals 2

    .prologue
    .line 2258
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2259
    :cond_0
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2260
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 929
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 932
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 933
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 934
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 935
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 936
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 937
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 938
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 939
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 940
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 941
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 944
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 949
    :cond_1
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 952
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 954
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 955
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 958
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 959
    return-void
.end method
