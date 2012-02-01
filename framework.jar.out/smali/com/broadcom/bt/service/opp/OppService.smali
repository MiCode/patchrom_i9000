.class public Lcom/broadcom/bt/service/opp/OppService;
.super Lcom/broadcom/bt/service/opp/IOppService$Stub;
.source "OppService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppService"

.field private static final V:Z = true

.field private static mRefs:I


# instance fields
.field private isFinished:Z

.field private mObexServiceNativeData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    invoke-static {}, Lcom/broadcom/bt/service/opp/OppService;->classInitNative()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z

    sget v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    const-string v0, "OppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupDataNative()V
.end method

.method private native closeOpcSessionNative()V
.end method

.method private native closeOpsSessionNative()V
.end method

.method private native enableOpcSessionNative()V
.end method

.method private native exchangeVcardNative(Ljava/lang/String;)V
.end method

.method private native grantAccessNative(IILjava/lang/String;)V
.end method

.method private native initializeDataNative()V
.end method

.method private native pullVcardNative(Ljava/lang/String;)V
.end method

.method private native pushObjectNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setExchangeFolderNative(Ljava/lang/String;)V
.end method

.method private native setOwnerVcardNative(Ljava/lang/String;)V
.end method


# virtual methods
.method public declared-synchronized closeOpcSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppService"

    const-string v2, "closeOpcSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->closeOpcSessionNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "OppService"

    const-string v2, "Error closing opc session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized closeOpsSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppService"

    const-string v2, "closeOpsSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->closeOpsSessionNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "OppService"

    const-string v2, "Error closing ops session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableOpcSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppService"

    const-string v2, "enableOpcSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->enableOpcSessionNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "OppService"

    const-string v2, "Error enabling opc session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized exchangeVcard(Ljava/lang/String;)V
    .locals 4
    .parameter "peerBDAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exchangeVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->exchangeVcardNative(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "OppService"

    const-string v2, "Error exchanging vcard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/OppService;->finish()V

    sget v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    const-string v0, "OppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalize: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/OppService;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->finalize()V

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->cleanupDataNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "OppService"

    const-string v2, "Error cleaning up"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized grantAccess(IILjava/lang/String;)V
    .locals 4
    .parameter "operation"
    .parameter "access"
    .parameter "filePathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    const-string v1, ", "

    monitor-enter p0

    :try_start_0
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grantAccess("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/opp/OppService;->grantAccessNative(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "OppService"

    const-string v2, "Error granting access"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public init()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppService;->initializeDataNative()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppService;->isFinished:Z

    return-void
.end method

.method public declared-synchronized pullVcard(Ljava/lang/String;)V
    .locals 4
    .parameter "peerBDAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pullVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->pullVcardNative(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "OppService"

    const-string v2, "Error pulling vcard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pushObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "peerBDAddress"
    .parameter "filePathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushObject("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/opp/OppService;->pushObjectNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "OppService"

    const-string v2, "Error pusing object"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "bluetooth_opp_service"

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/opp/OppEventLoop;

    .local v0, eventLoop:Lcom/broadcom/bt/service/opp/OppEventLoop;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setExchangeFolder(Ljava/lang/String;)V
    .locals 4
    .parameter "pathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExchangeFolder("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->setExchangeFolderNative(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setOwnerVcard(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "OppService"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOwnerVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppService;->setOwnerVcardNative(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "OppService"

    const-string v2, "Error setting owner vcard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "bluetooth_opp_service"

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/opp/OppEventLoop;

    .local v0, eventLoop:Lcom/broadcom/bt/service/opp/OppEventLoop;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    :cond_0
    return-void
.end method
