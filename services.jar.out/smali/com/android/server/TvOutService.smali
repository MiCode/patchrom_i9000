.class public Lcom/android/server/TvOutService;
.super Landroid/os/ITvOutService$Stub;
.source "TvOutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TvOutService$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEFAULT_TVSTATUS:I = 0x0

.field static final DEFAULT_TVSYSTEM:I = 0x2

.field private static HDMI_SUBTITLE_HEIGHT:I = 0x0

.field static final HDMI_SUBTITLE_MAX_HEIGHT:I = 0x130

.field static final HDMI_SUBTITLE_MAX_WIDTH:I = 0x740

.field private static HDMI_SUBTITLE_WIDTH:I = 0x0

.field public static final LOCALE_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.locale.changed"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "TvOut-Observer"

.field static final TVSTATUS_OFF:I = 0x0

.field static final TVSTATUS_ON:I = 0x1

.field static final TVSYSTEM_NTSC:I = 0x1

.field static final TVSYSTEM_PAL:I = 0x2

.field private static mIsScreenOff:Z

.field private static mIsTvWaitResume:Z

.field private static mTvCableConnected:Z

.field private static mTvSuspend:Z

.field private static sRotation:I

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private bitmap_subtitle:Landroid/graphics/Bitmap;

.field private canvas_subtile:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetNotification:Landroid/app/Notification;

.field final mLock:Ljava/lang/Object;

.field private mPlaySounds:Z

.field private mPrevFontSize:I

.field private mPrevSubtitle:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTvStatus:I

.field private mTvSystem:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private tvout:Landroid/hardware/TvOut;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/server/TvOutService;->sRotation:I

    sput-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    sput-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    sput-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sput-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const-string v2, "1"

    invoke-direct {p0}, Landroid/os/ITvOutService$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TvOutService;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/TvOutService;->mPrevFontSize:I

    new-instance v0, Lcom/android/server/TvOutService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TvOutService$2;-><init>(Lcom/android/server/TvOutService;)V

    iput-object v0, p0, Lcom/android/server/TvOutService;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "TvOut-Observer"

    const-string v1, "TVOU_DEBUG TvOutService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    const-string v0, "persist.service.mount.playsnd"

    const-string v1, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/TvOutService;->mPlaySounds:Z

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->init()V

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    sget-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/server/TvOutService$1;

    invoke-direct {v1, p0}, Lcom/android/server/TvOutService$1;-><init>(Lcom/android/server/TvOutService;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->sRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TvOutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/TvOutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/TvOutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/TvOutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/TvOutService;->updatetvsystem()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/TvOutService;->updatetvstatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/TvOutService;->tvOutSetImageString()V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    return p0
.end method

.method public static onRotationChanged(I)V
    .locals 7
    .parameter "rotation"

    .prologue
    const-string v6, "TvOut-Observer"

    const-string v0, "OnRotationChanged"

    .local v0, CCS_TAG:Ljava/lang/String;
    const-string v3, "tvoutservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ITvOutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;

    move-result-object v2

    .local v2, tvoutService:Landroid/os/ITvOutService;
    if-nez v2, :cond_1

    const-string v3, "TvOut-Observer"

    const-string v3, " setTvoutOrientation TvOutService Not running"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v3, Lcom/android/server/TvOutService;->sRotation:I

    if-eq v3, p0, :cond_0

    sput p0, Lcom/android/server/TvOutService;->sRotation:I

    :try_start_0
    const-string v3, "TvOut-Observer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTvoutOrientation rotation =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, p0}, Landroid/os/ITvOutService;->SetOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "TvOut-Observer"

    const-string v3, "setTvoutOrientation   "

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 2
    .parameter "awake"

    .prologue
    const-string v1, "TvOut-Observer"

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TvOut-Observer"

    const-string v0, "stayAwake Accuring the lock SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TvOut-Observer"

    const-string v0, "stayAwake relesing the lock SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_2
    const-string v0, "TvOut-Observer"

    const-string v0, "stayAwake mWakeLock is null SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private textSizeForSubtitle()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, subtitletextsize:I
    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sparse-switch v1, :sswitch_data_0

    const/16 v0, 0x25

    :goto_0
    const-string v1, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textSizeForSubtitle  subtitletextsize =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :sswitch_0
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x19

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x25

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0x90 -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private tvOutSetImageString()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    const v2, 0x10403df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, text:Ljava/lang/String;
    const-string v1, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tvOutSetImageString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v0}, Landroid/hardware/TvOut;->TvOutSetImageString(Ljava/lang/String;)V

    return-void
.end method

.method private updatescreensize()V
    .locals 2

    .prologue
    const-string v0, "TvOut-Observer"

    const-string v1, "updatescreensize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatetvstatus()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "TvOut-Observer"

    const-string v2, "TvOut-Observer"

    const-string v2, "updatetvstatus"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-nez v2, :cond_2

    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatetvstatus tvstatus off  mTvCableConnected :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isSuspended()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "state"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "microphone"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : disable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "state"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "microphone"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v1, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : enable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    invoke-virtual {p0, v5}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    .end local v0           #intent1:Landroid/content/Intent;
    .end local v1           #intent2:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v2, v6, :cond_3

    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatetvstatus tvstatus on  mTvCableConnected :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v2, v6, :cond_1

    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatetvstatus enable tvout    mTvCableConnected :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent1:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "state"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "microphone"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : disable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #intent2:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "state"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "microphone"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v1, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : enable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    invoke-virtual {p0, v6}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    goto/16 :goto_0

    .end local v0           #intent1:Landroid/content/Intent;
    .end local v1           #intent2:Landroid/content/Intent;
    :cond_3
    const-string v2, "TvOut-Observer"

    const-string v2, "updatetvsystem system shuldnot come here... error in tvout status values"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updatetvsystem()V
    .locals 2

    .prologue
    const-string v0, "TvOut-Observer"

    const-string v1, "updatetvsystem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget v1, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetTvSystem(I)V

    return-void
.end method


# virtual methods
.method public CableConnected(Z)V
    .locals 4
    .parameter "Connected"

    .prologue
    const/4 v3, 0x1

    const-string v2, "TvOut-Observer"

    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne p1, v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    :goto_0
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected tvstatus off  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v3, :cond_1

    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected tvstatus on  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v3, :cond_5

    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected enable tvout    mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    goto :goto_1

    :cond_4
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected  enable tvout    mIsScreenOff :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v0, "TvOut-Observer"

    const-string v0, "updatetvsystem system shuldnot come here... error in tvout status values"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public DisableTvOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "TvOut-Observer"

    const-string v1, "DisableTvOut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->DisableTvOut()V

    invoke-direct {p0, v2}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    sput-boolean v2, Lcom/android/server/TvOutService;->mTvSuspend:Z

    sput-boolean v2, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    return-void
.end method

.method public DisableTvOutForce()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/4 v4, 0x0

    const-string v8, "h2w"

    const-string v5, "TvOut-Observer"

    const-string v2, "TvOut-Observer"

    const-string v2, "DisableTvOut"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "microphone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : disable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "state"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "microphone"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v1, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : enable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->DisableTvOut()V

    invoke-direct {p0, v4}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    sput-boolean v4, Lcom/android/server/TvOutService;->mTvSuspend:Z

    sput-boolean v4, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    return-void
.end method

.method public EnableTvOut()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v0, "TvOut-Observer"

    const-string v1, "EnableTvOut"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/TvOutService;->tvOutSetImageString()V

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    :cond_0
    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->EnableTvOut()V

    invoke-direct {p0, v2}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    :cond_1
    return-void
.end method

.method public EnableTvOutForce()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, "TvOut-Observer"

    const-string v2, "TvOut-Observer"

    const-string v2, "EnableTvOut"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "microphone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : disable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "state"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "microphone"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v1, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : enable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v3, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v2, v3}, Landroid/hardware/TvOut;->SetOrientation(I)V

    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->EnableTvOut()V

    invoke-direct {p0, v6}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    return-void
.end method

.method public SetCableStatus(Z)V
    .locals 3
    .parameter "status"

    .prologue
    const-string v0, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetCableStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    return-void
.end method

.method public SetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    const-string v0, "TvOut-Observer"

    const-string v1, "SetOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    return-void
.end method

.method public TvOutResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v2, "TvOut-Observer"

    const-string v0, "TvOut-Observer"

    const-string v0, "TvOutResume"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isTvoutCableConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "TvOut-Observer"

    const-string v0, "Call Tvout resume"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->TvOutResume(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    sput-boolean v3, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    :goto_0
    return-void

    :cond_1
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tvout.isEnabled()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTvSuspend "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvSuspend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TvOutSetImage(I)V
    .locals 2
    .parameter "paddr"

    .prologue
    const-string v0, "TvOut-Observer"

    const-string v1, "TvOutSetImage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public TvOutSuspend(Ljava/lang/String;)V
    .locals 2
    .parameter "tvText"

    .prologue
    const/4 v0, 0x0

    .local v0, tvouthdmisuspendInit:Z
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TvOutService;->TvOutSuspendAnalog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public TvOutSuspendAnalog(Ljava/lang/String;)V
    .locals 4
    .parameter "tvText"

    .prologue
    const/4 v3, 0x1

    const-string v2, "TvOut-Observer"

    const-string v0, "TvOut-Observer"

    const-string v0, "TvOutSuspend"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isTvoutCableConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v0, "TvOut-Observer"

    const-string v0, "Call Suspend"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/TvOut;->TvOutSuspend(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/server/TvOutService;->mTvSuspend:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    :goto_0
    return-void

    :cond_1
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTvSuspend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvSuspend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsTvWaitResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTvoutCableConnected()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isTvoutCableConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TvoutSubtitleIsEnable()Z
    .locals 2

    .prologue
    const-string v0, "TvOut-Observer"

    const-string v1, "isHDMISubtitleOn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->TvoutSubtitleIsEnable()Z

    move-result v0

    return v0
.end method

.method public TvoutSubtitlePostString(Ljava/lang/String;I)Z
    .locals 16
    .parameter "mSubTitleText"
    .parameter "fontsize"

    .prologue
    const-string v12, "TvOut-Observer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TvoutSubtitlePostString  string =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " fontsize : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .local v9, width:I
    const/4 v3, 0x0

    .local v3, height:I
    const/4 v10, 0x0

    .local v10, x:I
    const/4 v11, 0x0

    .local v11, y:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TvOutService;->textSizeForSubtitle()I

    move-result v8

    .local v8, textsizehdmi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TvOutService;->mPrevFontSize:I

    move v12, v0

    move v0, v12

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-direct {v6, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v6, mTvoutSubtitleText:Landroid/widget/TextView;
    const/high16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setDrawingCacheQuality(I)V

    const/16 v12, 0x11

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setGravity(I)V

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v12, v0

    const-wide v14, 0x3fe999999999999aL

    mul-double/2addr v12, v14

    double-to-float v12, v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    sget v15, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/widget/TextView;->layout(IIII)V

    const/high16 v12, -0x100

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setDrawingCacheBackgroundColor(I)V

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v6}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {v6}, Landroid/widget/TextView;->buildDrawingCache()V

    invoke-virtual {v6}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, sBitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    const-string v12, "TvOut-Observer"

    const-string v13, "TvoutHDMIPostSubtitle bitmap is null "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .local v4, linecount:I
    invoke-virtual {v6}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    .local v5, lineheight:I
    sget v12, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    mul-int v13, v4, v5

    sub-int v2, v12, v13

    .local v2, delta:I
    if-lez v2, :cond_2

    div-int/lit8 v12, v2, 0x2

    div-int/lit8 v13, v5, 0x2

    sub-int v11, v12, v13

    :cond_2
    const-string v12, "TvOut-Observer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "subttle y : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    move-object v12, v0

    const/high16 v13, -0x100

    invoke-virtual {v12, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    move-object v12, v0

    int-to-float v13, v10

    int-to-float v14, v11

    const/4 v15, 0x0

    invoke-virtual {v12, v7, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    move-object v13, v0

    const/high16 v14, -0x100

    invoke-virtual {v12, v13, v14}, Landroid/hardware/TvOut;->TvoutSubtitlePostBitmap(Landroid/graphics/Bitmap;I)Z

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TvOutService;->mPrevFontSize:I

    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method public TvoutSubtitleSetStatus(I)Z
    .locals 4
    .parameter "mSubTitleOn"

    .prologue
    const/4 v3, 0x0

    const-string v0, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TvoutSubtitleSetStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutSubtitleIsEnable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->TvoutSubtitleGetWidth()I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->TvoutSubtitleGetHeight()I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sget v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->TvoutSubtitleSetStatus(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, v3}, Landroid/hardware/TvOut;->TvoutSubtitleSetStatus(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "android.intent.action.locale.changed"

    return-object v0
.end method

.method init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v4, "TvOut-Observer"

    const-string v2, "TvOut-Observer"

    const-string v2, "TVOUT_DEBUG_VIVEK_ANALOG1"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/hardware/TvOut;

    invoke-direct {v2}, Landroid/hardware/TvOut;-><init>()V

    iput-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/TvOutService;->mHandler:Landroid/os/Handler;

    iput v5, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    new-instance v1, Lcom/android/server/TvOutService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/TvOutService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/TvOutService$SettingsObserver;-><init>(Lcom/android/server/TvOutService;Landroid/os/Handler;)V

    .local v1, settingsObserver:Lcom/android/server/TvOutService$SettingsObserver;
    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tv_out"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v1}, Lcom/android/server/TvOutService$SettingsObserver;->observe()V

    const-string v2, "TvOut-Observer"

    const-string v2, "TVOUT_DEBUG_VIVEK_ANALOG2"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.locale.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/TvOutService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-virtual {p0, v2, v3}, Lcom/android/server/TvOutService;->setWakeMode(Landroid/content/Context;I)V

    const-string v2, "TvOut-Observer"

    const-string v2, "TVOUT_DEBUG_VIVEK_ANALOG3"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    const-string v0, "TvOut-Observer"

    const-string v1, "isEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 2

    .prologue
    const-string v0, "TvOut-Observer"

    const-string v1, "isSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public isTvoutCableConnected()Z
    .locals 2

    .prologue
    const-string v0, "TvOut-Observer"

    const-string v1, "isTvoutCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isTvoutCableConnected()Z

    move-result v0

    return v0
.end method

.method public setTvoutCableConnected(I)V
    .locals 2
    .parameter "tvoutCableConnected"

    .prologue
    const-string v0, "TvOut-Observer"

    const-string v1, "setTvoutCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->setTvoutCableConnected(I)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mode"

    .prologue
    const-string v4, "TvOut-Observer"

    const/4 v1, 0x0

    .local v1, washeld:Z
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1
    const-string v2, "TvOut-Observer"

    const-string v2, "setWakeMode is called  SCREEN_ON_DEBUG"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-string v3, "TvOut-Observer"

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWakeMode setting the mode SCREEN_ON_DEBUG mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_2

    const-string v2, "TvOut-Observer"

    const-string v2, "setWakeMode mWakeLock is null SCREEN_ON_DEBUG"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_3
    return-void
.end method

.method updateTVoutOnScreenOnOff()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "TvOut-Observer"

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-ne v0, v2, :cond_1

    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTVoutOnScreenOnOff tvstatus off  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v2, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v2, :cond_0

    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTVoutOnScreenOnOff tvstatus on  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v2, :cond_0

    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected enable tvout    mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    goto :goto_0

    :cond_2
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTVoutOnScreenOnOff  enable tvout    mIsScreenOff :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
