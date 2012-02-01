.class Lcom/android/internal/telephony/gsm/FastDormDataStatistics;
.super Ljava/lang/Object;
.source "FastDormDataStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/FastDormDataStatistics$OemCommands;
    }
.end annotation


# static fields
.field static final DORMANCY_CONTENT_URI:Landroid/net/Uri; = null

.field static final EVENT_FORCE_DORMANCY_DONE:I = 0x3e8

.field private static final FD_PREFERENCES_NAME:Ljava/lang/String; = "fdormancy.preferences_name"

.field private static final KEY_FD_MCCMNC:Ljava/lang/String; = "fdormancy.key.mccmnc"

.field private static final KEY_FD_STATE:Ljava/lang/String; = "fdormancy.key.state"

.field static final PATH_KERNEL_WAKELOCK_TIME:Ljava/lang/String; = "/sys/devices/virtual/net/svnet0/waketime"

.field private static POLL_NETSTAT_MILLIS_DORMANCY:I

.field private static POLL_NETSTAT_MILLIS_DORMANCY_OLD:I

.field private static dormancyState:Z


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private inactivityPeriod:J

.field mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mDorm:Lcom/android/internal/telephony/gsm/FastDorm;

.field private mHandler:Landroid/os/Handler;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsScreenOn:Z

.field private mNetStatPollEnabled:Z

.field private mOperatorNumeric:Ljava/lang/String;

.field private netStatPollPeriod:J

.field netstat:Landroid/os/INetStatService;

.field private oldPollTime:J

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field private rxPkts:J

.field private txPkts:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x1388

    sput v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->POLL_NETSTAT_MILLIS_DORMANCY:I

    sput v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->POLL_NETSTAT_MILLIS_DORMANCY_OLD:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->dormancyState:Z

    const-string v0, "content://nwk_info/nwkinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->DORMANCY_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FastDormancy"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->netStatPollPeriod:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mIsScreenOn:Z

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->oldPollTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mNetStatPollEnabled:Z

    new-instance v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;-><init>(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$2;-><init>(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .parameter "dataConnectionTracker"
    .parameter "phone"

    .prologue
    const-wide/16 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "FastDormancy"

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->netStatPollPeriod:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mIsScreenOn:Z

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->oldPollTime:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mNetStatPollEnabled:Z

    new-instance v1, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;-><init>(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$2;-><init>(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v1, "netstat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetStatService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->netstat:Landroid/os/INetStatService;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->phone:Lcom/android/internal/telephony/PhoneBase;

    new-instance v1, Lcom/android/internal/telephony/gsm/FastDorm;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/gsm/FastDorm;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)Lcom/android/internal/telephony/gsm/FastDorm;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->POLL_NETSTAT_MILLIS_DORMANCY:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->POLL_NETSTAT_MILLIS_DORMANCY:I

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->POLL_NETSTAT_MILLIS_DORMANCY_OLD:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->POLL_NETSTAT_MILLIS_DORMANCY_OLD:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->changeKernelWakeLockTime()V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->dormancyState:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->forceDataDormancy()V

    return-void
.end method

.method private changeKernelWakeLockTime()V
    .locals 8

    .prologue
    const-string v7, "FastDormancy"

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v4, "/sys/devices/virtual/net/svnet0/waketime"

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v2, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v0, dos:Ljava/io/DataOutputStream;
    sget v4, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->POLL_NETSTAT_MILLIS_DORMANCY:I

    add-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .local v3, temp:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v4, "FastDormancy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kernel Wakelock Time was changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->POLL_NETSTAT_MILLIS_DORMANCY:I

    add-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #dos:Ljava/io/DataOutputStream;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #temp:Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/IOException;
    const-string v4, "FastDormancy"

    const-string v4, "Error in processed file - "

    invoke-static {v7, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private forceDataDormancy()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-string v6, "FastDormancy"

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    const-string v4, "FastDormancy"

    const-string v4, " before ======= ENTER DORMANCY ======="

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->dormancyState:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->getCapaDormancy()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "FastDormancy"

    const-string v4, "======= ENTER DORMANCY ======="

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, dos:Ljava/io/DataOutputStream;
    sput-boolean v7, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->dormancyState:Z

    const/16 v4, 0x9

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, ex:Ljava/io/IOException;
    const-string v4, "LOG_TAG"

    const-string v5, "close fail!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/io/IOException;
    const-string v4, "FastDormancy"

    const-string v4, "IOException!!!"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCapaDormancy()Z
    .locals 6

    .prologue
    const-string v5, "FastDormancy"

    const-string v4, " in getCapaDormancy()"

    const/4 v0, 0x0

    .local v0, mDormFlag:Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/FastDorm;->getDormancyFlag(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "FastDormancy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Before mDormFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in getCapaDormancy()"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .local v1, netType:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v2, "FastDormancy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After mDormFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in getCapaDormancy()"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initDormancyValues()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/String;

    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mOperatorNumeric:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/FastDorm;->init(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDorm;->close()V

    return-void
.end method

.method public initialFDTimer()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->oldPollTime:J

    return-void
.end method

.method public isDormancyPollEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mNetStatPollEnabled:Z

    return v0
.end method

.method public resetPollStats()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->rxPkts:J

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->oldPollTime:J

    return-void
.end method

.method public run()V
    .locals 20

    .prologue
    const-wide/16 v10, -0x1

    .local v10, preTxPkts:J
    const-wide/16 v8, -0x1

    .local v8, preRxPkts:J
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .local v7, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->txPkts:J

    move-wide v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->rxPkts:J

    move-wide v8, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->txPkts:J

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->rxPkts:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .local v4, curCalendar:Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .local v5, curPollTime:J
    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-gtz v16, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-lez v16, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->txPkts:J

    move-wide/from16 v16, v0

    sub-long v14, v16, v10

    .local v14, sent:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->rxPkts:J

    move-wide/from16 v16, v0

    sub-long v12, v16, v8

    .local v12, received:J
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-lez v16, :cond_4

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-lez v16, :cond_4

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .end local v12           #received:J
    .end local v14           #sent:J
    :cond_1
    :goto_0
    sget-object v16, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object v0, v7

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_8

    const/16 v16, 0x0

    sput-boolean v16, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->dormancyState:Z

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    move-wide/from16 v16, v0

    sget v18, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->POLL_NETSTAT_MILLIS_DORMANCY:I

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->forceDataDormancy()V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mNetStatPollEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->netStatPollPeriod:J

    move-wide/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->oldPollTime:J

    return-void

    .restart local v12       #received:J
    .restart local v14       #sent:J
    :cond_4
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-lez v16, :cond_5

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_5

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_0

    :cond_5
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-nez v16, :cond_6

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-lez v16, :cond_6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_0

    :cond_6
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-nez v16, :cond_7

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_7

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_0

    :cond_7
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_0

    .end local v12           #received:J
    .end local v14           #sent:J
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->oldPollTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->netStatPollPeriod:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->oldPollTime:J

    move-wide/from16 v18, v0

    sub-long v18, v5, v18

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J

    goto/16 :goto_1
.end method

.method public setDormancyPollState(Z)V
    .locals 0
    .parameter "netStatPollEnabled"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mNetStatPollEnabled:Z

    return-void
.end method

.method public startFastDorm()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->initDormancyValues()V

    return-void
.end method
