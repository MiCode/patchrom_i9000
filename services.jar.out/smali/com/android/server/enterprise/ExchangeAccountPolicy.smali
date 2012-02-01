.class public Lcom/android/server/enterprise/ExchangeAccountPolicy;
.super Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.source "ExchangeAccountPolicy.java"


# static fields
.field private static final RESTART_DELAY:I = 0x1388

.field private static final RESTART_EMAIL_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRestartExtendDelay:Z

.field private mSyncManagerDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    const-string v5, "ExchangeAccountPolicy"

    invoke-direct {p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mSyncManagerDisabled:Z

    iput-boolean v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    new-instance v3, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;-><init>(Lcom/android/server/enterprise/ExchangeAccountPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.email"

    const-string v4, "com.android.exchange.SyncManager"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, syncMgrCn:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "ExchangeAccountPolicy"

    const-string v4, "Enabling EAS SyncManager"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #syncMgrCn:Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constructor EX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/ExchangeAccountPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mSyncManagerDisabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/ExchangeAccountPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mSyncManagerDisabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/ExchangeAccountPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/enterprise/ExchangeAccountPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    return p1
.end method

.method private booleanToByte(Z)B
    .locals 1
    .parameter "value"

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized reCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 43
    .parameter "user"
    .parameter "domain"
    .parameter "emailAddress"
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    monitor-enter p0

    const-wide/16 v41, -0x1

    .local v41, newAccountId:J
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reCreate() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v39

    .local v39, acc:Landroid/app/enterprise/Account;
    if-eqz v39, :cond_4

    const-string v5, "ExchangeAccountPolicy"

    invoke-virtual/range {v39 .. v39}, Landroid/app/enterprise/Account;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->deleteAccount(JZ)Z

    new-instance v40, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct/range {v40 .. v40}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v40, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    invoke-static/range {v39 .. v40}, Lcom/android/server/enterprise/SettingsUtils;->fillExistingAccountInfo(Landroid/app/enterprise/Account;Lcom/android/server/enterprise/AccountMetaData;)V

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mEasUser:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    :cond_2
    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    move-object/from16 v0, p4

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    :cond_3
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEasUser:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    move v9, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    move v10, v0

    move-object/from16 v0, v40

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:B

    move v11, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, v40

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:B

    move v15, v0

    move-object/from16 v0, v40

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:B

    move/from16 v16, v0

    const-string v17, "eas"

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v40

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    move/from16 v20, v0

    move-object/from16 v0, v40

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:B

    move/from16 v21, v0

    move-object/from16 v0, v40

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:B

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "eas"

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v40

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    move/from16 v29, v0

    move-object/from16 v0, v40

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:B

    move/from16 v30, v0

    move-object/from16 v0, v40

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:B

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    const/16 v36, 0x1

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-static/range {v5 .. v38}, Lcom/android/server/enterprise/SettingsUtils;->createNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/app/enterprise/Account;Landroid/content/Context;)J

    move-result-wide v41

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, v41

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateCertificateEntry(JJ)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v39

    const-string v5, "ExchangeAccountPolicy"

    invoke-virtual/range {v39 .. v39}, Landroid/app/enterprise/Account;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v39           #acc:Landroid/app/enterprise/Account;
    .end local v40           #accountMData:Lcom/android/server/enterprise/AccountMetaData;
    :goto_0
    monitor-exit p0

    return-wide v41

    .restart local v39       #acc:Landroid/app/enterprise/Account;
    :cond_4
    :try_start_1
    const-string v5, "reCreate() : Error :: Account-Id is invalid (Account information is unavaliable for provided Account-Id)."

    invoke-static {v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v39           #acc:Landroid/app/enterprise/Account;
    :catch_0
    move-exception v5

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J
    .locals 38
    .parameter "accountMData"
    .parameter "accountId"
    .parameter "mContext"

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEasUser:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    move v8, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:B

    move v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:B

    move v13, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:B

    move v14, v0

    const-string v15, "eas"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:B

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:B

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "eas"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:B

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:B

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-wide/from16 v1, p2

    move-object/from16 v35, p4

    invoke-static/range {v1 .. v35}, Lcom/android/server/enterprise/SettingsUtils;->updateExistingAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;)J

    move-result-wide v36

    .local v36, accId:J
    return-wide v36
.end method

.method private updateCertificateEntry(JJ)V
    .locals 3
    .parameter "oldID"
    .parameter "newID"

    .prologue
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "updateCertificateEntry() :Sending intent to rename"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.RENAME_CERTIFICATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountid"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "oldaccountid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .locals 45
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "serverPathPrefix"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "android.permission.sec.MDM_EXCHANGE"

    const-string v6, "Exchange Account Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v38, -0x1

    .local v38, accId:J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v43

    .local v43, token:J
    :try_start_0
    const-string v4, "Disabling EAS SyncManager"

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v41

    .local v41, pm:Landroid/content/pm/PackageManager;
    new-instance v42, Landroid/content/ComponentName;

    const-string v4, "com.android.email"

    const-string v5, "com.android.exchange.SyncManager"

    move-object/from16 v0, v42

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v42, syncMgrCn:Landroid/content/ComponentName;
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mSyncManagerDisabled:Z

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v10

    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v14

    move-object/from16 v0, p0

    move/from16 v1, p12

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v15

    const-string v16, "eas"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p15

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, p16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v21

    const/16 v22, 0x0

    const-string v25, "eas"

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, p15

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, p16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v30

    const/16 v31, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v17, p13

    move-object/from16 v23, p17

    move-object/from16 v24, p18

    move-object/from16 v26, p13

    move-object/from16 v32, p17

    move-object/from16 v33, p18

    invoke-static/range {v4 .. v37}, Lcom/android/server/enterprise/SettingsUtils;->createNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/app/enterprise/Account;Landroid/content/Context;)J

    move-result-wide v38

    const-wide/16 v4, -0x1

    cmp-long v4, v38, v4

    if-nez v4, :cond_0

    const-string v4, "Enabling EAS SyncManager"

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mSyncManagerDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v41           #pm:Landroid/content/pm/PackageManager;
    .end local v42           #syncMgrCn:Landroid/content/ComponentName;
    :cond_0
    :goto_0
    invoke-static/range {v43 .. v44}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v38

    :catch_0
    move-exception v4

    move-object/from16 v40, v4

    .local v40, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNewAccount() EX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v40           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v43 .. v44}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public deleteAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_EXCHANGE"

    const-string v2, "Exchange Account Policy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAccount() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->deleteAccount(JZ)Z

    move-result v0

    return v0
.end method

.method public deleteAccount(JZ)Z
    .locals 4
    .parameter "accId"
    .parameter "removeCert"

    .prologue
    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v2}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccount(JLandroid/content/Context;)Z

    move-result v1

    .local v1, ret:Z
    if-ne v1, v3, :cond_0

    if-ne p3, v3, :cond_0

    const-string v2, "ExchangeAccountPolicy"

    const-string v3, "deleteAccount() :Sending intent to remove"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.email.ACCOUNT_DELETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "accountid"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 3
    .parameter "accId"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_EXCHANGE"

    const-string v2, "Exchange Account Policy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountDetails() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Landroid/app/enterprise/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "easDomain"
    .parameter "easUser"
    .parameter "activeSyncHost"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_EXCHANGE"

    const-string v2, "Exchange Account Policy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "eas"

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_EXCHANGE"

    const-string v2, "Exchange Account Policy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/SettingsUtils;->sendAccountsChangedBroadcast(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "Delayed Broadcast"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setAcceptAllCertificates(ZJ)Z
    .locals 5
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAcceptAllCertificates() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:B

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:B

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 7
    .parameter "user"
    .parameter "domain"
    .parameter "emailAddress"
    .parameter "host"
    .parameter "accId"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_EXCHANGE"

    const-string v6, "Exchange Account Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAccountBaseParameters() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    const-wide/16 v4, 0x1

    cmp-long v4, v4, p5

    if-lez v4, :cond_0

    const-string v4, "setAccountBaseParameters() : accId is invalid"

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    move-wide v4, p5

    :goto_0
    return-wide v4

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/android/server/enterprise/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "setAccountBaseParameters()  : Error :: Invalid Email Address"

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    :try_start_0
    const-string v4, "Disabling EAS SyncManager"

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.email"

    const-string v5, "com.android.exchange.SyncManager"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, syncMgrCn:Landroid/content/ComponentName;
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mSyncManagerDisabled:Z

    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->reCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p5

    const-wide/16 v4, -0x1

    cmp-long v4, p5, v4

    if-nez v4, :cond_2

    const-string v4, "Enabling EAS SyncManager"

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mSyncManagerDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #pm:Landroid/content/pm/PackageManager;
    .end local v1           #syncMgrCn:Landroid/content/ComponentName;
    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v4, p5

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 5
    .parameter "accountName"
    .parameter "accId"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAccountName() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .locals 5
    .parameter "enable"
    .parameter "accId"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:B

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_EXCHANGE"

    const-string v2, "Exchange Account Policy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsDefaultAccount() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/SettingsUtils;->setAsDefaultAccount(JLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setClientAuthCert([BLjava/lang/String;J)V
    .locals 5
    .parameter "certData"
    .parameter "password"
    .parameter "accId"

    .prologue
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setClientAuthCert() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v1, 0x1

    cmp-long v1, p3, v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.INSTALL_CERTIFICATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "accountid"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;J)Z
    .locals 5
    .parameter "password"
    .parameter "accId"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPassword() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPastDaysToSync(IJ)Z
    .locals 5
    .parameter "pastDaysToSync"
    .parameter "accId"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPastDaysToSync() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProtocolVersion(Ljava/lang/String;J)Z
    .locals 5
    .parameter "protocolVersion"
    .parameter "accId"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProtocolVersion() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSSL(ZJ)Z
    .locals 5
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSSL() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .locals 5
    .parameter "senderName"
    .parameter "accId"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSenderName() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setServerPathPrefix(Ljava/lang/String;J)Z
    .locals 5
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setServerPathPrefix() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .locals 6
    .parameter "signature"
    .parameter "accId"

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_EXCHANGE"

    const-string v4, "Exchange Account Policy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSignature() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.email.SIGNATURE_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "signature"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v4}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .locals 5
    .parameter "enable"
    .parameter "accId"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilentVibrateOnEmailNotification() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:B

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSyncInterval(IJ)Z
    .locals 5
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    const-string v3, "Exchange Account Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSyncInterval() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTLS(ZJ)Z
    .locals 3
    .parameter "enableTLS"
    .parameter "accId"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_EXCHANGE"

    const-string v2, "Exchange Account Policy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTLS() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
