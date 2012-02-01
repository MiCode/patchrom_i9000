.class public Lcom/broadcom/bt/service/framework/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BTFMPowerManager"

.field private static mProxy:Lcom/broadcom/bt/service/framework/PowerManager;


# instance fields
.field private final mService:Lcom/broadcom/bt/service/framework/IPowerManager;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/framework/IPowerManager;)V
    .locals 2
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    return-void
.end method

.method public static declared-synchronized getProxy()Lcom/broadcom/bt/service/framework/PowerManager;
    .locals 4

    .prologue
    const-class v2, Lcom/broadcom/bt/service/framework/PowerManager;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/framework/PowerManager;->mProxy:Lcom/broadcom/bt/service/framework/PowerManager;

    if-nez v3, :cond_0

    const-string v3, "bt_fm_radio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IPowerManager;

    move-result-object v1

    .local v1, service:Lcom/broadcom/bt/service/framework/IPowerManager;
    new-instance v3, Lcom/broadcom/bt/service/framework/PowerManager;

    invoke-direct {v3, v1}, Lcom/broadcom/bt/service/framework/PowerManager;-><init>(Lcom/broadcom/bt/service/framework/IPowerManager;)V

    sput-object v3, Lcom/broadcom/bt/service/framework/PowerManager;->mProxy:Lcom/broadcom/bt/service/framework/PowerManager;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Lcom/broadcom/bt/service/framework/IPowerManager;
    :cond_0
    sget-object v3, Lcom/broadcom/bt/service/framework/PowerManager;->mProxy:Lcom/broadcom/bt/service/framework/PowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public disableBt()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->disableFm()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to disable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableFm()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->disableFm()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to enable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableBt()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->enableBt()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to enable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableFm()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->enableFm()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to enable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBtEnabled()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->isBtEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to disable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isfmEnabled()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->isfmEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to disable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
