.class public Lcom/broadcom/bt/service/fm/FmServiceManager;
.super Ljava/lang/Object;
.source "FmServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FmServiceManager"

.field private static _DBG:Z

.field private static mFmReceiver:Landroid/content/BroadcastReceiver;

.field private static mFmServiceWrapper:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialized:Z

.field private static mIsFactoryTest:Z

.field private static mLastFmState:I

.field private static mSystemContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    .line 47
    new-instance v0, Lcom/broadcom/bt/service/fm/FmServiceManager$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method private static _registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V
    .locals 6
    .parameter "svcName"
    .parameter "svc"

    .prologue
    const-string v5, "null"

    const-string v4, "FmServiceManager"

    const-string v3, ": "

    .line 140
    invoke-static {p0}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    .line 141
    .local v0, isSupported:Z
    sget-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v1, :cond_1

    .line 142
    if-nez v0, :cond_0

    .line 143
    const-string v1, "FmServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Fm Service not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_3

    const-string v2, "null"

    move-object v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...Skipping. ****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    const-string v1, "FmServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Registering Fm Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    const-string v2, "null"

    move-object v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    if-eqz v0, :cond_2

    .line 154
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 155
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;-><init>(Lcom/broadcom/bt/service/framework/IBtService;Z)V

    invoke-virtual {v2, p0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_2
    return-void

    .line 143
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static _startService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    const-string v2, "***"

    const-string v4, "FmServiceManager"

    .line 187
    if-eqz p0, :cond_0

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 189
    :cond_0
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_1

    .line 190
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Fm service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_2

    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not enabled. Skipping start...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v3, p0

    .line 190
    goto :goto_0

    .line 197
    :cond_3
    const/4 v1, 0x0

    .line 198
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 199
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 200
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    if-nez v1, :cond_4

    .line 203
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_1

    .line 204
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Unable to find service record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 210
    :cond_4
    monitor-enter v1

    .line 211
    :try_start_2
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 212
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already started....skipping start..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    monitor-exit v1

    goto :goto_1

    .line 239
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 216
    :cond_5
    :try_start_3
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_7

    .line 217
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_6

    .line 218
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***startService(): Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not managed by FmServiceManager. Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v2, 0x1

    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 226
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager;->createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    :cond_6
    monitor-exit v1

    goto/16 :goto_1

    .line 231
    :cond_7
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_8

    .line 232
    const/4 v2, 0x1

    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 233
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***startService(): Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_8
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->init()V

    .line 237
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->start()V

    .line 239
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1
.end method

.method private static _stopService(Ljava/lang/String;)V
    .locals 6
    .parameter "svcName"

    .prologue
    const-string v5, "***"

    const-string v4, "FmServiceManager"

    .line 244
    if-nez p0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_2

    .line 248
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Stopping service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2
    const/4 v1, 0x0

    .line 252
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 253
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 254
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    if-nez v1, :cond_3

    .line 257
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_0

    .line 258
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Unable to find service record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 265
    :cond_3
    monitor-enter v1

    .line 266
    :try_start_2
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 267
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already stopped....skipping stop..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    monitor-exit v1

    goto :goto_0

    .line 296
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 272
    :cond_4
    :try_start_3
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_6

    .line 273
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_5

    .line 274
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopService(): Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not managed by Service Manager. Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v2, 0x0

    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 281
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager;->createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    :cond_5
    monitor-exit v1

    goto/16 :goto_0

    .line 287
    :cond_6
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_7

    .line 288
    const/4 v2, 0x0

    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 289
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopService(): Stop service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_7
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 294
    :try_start_4
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->stop()V

    .line 295
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 296
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 295
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public static createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter "svcName"
    .parameter "state"

    .prologue
    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.bt.intent.action.FM_SVC_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, i:Landroid/content/Intent;
    const-string v1, "fm_svc_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v1, "fm_svc_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;
    .locals 3
    .parameter "svcName"

    .prologue
    .line 409
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 410
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    .line 411
    .local v0, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v1

    return-object v2

    :cond_0
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    goto :goto_0

    .line 412
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getServiceState(Ljava/lang/String;)I
    .locals 2
    .parameter "svcName"

    .prologue
    .line 422
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    .line 423
    .local v0, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    if-nez v0, :cond_0

    .line 424
    const/4 v1, -0x1

    .line 426
    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5
    .parameter "systemContext"

    .prologue
    const-string v0, "FmServiceManager"

    .line 99
    const-class v0, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "FmServiceManager"

    const-string v2, "init() called "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "FmServiceManager"

    const-string v2, "Fm Service Manager already initialized.....Skipping init()..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    monitor-exit v0

    return-void

    .line 106
    :cond_0
    :try_start_1
    sput-object p0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initSettings()V

    .line 109
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->registerServices()V

    .line 110
    const/4 v1, 0x1

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    .line 111
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "broadcom.bt.intent.action.FM_SVC_STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initFmPower()V
    .locals 3

    .prologue
    const-string v2, "FmServiceManager"

    .line 116
    const-string v1, "FmServiceManager"

    const-string v1, "initFmPower()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v0

    .line 119
    .local v0, fmPwrMgr:Lcom/broadcom/bt/service/framework/PowerManager;
    if-nez v0, :cond_1

    .line 120
    const-string v1, "FmServiceManager"

    const-string v1, "Unable to initialize  FM!!!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/PowerManager;->enableFm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->onEnabled()V

    goto :goto_0
.end method

.method private static initSettings()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "fm_svcst_init"

    const-string v8, "fm_svcst_"

    const-string v5, "FmServiceManager"

    .line 164
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 165
    const-string v3, "FmServiceManager"

    const-string v3, "initSettings mSystemContext isn\'t null"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "fm_svcst_init"

    invoke-static {v0, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 169
    .local v2, settingsExist:I
    if-nez v2, :cond_2

    .line 170
    const-string v3, "FmServiceManager"

    const-string v3, "*********Initializing Fm Service Settings*******"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fm_svcst_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    move v4, v7

    :goto_1
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    const-string v3, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fm_svcst_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: isServiceSupported=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";  SERVICES_STARTUP_ENABLED= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 172
    goto :goto_1

    .line 182
    :cond_1
    const-string v3, "fm_svcst_init"

    invoke-static {v0, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i:I
    .end local v2           #settingsExist:I
    :cond_2
    return-void
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    .prologue
    .line 62
    const-class v0, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onDisabled()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "FmServiceManager"

    .line 359
    const-string v2, "FmServiceManager"

    const-string/jumbo v2, "onDisabled()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    if-ne v2, v4, :cond_0

    .line 362
    const-string v2, "FmServiceManager"

    const-string v2, "Already STOPPED..Skipping"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return-void

    .line 366
    :cond_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 367
    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 369
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 371
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_stopService(Ljava/lang/String;)V

    goto :goto_1

    .line 373
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    sput v4, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    goto :goto_0
.end method

.method public static declared-synchronized onEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const-string v2, "FmServiceManager"

    .line 336
    const-class v2, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v2

    :try_start_0
    const-string v3, "FmServiceManager"

    const-string/jumbo v4, "onEnabled()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mIsFactoryTest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 356
    :goto_0
    monitor-exit v2

    return-void

    .line 342
    :cond_0
    :try_start_1
    sget v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    if-ne v3, v5, :cond_1

    .line 343
    const-string v3, "FmServiceManager"

    const-string v4, "Already STARTED..Skipping"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 347
    :cond_1
    :try_start_2
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    :try_start_3
    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 350
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_startService(Ljava/lang/String;)V

    goto :goto_1

    .line 354
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 355
    const/4 v3, 0x2

    :try_start_6
    sput v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public static onFmServiceStateChanged(Ljava/lang/String;I)V
    .locals 7
    .parameter "svcName"
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const-string v5, "FmServiceManager"

    .line 301
    const-string v3, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnFmServiceStateChanged() serviceName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 305
    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 306
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    if-nez v1, :cond_1

    .line 309
    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v3, :cond_0

    .line 310
    const-string v3, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***onFmServiceStateChanged(): Unable to find service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 306
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 317
    :cond_1
    monitor-enter v1

    .line 318
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    .line 319
    const/4 v3, 0x1

    :try_start_2
    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 332
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 320
    :cond_3
    if-ne v6, p1, :cond_2

    .line 321
    const/4 v3, 0x0

    :try_start_3
    #setter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 323
    :try_start_4
    const-string v3, "FmServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 325
    #getter for: Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    invoke-interface {v3}, Lcom/broadcom/bt/service/framework/IBtService;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 328
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 329
    .local v2, t:Ljava/lang/Throwable;
    :try_start_5
    const-string v3, "FmServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private static registerServices()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "bluetooth_fm_receiver_service"

    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiverService;

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 72
    const-string v0, "bluetooth_fm_transmitter_service"

    new-instance v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 74
    return-void
.end method

.method public static shutdownFmPower()V
    .locals 3

    .prologue
    const-string v2, "FmServiceManager"

    .line 128
    const-string v1, "FmServiceManager"

    const-string/jumbo v1, "shutDownFmPower()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v0

    .line 131
    .local v0, fmPwrMgr:Lcom/broadcom/bt/service/framework/PowerManager;
    if-nez v0, :cond_1

    .line 132
    const-string v1, "FmServiceManager"

    const-string v1, "Unable to shutdown FM!!!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/PowerManager;->disableFm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->onDisabled()V

    goto :goto_0
.end method
