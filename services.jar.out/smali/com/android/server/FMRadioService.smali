.class public Lcom/android/server/FMRadioService;
.super Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMRadioService$ScanThread;,
        Lcom/android/server/FMRadioService$ListenerRecord;
    }
.end annotation


# static fields
.field private static final ACTION_MUSIC_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final APP_NAME:Ljava/lang/String; = "com.sec.android.app.fm"

.field private static final BAND_76000_108000_kHz:I = 0x2

.field private static final BAND_76000_90000_kHz:I = 0x3

.field private static final BAND_87500_108000_kHz:I = 0x1

.field private static final CHAN_SPACING_100_kHz:I = 0xa

.field private static final CHAN_SPACING_200_kHz:I = 0x14

.field private static final CHAN_SPACING_50_kHz:I = 0x5

.field private static final CODE_SCAN_PROGRESS:I = 0x1

.field public static final DEBUG:Z = true

.field static final EVENT_AF_RECEIVED:I = 0xe

.field static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field static final EVENT_RDS_EVENT:I = 0xa

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field public static final OFF_TV_OUT:I = 0xa

.field public static final PAUSED:I = 0xb

.field static final VOLUME_FADEIN:I = 0xc8

.field static final VOLUME_FADEIN_DELAYTIME:I = 0x64


# instance fields
.field private mAFEnable:Z

.field private mAirPlaneEnabled:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBand:I

.field private mButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentResumeVol:J

.field final mHandler:Landroid/os/Handler;

.field private mIsBatteryLow:Z

.field private mIsHeadsetPlugged:Z

.field private mIsMute:Z

.field private mIsOn:Z

.field private mIsSpeakerOn:Z

.field private mIsTestMode:Z

.field private mIsTvOutPlugged:Z

.field private mIsphoneCall:Z

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/server/FMRadioService$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMusicCommandRec:Landroid/content/BroadcastReceiver;

.field private mNeedResumeToFreq:J

.field private mPhoneAudioResetListener:Landroid/content/BroadcastReceiver;

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPlayerNative:Lcom/android/server/FMPlayerNative;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRDSEnable:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeVol:J

.field private mScanChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFreq:J

.field private mScanProgress:Z

.field private mScanVolume:I

.field private final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver1:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;-><init>()V

    iput v5, p0, Lcom/android/server/FMRadioService;->mBand:I

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    const-wide/16 v2, -0x2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    new-instance v2, Lcom/android/server/FMRadioService$1;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$1;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$2;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$2;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$3;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$3;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$4;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$4;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$5;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$5;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v2, Lcom/android/server/FMRadioService$6;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$6;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPhoneAudioResetListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$7;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$7;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/FMRadioService$8;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$8;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/server/FMRadioService$9;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$9;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$10;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$10;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$11;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$11;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/FMPlayerNative;

    invoke-direct {v2, p0}, Lcom/android/server/FMPlayerNative;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "FMRadio Service"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, intentFilterVol:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAirPlaneEnabled flag :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSystemListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerTelephonyListener()V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/FMRadioService;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/FMRadioService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/server/FMRadioService;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/FMRadioService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/FMRadioService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->queueUpdate(IJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/FMRadioService;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/server/FMRadioService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSpeakerOn:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsSpeakerOn:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mBand:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/FMRadioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/FMRadioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/FMRadioService;ZIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/FMRadioService;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/server/FMRadioService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide p1
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "Lock is held"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkForWakeLockRelease()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-nez v0, :cond_0

    const-string v0, "AF and RDS is off. release the wake lock"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    :cond_0
    return-void
.end method

.method private convertToPrimitives([Ljava/lang/Long;)[J
    .locals 4
    .parameter "longObArray"

    .prologue
    if-eqz p1, :cond_1

    array-length v2, p1

    new-array v1, v2, [J

    .local v1, longArray:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v1

    .end local v0           #i:I
    .end local v1           #longArray:[J
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    const-string v0, "FMRadioService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized offInternal(ZIZ)Z
    .locals 5
    .parameter "isModeToSet"
    .parameter "reasonCode"
    .parameter "needToRemoveFocusListener"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    const-string v1, "Setting mode to NORMAL"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNative;->off()V

    const-string v1, "off returned from native"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterMusicCommandRec()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    const/4 v1, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v1, v4

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v1, "Not Setting mode to NORMAL"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    move v1, v3

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private queueUpdate(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delay"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queueUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const-string v0, "queueUpdate ## VOLUME_FADEIN"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private registerBatteryListener()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "registering low battery listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerMusicCommandRec()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->sendStopMusicCommandBroadcast()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "music command reciever registered"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    const-string v1, "AudioFocusListener registered"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerSystemListener()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentSystemFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentSystemFilter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .restart local v0       #intentSystemFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerTelephonyListener()V
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, id:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.phone.COMPLETE_AUDIO_RESET_AFTER_CALL_END"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v2, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPhoneAudioResetListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v3, "registering telephony listener"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v0, "Lock is released"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    monitor-enter v3

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    .local v2, record:Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v4, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/FMRadioService$ListenerRecord;

    .local v0, delRecord:Lcom/android/server/FMRadioService$ListenerRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadioService] deleted Listener :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_0

    .end local v0           #delRecord:Lcom/android/server/FMRadioService$ListenerRecord;
    .end local v2           #record:Lcom/android/server/FMRadioService$ListenerRecord;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #record:Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #record:Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private sendStopMusicCommandBroadcast()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "com.sec.android.app.fm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "music command stop sent .."

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterBatteryListener()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "unregistering low battery listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterMusicCommandRec()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "music command reciever un-registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterTelephonyListener()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, id:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneAudioResetListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v2, "unregistering telephony listener"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private unregisterSystemListener()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateBatteryLowFlag()V
    .locals 5

    .prologue
    const-string v3, "battery"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/BatteryService;

    .local v1, betteryService:Lcom/android/server/BatteryService;
    invoke-virtual {v1}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    .local v0, battLevel:I
    const/16 v2, 0xa

    .local v2, mLowBatteryWarningLevel:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery level :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = Warning level :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = isPowered :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-gt v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    const-string v3, "Battery is low"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    const-string v3, "Battery is ok"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAFSwitching()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelAFSwitching()V

    return-void
.end method

.method public cancelScan()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public cancelSeek()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    return-void
.end method

.method public disableAF()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableAF()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    return-void
.end method

.method public disableRDS()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableRDS()V

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    return-void
.end method

.method public enableAF()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "AF is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableAF()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_0
.end method

.method public enableRDS()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "RDS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableRDS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->finalize()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterTelephonyListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterSystemListener()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCnt_th()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCnt_th()I

    move-result v0

    return v0
.end method

.method public getCurrentChannel()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastScanResult()[J
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .local v0, arryL:[Ljava/lang/Long;
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v1

    return-object v1
.end method

.method public getMaxVolume()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getMaxVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRSSI_th()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getRSSI_th()I

    move-result v0

    return v0
.end method

.method public getSNR_th()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSNR_th()I

    move-result v0

    return v0
.end method

.method public getVolume()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAFEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    return v0
.end method

.method public isAirPlaneMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method public isBatteryLow()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->updateBatteryLowFlag()V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return v0
.end method

.method public isBusy()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method public isRDSEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    return v0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method public isTvOutPlugged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method public mute(Z)V
    .locals 1
    .parameter "value"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOn()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOff()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    goto :goto_0
.end method

.method public notifyEvent(ILjava/lang/Object;)V
    .locals 17
    .parameter "type"
    .parameter "data"

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/FMRadioService;->mIsOn:Z

    move v11, v0

    if-eqz v11, :cond_0

    const/4 v11, 0x7

    move/from16 v0, p1

    move v1, v11

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    move-object v11, v0

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    const-string v11, "AudioMode set the MODE_FM_RADIO"

    invoke-static {v11}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v11, v0

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v11, v0

    monitor-enter v11

    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Total listener:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v10

    .local v10, size:I
    const/4 v12, 0x1

    sub-int v7, v10, v12

    .local v7, i:I
    :goto_1
    if-ltz v7, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Notifying listener:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p1, :pswitch_data_0

    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :pswitch_0
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_POWER_ON to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v12

    move-object v3, v12

    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v12, "FMRadioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "we loose "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " listener--ignore it :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v14, v0

    invoke-virtual {v14, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v14, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remove done go for next i\'s value:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #i:I
    .end local v10           #size:I
    :catchall_0
    move-exception v12

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .restart local v7       #i:I
    .restart local v10       #size:I
    :pswitch_1
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_POWER_OFF to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .local v9, reasonCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12, v9}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onOff(I)V

    goto/16 :goto_2

    .end local v9           #reasonCode:I
    :pswitch_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .local v4, freq:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_CHANNEL_FOUND to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : with freq:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12, v4, v5}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onChannelFound(J)V

    goto/16 :goto_2

    .end local v4           #freq:J
    :pswitch_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_SCAN_STARTED to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanStarted()V

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v2, v0

    check-cast v2, [Ljava/lang/Long;

    .local v2, Ifreq:[Ljava/lang/Long;
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v6

    .local v6, freqArry:[J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_SCAN_STOPPED to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : with data array:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #Ifreq:[Ljava/lang/Long;
    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12, v6}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanStopped([J)V

    goto/16 :goto_2

    .end local v6           #freqArry:[J
    :pswitch_5
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v2, v0

    check-cast v2, [Ljava/lang/Long;

    .restart local v2       #Ifreq:[Ljava/lang/Long;
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v6

    .restart local v6       #freqArry:[J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_SCAN_FINISHED to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : with data array:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #Ifreq:[Ljava/lang/Long;
    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12, v6}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanFinished([J)V

    goto/16 :goto_2

    .end local v6           #freqArry:[J
    :pswitch_6
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .restart local v4       #freq:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_TUNE to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : with data array:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12, v4, v5}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onTune(J)V

    goto/16 :goto_2

    .end local v4           #freq:J
    :pswitch_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_EAR_PHONE_CONNECT to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->earPhoneConnected()V

    goto/16 :goto_2

    :pswitch_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_EAR_PHONE_DISCONNECT to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : ->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->earPhoneDisconnected()V

    goto/16 :goto_2

    :pswitch_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_RDS_EVENT to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : ->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$RDSData;

    move-object v8, v0

    .local v8, rdsData:Lcom/android/server/FMPlayerNative$RDSData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    iget-wide v13, v8, Lcom/android/server/FMPlayerNative$RDSData;->mFreq:J

    iget-object v15, v8, Lcom/android/server/FMPlayerNative$RDSData;->mChannelName:Ljava/lang/String;

    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/FMPlayerNative$RDSData;->mRadioText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v12 .. v16}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v8           #rdsData:Lcom/android/server/FMPlayerNative$RDSData;
    :pswitch_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_RDS_ENABLED to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : ->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSEnabled()V

    goto/16 :goto_2

    :pswitch_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_RDS_DISABLED to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : ->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSDisabled()V

    goto/16 :goto_2

    :pswitch_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_AF_STARTED to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : ->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onAFStarted()V

    goto/16 :goto_2

    :pswitch_d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifying :EVENT_AF_RECEIVED to : listener -->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : ->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v13, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .restart local v4       #freq:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v12, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v12, v4, v5}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onAFReceived(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .end local v4           #freq:J
    :cond_3
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public off()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized on()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move v1, v5

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->updateBatteryLowFlag()V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eq v1, v6, :cond_4

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    :cond_4
    move v1, v5

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    move v1, v6

    goto :goto_0

    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    const-string v1, "on returned from native"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerMusicCommandRec()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBatteryListener()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->mute(Z)V

    move v1, v6

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v5

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v5

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized on_in_testmode()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move v1, v5

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eq v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerMusicCommandRec()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->mute(Z)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBatteryListener()V

    move v1, v6

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v5

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v5

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] (removeListener) :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    return-void
.end method

.method public scan()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    new-instance v0, Lcom/android/server/FMRadioService$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/server/FMRadioService$ScanThread;-><init>(Lcom/android/server/FMRadioService;)V

    invoke-virtual {v0}, Lcom/android/server/FMRadioService$ScanThread;->start()V

    goto :goto_0
.end method

.method public searchDown()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchDown()J

    move-result-wide v0

    return-wide v0
.end method

.method public searchUp()J
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchUp()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public seekDown()J
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNative;->seekDown()J

    move-result-wide v0

    .local v0, freq:J
    const/4 v2, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-wide v0
.end method

.method public seekUp()J
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNative;->seekUp()J

    move-result-wide v0

    .local v0, freq:J
    const/4 v2, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-wide v0
.end method

.method public setBand(I)V
    .locals 1
    .parameter "band"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setBand(I)V

    iput p1, p0, Lcom/android/server/FMRadioService;->mBand:I

    return-void
.end method

.method public setChannelSpacing(I)V
    .locals 1
    .parameter "spacing"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setChannelSpacing(I)V

    return-void
.end method

.method public setCnt_th(I)V
    .locals 1
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setCnt_th(I)V

    return-void
.end method

.method public setDEConstant(J)V
    .locals 1
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setDEConstant(J)V

    return-void
.end method

.method public setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadioService] setListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    :cond_0
    new-instance v0, Lcom/android/server/FMRadioService$ListenerRecord;

    invoke-interface {p1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/FMRadioService$ListenerRecord;-><init>(Lcom/samsung/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V

    .local v0, record:Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no of listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setRSSI_th(I)V
    .locals 1
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRSSI_th(I)V

    return-void
.end method

.method public setSNR_th(I)V
    .locals 1
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSNR_th(I)V

    return-void
.end method

.method public setSeekRSSI(J)V
    .locals 1
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekRSSI(J)V

    return-void
.end method

.method public setSeekSNR(J)V
    .locals 1
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekSNR(J)V

    return-void
.end method

.method public setStereo(Z)V
    .locals 2
    .parameter "val"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/FMPlayerNative;->setStereo(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/FMPlayerNative;->setStereo(I)V

    goto :goto_0
.end method

.method public setVolume(J)V
    .locals 2
    .parameter "val"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    goto :goto_0
.end method

.method public tune(J)V
    .locals 2
    .parameter "freq"

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->tune(J)V

    const/4 v0, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void
.end method
