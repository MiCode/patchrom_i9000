.class Lcom/android/server/EncryptService$6;
.super Ljava/lang/Object;
.source "EncryptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EncryptService;->requestBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-string v7, "EncryptService"

    const/4 v2, 0x0

    .local v2, nRet:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    invoke-virtual {v3}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v1

    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v3, v3, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "working"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v3, v3, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v4, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v4, v4, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    :cond_0
    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v3, v3, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$EncryptionWakeLock;->acquire()V

    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v3, v3, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v4, v4, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getPwdHashCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v5, v5, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v6, v6, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v6}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v6

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/os/storage/IMountService;->encryptBatchVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " requestBatch Error=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): When calling IMountService.encryptBatchVolume,  error was occured!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    const/16 v4, 0xaa

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService;->setError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, -0x1

    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestBatch : nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v3, v3, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v4, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v4, v4, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    :cond_2
    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v3, v3, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    iget-object v3, v3, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$EncryptionWakeLock;->release()V

    :cond_3
    return-void

    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    :cond_4
    const/4 v2, -0x2

    goto :goto_0

    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/os/RemoteException;
    const/4 v2, -0x3

    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    const/16 v4, 0xab

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestBatch : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/lang/Exception;
    const/4 v2, -0x4

    iget-object v3, p0, Lcom/android/server/EncryptService$6;->this$0:Lcom/android/server/EncryptService;

    const/16 v4, 0xac

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestBatch : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
