.class public Lcom/samsung/sec/android/application/csc/CscReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CscReceiver.java"


# static fields
.field private static FILE_NAME:Ljava/lang/String;

.field private static mCompleteMsgAlreadySent:Z


# instance fields
.field private final SW_CONFIG_FILE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandlerPhone:Landroid/os/Handler;

.field private mParser:Lcom/samsung/sec/android/application/csc/CscParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getIDPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscReceiver;->FILE_NAME:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mCompleteMsgAlreadySent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    const-string v0, "/system/SW_Configuration.xml"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->SW_CONFIG_FILE:Ljava/lang/String;

    .line 259
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/android/application/csc/CscReceiver$1;-><init>(Lcom/samsung/sec/android/application/csc/CscReceiver;)V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mHandlerPhone:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-boolean p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mCompleteMsgAlreadySent:Z

    return p0
.end method

.method private isCscImage()Z
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getIDPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/sec/android/application/csc/CscReceiver;->FILE_NAME:Ljava/lang/String;

    .line 138
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscReceiver;->FILE_NAME:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 139
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/sec/android/application/csc/CscReceiver;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 142
    .end local v0           #f:Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x7cf

    const/4 v7, 0x3

    const/4 v6, 0x0

    const-string v5, "MODE"

    const-string v4, "CscReceiver"

    .line 62
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscGPS;

    invoke-direct {v0, p1}, Lcom/samsung/sec/android/application/csc/CscGPS;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "CscReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscReceiver;->isCscImage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    const-string v0, "CscReceiver"

    const-string v0, "This is not for CSC"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscReceiver;->powerSavingOff()V

    .line 72
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mHandlerPhone:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscReceiver;->set_CSC_version()V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscReceiver;->powerSavingOff()V

    .line 81
    invoke-virtual {v0}, Lcom/samsung/sec/android/application/csc/CscGPS;->update()V

    .line 82
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mHandlerPhone:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/sec/android/application/csc/CscUpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 88
    :cond_2
    const-string v0, "android.intent.action.CSC_UPDATE_TEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/sec/android/application/csc/CscUpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "MODE"

    const-string v1, "TEST"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 93
    :cond_3
    const-string v0, "android.intent.action.CSC_COMPARE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/sec/android/application/csc/CscCompareService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 98
    :cond_4
    const-string v0, "android.intent.action.CSC_MODEM_SETTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/sec/android/application/csc/CscModemSettingService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    const-string v1, "MODE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 101
    const-string v1, "MODE"

    const-string v1, "MODE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 102
    :cond_5
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 106
    :cond_6
    const-string v0, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;

    invoke-direct {v0, p1}, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v0}, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->update()V

    goto/16 :goto_0

    .line 112
    :cond_7
    const-string v0, "android.intent.action.CSC_UPDATE_CONNECTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 113
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscConnection;

    invoke-direct {v0, p1}, Lcom/samsung/sec/android/application/csc/CscConnection;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->update()V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 119
    :cond_8
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "CscReceiver"

    const-string v0, "Media DB Scanner finished."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "USER_PREFERENCES"

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->prefs:Landroid/content/SharedPreferences;

    .line 122
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_RINGTONE_SET"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_9

    .line 123
    const-string v0, "CscReceiver"

    const-string v0, "Set Ringtone"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings;

    invoke-direct {v0, p1}, Lcom/samsung/sec/android/application/csc/CscSettings;-><init>(Landroid/content/Context;)V

    .line 125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscSettings;->updateRingtones(I)V

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_NOTIFICATION_SET"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 128
    const-string v0, "CscReceiver"

    const-string v0, "Set Notification"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings;

    invoke-direct {v0, p1}, Lcom/samsung/sec/android/application/csc/CscSettings;-><init>(Landroid/content/Context;)V

    .line 130
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscSettings;->updateRingtones(I)V

    goto/16 :goto_0
.end method

.method public powerSavingOff()V
    .locals 4

    .prologue
    const-string v3, "CscReceiver"

    .line 237
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 238
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "CscReceiver"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 241
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    const-string v1, "CscReceiver"

    const-string v1, "wake lock acquire!!!!!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v1, "CscReceiver"

    const-string v1, "wake lock isHeld!!!!!!!!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public powerSavingOn()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "CscReceiver"

    const-string v1, "wake lock released!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 256
    :cond_0
    return-void
.end method

.method public sendRILBootMsg()V
    .locals 8

    .prologue
    const-string v7, "CscReceiver"

    .line 207
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 209
    .local v4, mPhone:Lcom/android/internal/telephony/Phone;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 210
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 212
    .local v1, dos:Ljava/io/DataOutputStream;
    const-string v5, "CscReceiver"

    const-string v5, "sendRILBootMsg"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-boolean v5, Lcom/samsung/sec/android/application/csc/CscReceiver;->mCompleteMsgAlreadySent:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 216
    const-string v5, "CscReceiver"

    const-string v5, "sendRILBootMsg - already called. Do not send again."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v3, 0x4

    .line 223
    .local v3, fileSize:I
    const/4 v5, 0x6

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 224
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 225
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mHandlerPhone:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0

    .line 227
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 229
    .local v2, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public set_CSC_version()V
    .locals 15

    .prologue
    .line 146
    const-string v12, "/system/SW_Configuration.xml"

    invoke-static {v12}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 148
    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v13, "HandData"

    invoke-virtual {v12, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 152
    .local v8, handDataNode:Lorg/w3c/dom/Node;
    const-string v12, "ril.approved_codever"

    const-string v13, "none"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v12, "ril.approved_cscver"

    const-string v13, "none"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-nez v8, :cond_1

    .line 157
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "HandDataNode = null"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v13, "CustomerDataSet.CSCName"

    invoke-virtual {v12, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 189
    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v13, "CustomerDataSet.CSCName"

    invoke-virtual {v12, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, cscName:Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v13, "CustomerDataSet.CSCVersion"

    invoke-virtual {v12, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, cscVer:Ljava/lang/String;
    const-string v12, "CscReceiver"

    const-string v13, "PATH_CSCNAME =CustomerDataSet.CSCName"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v12, "ril.official_cscver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v4           #cscName:Ljava/lang/String;
    .end local v5           #cscVer:Ljava/lang/String;
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v13, "ApprovalVer"

    invoke-virtual {v12, v8, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 164
    .local v9, handDataNodeList:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 165
    invoke-interface {v9, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 167
    .local v10, handDataNodeListChild:Lorg/w3c/dom/Node;
    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v13, "Customer"

    invoke-virtual {v12, v10, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 168
    .local v6, customer:Lorg/w3c/dom/Node;
    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v12, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, customerName:Ljava/lang/String;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "customer = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 176
    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v13, "CodeFullVersion"

    invoke-virtual {v12, v10, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 177
    .local v0, codeApproved:Lorg/w3c/dom/Node;
    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v12, v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, codeApprovedVer:Ljava/lang/String;
    const-string v12, "ril.approved_codever"

    invoke-static {v12, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v13, "CSCFullVersion"

    invoke-virtual {v12, v10, v13}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 181
    .local v2, cscApproved:Lorg/w3c/dom/Node;
    iget-object v12, p0, Lcom/samsung/sec/android/application/csc/CscReceiver;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v12, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, cscApprovedVer:Ljava/lang/String;
    const-string v12, "ril.approved_cscver"

    invoke-static {v12, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v0           #codeApproved:Lorg/w3c/dom/Node;
    .end local v1           #codeApprovedVer:Ljava/lang/String;
    .end local v2           #cscApproved:Lorg/w3c/dom/Node;
    .end local v3           #cscApprovedVer:Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 194
    .end local v6           #customer:Lorg/w3c/dom/Node;
    .end local v7           #customerName:Ljava/lang/String;
    .end local v9           #handDataNodeList:Lorg/w3c/dom/NodeList;
    .end local v10           #handDataNodeListChild:Lorg/w3c/dom/Node;
    .end local v11           #i:I
    :cond_3
    const-string v12, "CscReceiver"

    const-string v13, "PATH_CSCNAME =CustomerDataSet.CSCName"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v12, "ril.official_cscver"

    const-string v13, "none"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
