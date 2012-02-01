.class public Lcom/samsung/sec/android/application/csc/CscUpdateService;
.super Landroid/app/Service;
.source "CscUpdateService.java"


# static fields
.field private static checkDelay:I

.field private static checkRetry:I


# instance fields
.field private final CHECK_FILE_NAME:Ljava/lang/String;

.field private final PRECONFIGED_FLAG:Ljava/lang/String;

.field private final SELECTIVE_RESET_FLAG:Ljava/lang/String;

.field private arrayIndex:I

.field private isSelectiveMode:Z

.field mHandler:Landroid/os/Handler;

.field private mHandlerPhone:Landroid/os/Handler;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mUpdatables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/sec/android/application/csc/Updatable;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->checkDelay:I

    .line 75
    const/16 v0, 0x64

    sput v0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->checkRetry:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 57
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getIDPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->CHECK_FILE_NAME:Ljava/lang/String;

    .line 58
    const-string v0, "/efs/imei/selective"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->SELECTIVE_RESET_FLAG:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->PRECONFIGED_FLAG:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->isSelectiveMode:Z

    .line 64
    iput-object v2, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mHandler:Landroid/os/Handler;

    .line 68
    iput v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->arrayIndex:I

    .line 388
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscUpdateService$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService$2;-><init>(Lcom/samsung/sec/android/application/csc/CscUpdateService;)V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mHandlerPhone:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/android/application/csc/CscUpdateService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->arrayIndex:I

    return v0
.end method

.method static synthetic access$008(Lcom/samsung/sec/android/application/csc/CscUpdateService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->arrayIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->arrayIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/android/application/csc/CscUpdateService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->setUpdated()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/sec/android/application/csc/CscUpdateService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->doUpdate()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->checkRetry:I

    return v0
.end method

.method static synthetic access$310()I
    .locals 2

    .prologue
    .line 40
    sget v0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->checkRetry:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    sput v1, Lcom/samsung/sec/android/application/csc/CscUpdateService;->checkRetry:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/sec/android/application/csc/CscUpdateService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mHandlerPhone:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->checkDelay:I

    return v0
.end method

.method private doUpdate()V
    .locals 3

    .prologue
    .line 220
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->arrayIndex:I

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mUpdatables:Ljava/util/ArrayList;

    .line 238
    new-instance v1, Lcom/samsung/sec/android/application/csc/CscBrowser;

    invoke-direct {v1, p0}, Lcom/samsung/sec/android/application/csc/CscBrowser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/sec/android/application/csc/CscBrowser;->update()V

    .line 243
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mUpdatables:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/sec/android/application/csc/CscSmsMms;

    invoke-direct {v2, p0}, Lcom/samsung/sec/android/application/csc/CscSmsMms;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mUpdatables:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/sec/android/application/csc/CscHomescreen;

    invoke-direct {v2, p0}, Lcom/samsung/sec/android/application/csc/CscHomescreen;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mUpdatables:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/sec/android/application/csc/CscConnection;

    invoke-direct {v2, p0}, Lcom/samsung/sec/android/application/csc/CscConnection;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mUpdatables:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/sec/android/application/csc/CscVoiceMail;

    invoke-direct {v2, p0}, Lcom/samsung/sec/android/application/csc/CscVoiceMail;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mUpdatables:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/sec/android/application/csc/CscNetwork;

    invoke-direct {v2, p0}, Lcom/samsung/sec/android/application/csc/CscNetwork;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mUpdatables:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/sec/android/application/csc/CscWidget;

    invoke-direct {v2, p0}, Lcom/samsung/sec/android/application/csc/CscWidget;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mUpdatables:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/sec/android/application/csc/CscContacts;

    invoke-direct {v2, p0}, Lcom/samsung/sec/android/application/csc/CscContacts;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mUpdatables:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/sec/android/application/csc/CscSettings;

    invoke-direct {v2, p0}, Lcom/samsung/sec/android/application/csc/CscSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mUpdatables:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/sec/android/application/csc/CscGPS;

    invoke-direct {v2, p0}, Lcom/samsung/sec/android/application/csc/CscGPS;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/sec/android/application/csc/CscUpdateService$1;

    invoke-direct {v1, p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService$1;-><init>(Lcom/samsung/sec/android/application/csc/CscUpdateService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 269
    .local v0, thread:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 271
    return-void
.end method

.method private isPreconfiged()Z
    .locals 4

    .prologue
    .line 184
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->PRECONFIGED_FLAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "CscUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->PRECONFIGED_FLAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exists : it has been preconfiged."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x1

    .line 190
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSelectiveReset()Z
    .locals 3

    .prologue
    .line 194
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/imei/selective"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "CscUpdateService"

    const-string v2, "/efs/imei/selective is exists : Selective Reset mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, 0x1

    .line 200
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUpdated()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    const-string v2, "csc.preferences_name"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 205
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "csc.key.already_executed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 208
    .local v1, property:Z
    return v1
.end method

.method private sendIntentForLockScreen(Ljava/lang/String;)V
    .locals 5
    .parameter "action"

    .prologue
    const-string v4, "intent for LOCK SCREEN >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    const-string v3, "CscUpdateService"

    .line 84
    const-string v1, "CscUpdateService"

    const-string v1, "intent for LOCK SCREEN >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "CscUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v1, "CscUpdateService"

    const-string v1, "intent for LOCK SCREEN >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method private setUpdated()V
    .locals 4

    .prologue
    .line 212
    const-string v2, "csc.preferences_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 213
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "csc.key.already_executed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    return-void
.end method


# virtual methods
.method public SendModemSettingIntent()V
    .locals 3

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CSC_MODEM_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MODE"

    const-string v2, "SET_MODEM_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 336
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->powerSavingOn()V

    .line 339
    const-string v1, "android.intent.action.CSC_STOPPED"

    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->sendIntentForLockScreen(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public checkAndSendModemSettingIntent()V
    .locals 4

    .prologue
    .line 314
    const-string v0, "CscUpdateService"

    const-string v1, "checkAndSendModemSettingIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v0, 0x64

    sput v0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->checkRetry:I

    .line 317
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->chekUpdateDoneCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->SendModemSettingIntent()V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mHandlerPhone:Landroid/os/Handler;

    const/16 v1, 0x7c6

    sget v2, Lcom/samsung/sec/android/application/csc/CscUpdateService;->checkDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public chekUpdateDoneCondition()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 290
    const-string v1, "CscUpdateService"

    const-string v2, "checkUpdateDoneCondition"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v1, "USER_PREFERENCES"

    invoke-virtual {p0, v1, v4}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "PREF_RINGTONE_SET"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    move v1, v4

    .line 303
    :goto_0
    return v1

    .line 298
    :cond_0
    const-string v1, "PREF_NOTIFICATION_SET"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    move v1, v4

    .line 299
    goto :goto_0

    .line 303
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 14
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 92
    const-string v1, "CscUpdateService"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v11, 0x0

    .line 95
    .local v11, mode:Ljava/lang/String;
    const/16 v8, 0x3e8

    .line 96
    .local v8, delayTime:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->isSelectiveMode:Z

    .line 98
    if-eqz p1, :cond_0

    const-string v1, "MODE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "MODE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->isPreconfiged()Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    const-string v1, "CscUpdateService"

    const-string v2, "CSC is not preconfiged yet. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->isSelectiveReset()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    const-string v1, "CscUpdateService"

    const-string v2, "CSC update Selective Reset."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->isSelectiveMode:Z

    .line 115
    const/16 v8, 0x3e8

    .line 171
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->powerSavingOff()V

    .line 173
    const-string v1, "android.intent.action.CSC_STARTED"

    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->sendIntentForLockScreen(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->doUpdate()V

    goto :goto_0

    .line 117
    :cond_4
    if-eqz v11, :cond_5

    const-string v1, "TEST"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    const-string v1, "CscUpdateService"

    const-string v2, "CSC update Test mode."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/16 v8, 0x3e8

    goto :goto_1

    .line 121
    :cond_5
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    const-string v1, "CscUpdateService"

    const-string v2, "CSC is already Updated. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    .local v0, contentresolver:Landroid/content/ContentResolver;
    new-instance v7, Ljava/io/File;

    const-string v1, "/dbdata/databases/com.android.providers.telephony"

    const-string v2, "nwk_info.db"

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v7, databaseFile:Ljava/io/File;
    const/4 v10, 0x0

    .line 127
    .local v10, mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v13, 0x0

    .line 128
    .local v13, oldversion:I
    const/high16 v12, 0x17

    .line 131
    .local v12, newversion:I
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    .line 132
    const-string v1, "CscUpdateService"

    const-string v2, "nwk_info.db doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_2
    if-nez v10, :cond_a

    .line 138
    const-string v1, "CscUpdateService"

    const-string v2, "nwk_info DB open error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v13, 0x0

    .line 143
    :goto_3
    const-string v1, "CscUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldversion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "newversion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-lt v13, v12, :cond_6

    if-nez v10, :cond_8

    .line 145
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 146
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 149
    :cond_7
    sget-object v1, Landroid/provider/Telephony$NwkInfoCarriers;->CONTENT_URI_DORMPOLICY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 154
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection;

    invoke-direct {v6, p0}, Lcom/samsung/sec/android/application/csc/CscConnection;-><init>(Landroid/content/Context;)V

    .line 155
    .local v6, cscconnection:Lcom/samsung/sec/android/application/csc/CscConnection;
    invoke-virtual {v6}, Lcom/samsung/sec/android/application/csc/CscConnection;->updateCSCFD()V

    .line 157
    .end local v6           #cscconnection:Lcom/samsung/sec/android/application/csc/CscConnection;
    :cond_8
    if-eqz v10, :cond_1

    .line 158
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 159
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 134
    :cond_9
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    goto :goto_2

    .line 141
    :cond_a
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    goto :goto_3

    .line 162
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 163
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CscUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught during open nwk_info.db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public powerSavingOff()V
    .locals 4

    .prologue
    const-string v3, "CscUpdateService"

    .line 364
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 365
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "CscUpdateService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 368
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const-string v1, "CscUpdateService"

    const-string v1, "wake lock acquire!!!!!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v1, "CscUpdateService"

    const-string v1, "wake lock isHeld!!!!!!!!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public powerSavingOn()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 382
    :cond_0
    return-void
.end method

.method public verifyResetDone()V
    .locals 3

    .prologue
    .line 281
    const-string v0, "NOERROR"

    .line 282
    .local v0, ANSWER:Ljava/lang/String;
    new-instance v1, Lcom/samsung/sec/android/application/csc/CscContents;

    invoke-direct {v1, p0}, Lcom/samsung/sec/android/application/csc/CscContents;-><init>(Landroid/content/Context;)V

    .line 283
    .local v1, cscContents:Lcom/samsung/sec/android/application/csc/CscContents;
    invoke-virtual {v1}, Lcom/samsung/sec/android/application/csc/CscContents;->verifyResetDone()Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string v2, "ril.imei.resetVerify"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method
