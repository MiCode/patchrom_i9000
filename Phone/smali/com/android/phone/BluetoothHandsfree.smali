.class public Lcom/android/phone/BluetoothHandsfree;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHandsfree$31;,
        Lcom/android/phone/BluetoothHandsfree$DebugThread;,
        Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    }
.end annotation


# static fields
.field private static sVoiceCommandIntent:Landroid/content/Intent;


# instance fields
.field private final mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mA2dpState:I

.field private mA2dpSuspended:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPossible:Z

.field private mBgndEarliestConnectionTime:J

.field private final mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

.field private final mCM:Lcom/android/internal/telephony/CallManager;

.field private mCdmaIsSecondCallActive:Z

.field mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mClip:Z

.field private mCmee:Z

.field private mConnectedSco:Landroid/bluetooth/ScoSocket;

.field private final mContext:Landroid/content/Context;

.field private mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadset:Landroid/bluetooth/HeadsetBase;

.field private mHeadsetType:I

.field private mIncomingSco:Landroid/bluetooth/ScoSocket;

.field private mIndicatorsEnabled:Z

.field private mLocalBrsf:I

.field private mOutgoingSco:Landroid/bluetooth/ScoSocket;

.field private mPendingSco:Z

.field private mPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoteBrsf:I

.field private mScoGain:I

.field private mServiceConnectionEstablished:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUserWantsAudio:Z

.field private mWaitingForCallStart:Z

.field private mWaitingForVoiceRecognition:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .parameter "context"
    .parameter "cm"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    .line 104
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 105
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 106
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 118
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 119
    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 123
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 131
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 132
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 139
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 1003
    new-instance v2, Lcom/android/phone/BluetoothHandsfree$1;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$1;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    .line 173
    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 174
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    .line 175
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 176
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_3

    move v1, v5

    .line 177
    .local v1, bluetoothCapable:Z
    :goto_0
    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 178
    new-instance v2, Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 179
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    .line 180
    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 181
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 183
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    .line 184
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "BT HS/HF:StartCall"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 186
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 187
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "BT HS/HF:VoiceRecognition"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 189
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 191
    const/16 v2, 0x63

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 196
    sget-object v2, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 197
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    .line 198
    sget-object v2, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadset;->isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 205
    :cond_1
    new-instance v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {v2, p0, v6}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    .line 206
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 207
    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/phone/BluetoothAtPhonebook;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    .line 208
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    .line 209
    invoke-virtual {p0, v4}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 211
    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 215
    :cond_2
    return-void

    .end local v1           #bluetoothCapable:Z
    :cond_3
    move v1, v4

    .line 176
    goto/16 :goto_0
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->callStarted()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/phone/BluetoothHandsfree;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/android/phone/BluetoothHandsfree;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide p1
.end method

.method static synthetic access$3000(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->redial()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/phone/BluetoothHandsfree;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->getSpeedDialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->memoryDial(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->gsmGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectVoiceRecognition()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return p1
.end method

.method private allowAudioAnytime()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2405
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "debug.bt.hfp.audio_anytime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "state"
    .parameter "device"

    .prologue
    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastAudioStateIntent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1099
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1101
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1102
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1103
    return-void
.end method

.method private declared-synchronized callStarted()V
    .locals 1

    .prologue
    .line 2329
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    if-eqz v0, :cond_0

    .line 2330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 2331
    const-string v0, "OK"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2332
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2336
    :cond_0
    monitor-exit p0

    return-void

    .line 2329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 11
    .parameter "index"
    .parameter "c"

    .prologue
    .line 1508
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1509
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v9, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 1511
    .local v1, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v9, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    .line 1514
    .local v5, prevCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v9, :cond_2

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v9, :cond_2

    .line 1518
    const/4 v7, 0x0

    .line 1552
    .local v7, state:I
    :goto_0
    const/4 v3, 0x0

    .line 1553
    .local v3, mpty:I
    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v9, :cond_6

    .line 1554
    const/4 v3, 0x1

    .line 1559
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    move v2, v9

    .line 1561
    .local v2, direction:I
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1562
    .local v4, number:Ljava/lang/String;
    const/4 v8, -0x1

    .line 1563
    .local v8, type:I
    if-eqz v4, :cond_0

    .line 1564
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v8

    .line 1567
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CLCC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",0,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1568
    .local v6, result:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1569
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    move-object v9, v6

    .line 1571
    .end local v2           #direction:I
    .end local v3           #mpty:I
    .end local v4           #number:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #state:I
    .end local v8           #type:I
    :goto_3
    return-object v9

    .line 1520
    :cond_2
    sget-object v9, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1548
    :pswitch_0
    const/4 v9, 0x0

    goto :goto_3

    .line 1526
    :pswitch_1
    if-nez p1, :cond_4

    .line 1527
    iget-boolean v9, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    move v7, v9

    .restart local v7       #state:I
    :goto_4
    goto/16 :goto_0

    .end local v7           #state:I
    :cond_3
    const/4 v9, 0x0

    move v7, v9

    goto :goto_4

    .line 1529
    :cond_4
    iget-boolean v9, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    move v7, v9

    .line 1531
    .restart local v7       #state:I
    :goto_5
    goto/16 :goto_0

    .line 1529
    .end local v7           #state:I
    :cond_5
    const/4 v9, 0x1

    move v7, v9

    goto :goto_5

    .line 1533
    :pswitch_2
    const/4 v7, 0x1

    .line 1534
    .restart local v7       #state:I
    goto/16 :goto_0

    .line 1536
    .end local v7           #state:I
    :pswitch_3
    const/4 v7, 0x2

    .line 1537
    .restart local v7       #state:I
    goto/16 :goto_0

    .line 1539
    .end local v7           #state:I
    :pswitch_4
    const/4 v7, 0x3

    .line 1540
    .restart local v7       #state:I
    goto/16 :goto_0

    .line 1542
    .end local v7           #state:I
    :pswitch_5
    const/4 v7, 0x4

    .line 1543
    .restart local v7       #state:I
    goto/16 :goto_0

    .line 1545
    .end local v7           #state:I
    :pswitch_6
    const/4 v7, 0x5

    .line 1546
    .restart local v7       #state:I
    goto/16 :goto_0

    .line 1556
    .restart local v3       #mpty:I
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1559
    :cond_7
    const/4 v9, 0x0

    move v2, v9

    goto/16 :goto_2

    .line 1520
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1453
    monitor-enter p0

    const/4 v7, 0x2

    :try_start_0
    new-array v0, v7, [Lcom/android/internal/telephony/Connection;

    .line 1454
    .local v0, clccConnections:[Lcom/android/internal/telephony/Connection;
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1455
    .local v2, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1457
    .local v5, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 1460
    .local v6, ringingCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_3

    .line 1461
    const-string v7, "Filling clccConnections[0] for INCOMING state"

    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1462
    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1485
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_6

    .line 1487
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 1494
    :cond_1
    :goto_1
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1495
    .local v4, result:Landroid/bluetooth/AtCommandResult;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_7

    aget-object v7, v0, v3

    if-eqz v7, :cond_7

    .line 1496
    aget-object v7, v0, v3

    invoke-direct {p0, v3, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    .line 1497
    .local v1, clccEntry:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1498
    invoke-virtual {v4, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1495
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1463
    .end local v1           #clccEntry:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #result:Landroid/bluetooth/AtCommandResult;
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1465
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1466
    const-string v7, "Filling clccConnections[0] & [1] for CALL WAITING state"

    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1467
    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1468
    const/4 v7, 0x1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1453
    .end local v0           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v2           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v5           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v6           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1470
    .restart local v0       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v2       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v5       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v6       #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v8, :cond_5

    .line 1472
    const-string v7, "Filling clccConnections[0] with ForgroundCall latest connection"

    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1473
    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    goto :goto_0

    .line 1477
    :cond_5
    const-string v7, "Filling clccConnections[0] & [1] with ForgroundCall connections"

    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1478
    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1479
    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    goto :goto_0

    .line 1488
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_1

    .line 1490
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1502
    .restart local v3       #i:I
    .restart local v4       #result:Landroid/bluetooth/AtCommandResult;
    :cond_7
    monitor-exit p0

    return-object v4
.end method

.method private configAudioParameters()V
    .locals 4

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 298
    const-string v0, "<unknown>"

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt_headset_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bt_headset_nrec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 12
    .parameter "index"
    .parameter "c"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, ","

    .line 1404
    sget-object v7, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1424
    :pswitch_0
    const/4 v7, 0x0

    .line 1445
    :goto_0
    return-object v7

    .line 1406
    :pswitch_1
    const/4 v5, 0x0

    .line 1427
    .local v5, state:I
    :goto_1
    const/4 v2, 0x0

    .line 1428
    .local v2, mpty:I
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1429
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 1430
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v10

    .line 1433
    :cond_0
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v10

    .line 1435
    .local v1, direction:I
    :goto_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1436
    .local v3, number:Ljava/lang/String;
    const/4 v6, -0x1

    .line 1437
    .local v6, type:I
    if-eqz v3, :cond_1

    .line 1438
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    .line 1441
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CLCC: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",0,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1442
    .local v4, result:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1443
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    move-object v7, v4

    .line 1445
    goto :goto_0

    .line 1409
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v1           #direction:I
    .end local v2           #mpty:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #state:I
    .end local v6           #type:I
    :pswitch_2
    const/4 v5, 0x1

    .line 1410
    .restart local v5       #state:I
    goto :goto_1

    .line 1412
    .end local v5           #state:I
    :pswitch_3
    const/4 v5, 0x2

    .line 1413
    .restart local v5       #state:I
    goto :goto_1

    .line 1415
    .end local v5           #state:I
    :pswitch_4
    const/4 v5, 0x3

    .line 1416
    .restart local v5       #state:I
    goto :goto_1

    .line 1418
    .end local v5           #state:I
    :pswitch_5
    const/4 v5, 0x4

    .line 1419
    .restart local v5       #state:I
    goto :goto_1

    .line 1421
    .end local v5           #state:I
    :pswitch_6
    const/4 v5, 0x5

    .line 1422
    .restart local v5       #state:I
    goto/16 :goto_1

    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #mpty:I
    :cond_3
    move v2, v9

    .line 1430
    goto :goto_2

    :cond_4
    move v1, v9

    .line 1433
    goto :goto_3

    .line 1404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private createScoSocket()Landroid/bluetooth/ScoSocket;
    .locals 6

    .prologue
    .line 1094
    new-instance v0, Landroid/bluetooth/ScoSocket;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/ScoSocket;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;III)V

    return-object v0
.end method

.method private declared-synchronized expectCallStart()V
    .locals 4

    .prologue
    .line 2320
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 2321
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2322
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2323
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2324
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2326
    :cond_0
    monitor-exit p0

    return-void

    .line 2320
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized expectVoiceRecognition()V
    .locals 4

    .prologue
    .line 2362
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 2363
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2364
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2365
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2366
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2368
    :cond_0
    monitor-exit p0

    return-void

    .line 2362
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getSpeedDialNumber(I)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v6, "number"

    .line 2341
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "key_number"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "number"

    aput-object v6, v2, v0

    const/4 v0, 0x2

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "photo_id"

    aput-object v1, v2, v0

    .line 2348
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2349
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_number="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2350
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2351
    const-string v1, "number"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2352
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 2355
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v4

    goto :goto_0
.end method

.method private declared-synchronized gsmGetClccResult()Landroid/bluetooth/AtCommandResult;
    .locals 24

    .prologue
    .line 1324
    monitor-enter p0

    const/16 v22, 0x6

    :try_start_0
    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/internal/telephony/Connection;

    move-object v5, v0

    .line 1325
    .local v5, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    .line 1326
    .local v17, newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 1328
    .local v8, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 1329
    .local v12, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1330
    .local v3, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    .line 1332
    .local v19, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1333
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1335
    :cond_0
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1336
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1338
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1339
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1343
    :cond_2
    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Z

    move-object v7, v0

    .line 1344
    .local v7, clccUsed:[Z
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    const/16 v22, 0x6

    move v0, v14

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    aget-boolean v22, v22, v14

    aput-boolean v22, v7, v14

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-boolean v23, v22, v14

    .line 1344
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1348
    :cond_3
    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 1349
    .local v4, c:Lcom/android/internal/telephony/Connection;
    const/4 v13, 0x0

    .line 1350
    .local v13, found:Z
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v20

    .line 1351
    .local v20, timestamp:J
    const/4 v14, 0x0

    :goto_2
    const/16 v22, 0x6

    move v0, v14

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 1352
    aget-boolean v22, v7, v14

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v22, v0

    aget-wide v22, v22, v14

    cmp-long v22, v20, v22

    if-nez v22, :cond_6

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aput-boolean v23, v22, v14

    .line 1354
    const/4 v13, 0x1

    .line 1355
    aput-object v4, v5, v14

    .line 1359
    :cond_5
    if-nez v13, :cond_4

    .line 1360
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1324
    .end local v3           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v4           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v7           #clccUsed:[Z
    .end local v8           #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v12           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v13           #found:Z
    .end local v14           #i:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v19           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v20           #timestamp:J
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 1351
    .restart local v3       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v4       #c:Lcom/android/internal/telephony/Connection;
    .restart local v5       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v7       #clccUsed:[Z
    .restart local v8       #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v12       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v13       #found:Z
    .restart local v14       #i:I
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v17       #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v19       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v20       #timestamp:J
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1381
    .end local v3           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v4           #c:Lcom/android/internal/telephony/Connection;
    .end local v13           #found:Z
    .end local v20           #timestamp:J
    .local v9, earliestConnection:Lcom/android/internal/telephony/Connection;
    .local v10, earliestTimestamp:J
    .local v16, j:I
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aput-boolean v23, v22, v14

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v22, v0

    aput-wide v10, v22, v14

    .line 1383
    aput-object v9, v5, v14

    .line 1384
    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1365
    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v10           #earliestTimestamp:J
    .end local v16           #j:I
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_b

    .line 1367
    const/4 v14, 0x0

    .line 1368
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    aget-boolean v22, v22, v14

    if-eqz v22, :cond_9

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1370
    :cond_9
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v10

    .line 1371
    .restart local v10       #earliestTimestamp:J
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 1372
    .restart local v9       #earliestConnection:Lcom/android/internal/telephony/Connection;
    const/16 v16, 0x0

    .restart local v16       #j:I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v22

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 1373
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v20

    .line 1374
    .restart local v20       #timestamp:J
    cmp-long v22, v20, v10

    if-gez v22, :cond_a

    .line 1375
    move-wide/from16 v10, v20

    .line 1376
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 1372
    .restart local v9       #earliestConnection:Lcom/android/internal/telephony/Connection;
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1388
    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v10           #earliestTimestamp:J
    .end local v16           #j:I
    .end local v20           #timestamp:J
    :cond_b
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1389
    .local v18, result:Landroid/bluetooth/AtCommandResult;
    const/4 v14, 0x0

    :goto_5
    move-object v0, v5

    array-length v0, v0

    move/from16 v22, v0

    move v0, v14

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    aget-boolean v22, v22, v14

    if-eqz v22, :cond_c

    .line 1391
    aget-object v22, v5, v14

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothHandsfree;->connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v6

    .line 1392
    .local v6, clccEntry:Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 1393
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    .end local v6           #clccEntry:Ljava/lang/String;
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1398
    :cond_d
    monitor-exit p0

    return-object v18
.end method

.method private inDebug()Z
    .locals 2

    .prologue
    .line 2401
    const-string v0, "debug.bt.hfp"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private initializeHandsfreeAtParser()V
    .locals 4

    .prologue
    .line 1631
    const-string v0, "Registering Handsfree AT commands"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1632
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 1633
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1636
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$3;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$3;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 1645
    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$4;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$4;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 1711
    const-string v2, "+CHUP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$5;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$5;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1727
    const-string v2, "+BRSF"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$6;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$6;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1756
    const-string v2, "+CCWA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$7;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$7;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1785
    const-string v2, "+CMER"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$8;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$8;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1829
    const-string v2, "+CMEE"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$9;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$9;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1863
    const-string v2, "+BLDN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$10;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$10;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1871
    const-string v2, "+CIND"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$11;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$11;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1883
    const-string v2, "+CSQ"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$12;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$12;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1891
    const-string v2, "+CREG"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$13;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$13;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1900
    const-string v2, "+VTS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$14;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$14;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1932
    const-string v2, "+CLCC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$15;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$15;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1947
    const-string v2, "+CHLD"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$16;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$16;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2057
    const-string v2, "+COPS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$17;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$17;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2094
    const-string v2, "+CPIN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$18;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$18;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2103
    const-string v2, "+BTRH"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$19;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$19;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2119
    const-string v2, "+CIMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$20;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$20;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2133
    const-string v2, "+CLIP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$21;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$21;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2156
    const-string v2, "+CGSN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$22;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$22;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2166
    const-string v2, "+CGMM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$23;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$23;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2180
    const-string v2, "+CGMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$24;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$24;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2194
    const-string v2, "+NREC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$25;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$25;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2209
    const-string v2, "+BVRA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$26;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$26;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2240
    const-string v2, "+CNUM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$27;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$27;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2253
    const-string v1, "+VGM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$28;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$28;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2263
    const-string v1, "+VGS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$29;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$29;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2279
    const-string v1, "+CPAS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$30;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$30;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2297
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1, v0}, Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V

    .line 2298
    return-void
.end method

.method private initializeHeadsetAtParser()V
    .locals 3

    .prologue
    .line 1578
    const-string v1, "Registering Headset AT commands"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1579
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 1582
    .local v0, parser:Landroid/bluetooth/AtParser;
    const-string v1, "+CKPD"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$2;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$2;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1625
    return-void
.end method

.method private isA2dpMultiProfile()Z
    .locals 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIncallAudio()Z
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 270
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2546
    const-string v0, "BT HS/HF"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    return-void
.end method

.method private memoryDial(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 6
    .parameter "number"

    .prologue
    const/4 v5, 0x2

    .line 1291
    if-nez p1, :cond_0

    .line 1294
    const-string v2, "Bluetooth memory dial requested (ATD>nnn...), but no number stored for the memory location given by the HF. Ignoring"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1296
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1315
    :goto_0
    return-object v2

    .line 1300
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1301
    .local v0, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1302
    const-string v2, "Bluetooth memory dial requested (+ATD>nnn...) already. Ignoring"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1303
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1305
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1307
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1308
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1314
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 1315
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method private redial()Landroid/bluetooth/AtCommandResult;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 1257
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothAtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object v3

    .line 1258
    .local v3, number:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1261
    const-string v4, "Bluetooth redial requested (+BLDN), but no previous outgoing calls found. Ignoring"

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1264
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1265
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1267
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1286
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    return-object v4

    .line 1270
    :cond_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1271
    .local v0, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1272
    const-string v4, "Bluetooth redial requested (+BLDN) already. Ignoring"

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1273
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1276
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1278
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1279
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1285
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 1286
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method private sendURC(Ljava/lang/String;)V
    .locals 1
    .parameter "urc"

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 1253
    :cond_0
    return-void
.end method

.method private startDebug()V
    .locals 2

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-nez v0, :cond_0

    .line 2411
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothHandsfree$DebugThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 2412
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->start()V

    .line 2414
    :cond_0
    return-void
.end method

.method private stopDebug()V
    .locals 1

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-eqz v0, :cond_0

    .line 2418
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->interrupt()V

    .line 2419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 2421
    :cond_0
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 161
    packed-switch p0, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 165
    :pswitch_1
    const-string v0, "headset"

    goto :goto_0

    .line 167
    :pswitch_2
    const-string v0, "handsfree"

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized audioOff()V
    .locals 3

    .prologue
    .line 1202
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioOff(): mPendingSco: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConnectedSco: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOutgoingSco: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mA2dpState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mA2dpSuspended: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIncomingSco:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1209
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v1, :cond_1

    .line 1210
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    const-string v1, "resuming A2DP stream after disconnecting SCO"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1212
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1214
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 1217
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 1219
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_3

    .line 1220
    const/4 v0, 0x0

    .line 1221
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v1, :cond_2

    .line 1222
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1224
    :cond_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    .line 1225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    .line 1226
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1227
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 1229
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_4

    .line 1230
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    .line 1231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    :cond_4
    monitor-exit p0

    return-void

    .line 1202
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized audioOn()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1117
    monitor-enter p0

    :try_start_0
    const-string v1, "audioOn()"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1119
    const-string v1, "audioOn(): headset is not connected!"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 1178
    :goto_0
    monitor-exit p0

    return v1

    .line 1122
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    if-nez v1, :cond_1

    .line 1123
    const-string v1, "audioOn(): service connection not yet established!"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    move v1, v3

    .line 1124
    goto :goto_0

    .line 1127
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_2

    .line 1128
    const-string v1, "audioOn(): audio is already connected"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    move v1, v4

    .line 1129
    goto :goto_0

    .line 1132
    :cond_2
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    if-nez v1, :cond_3

    .line 1133
    const-string v1, "audioOn(): user requested no audio, ignoring"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    move v1, v3

    .line 1134
    goto :goto_0

    .line 1137
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_4

    .line 1138
    const-string v1, "audioOn(): outgoing SCO already in progress"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    move v1, v4

    .line 1139
    goto :goto_0

    .line 1143
    :cond_4
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->getState()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 1144
    const-string v1, "audioOn(): incoming SCO already connected"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    move v1, v4

    .line 1145
    goto :goto_0

    .line 1149
    :cond_5
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    if-eqz v1, :cond_6

    .line 1150
    const-string v1, "audioOn(): SCO already pending"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    move v1, v4

    .line 1151
    goto :goto_0

    .line 1154
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 1155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 1156
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    if-ne v1, v5, :cond_7

    .line 1157
    const-string v1, "suspending A2DP stream for SCO"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1158
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 1159
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v1, :cond_9

    .line 1160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 1161
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1162
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1168
    .end local v0           #msg:Landroid/os/Message;
    :cond_7
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    if-nez v1, :cond_8

    .line 1169
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    .line 1170
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/ScoSocket;->connect(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    :cond_8
    :goto_2
    move v1, v4

    .line 1178
    goto/16 :goto_0

    .line 1164
    :cond_9
    const-string v1, "BT HS/HF"

    const-string v2, "Could not suspend A2DP stream for SCO, going ahead with SCO"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1117
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1174
    :cond_a
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdmaSetSecondCallState: Setting mCdmaIsSecondCallActive to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2542
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 2543
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 1

    .prologue
    .line 2536
    const-string v0, "cdmaSetSecondCallState: Toggling mCdmaIsSecondCallActive"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2537
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 2538
    return-void

    .line 2537
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized connectHeadset(Landroid/bluetooth/HeadsetBase;I)V
    .locals 2
    .parameter "headset"
    .parameter "headsetType"

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 247
    iput p2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 248
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHeadsetAtParser()V

    .line 253
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->startEventThread()V

    .line 254
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->configAudioParameters()V

    .line 256
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->startDebug()V

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_1
    monitor-exit p0

    return-void

    .line 251
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized disconnectHeadset()V
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 277
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->stopDebug()V

    .line 278
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isAudioOn()Z
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeadsetConnected()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method declared-synchronized onBluetoothDisabled()V
    .locals 1

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 232
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->close()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBluetoothEnabled()V
    .locals 1

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    .line 226
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->accept()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reportCmeError(I)Landroid/bluetooth/AtCommandResult;
    .locals 3
    .parameter

    .prologue
    .line 2308
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    if-eqz v0, :cond_0

    .line 2309
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CME ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2313
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method declared-synchronized resetAtState()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 282
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 284
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    .line 285
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 286
    const/4 v1, 0x6

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    .line 287
    const/4 v1, 0x6

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 292
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothAtPhonebook;->resetAtState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 282
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendScoGainUpdate(I)V
    .locals 2
    .parameter

    .prologue
    .line 2301
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 2302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+VGS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2303
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 2305
    :cond_0
    return-void
.end method

.method declared-synchronized startVoiceRecognition()Z
    .locals 2

    .prologue
    .line 2371
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v0, :cond_1

    .line 2373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 2374
    const-string v0, "OK"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2379
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v0

    .line 2380
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2381
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2383
    :cond_0
    monitor-exit p0

    return v0

    .line 2377
    :cond_1
    :try_start_1
    const-string v0, "+BVRA: 1"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopVoiceRecognition()Z
    .locals 2

    .prologue
    .line 2387
    monitor-enter p0

    :try_start_0
    const-string v0, "+BVRA: 0"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2392
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2393
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 2394
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2397
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 1106
    const-string v0, "BT HS/HF"

    const-string v1, "updateBtHandsfreeAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$3900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 1109
    return-void
.end method

.method declared-synchronized userWantsAudioOff()V
    .locals 1

    .prologue
    .line 1194
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 1195
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    monitor-exit p0

    return-void

    .line 1194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized userWantsAudioOn()V
    .locals 1

    .prologue
    .line 1186
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 1187
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    monitor-exit p0

    return-void

    .line 1186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
