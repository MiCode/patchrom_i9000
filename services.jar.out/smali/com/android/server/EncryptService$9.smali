.class Lcom/android/server/EncryptService$9;
.super Ljava/lang/Object;
.source "EncryptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EncryptService;->normalMount()V
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
    iput-object p1, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-string v7, "EncryptService"

    const/4 v3, -0x7

    .local v3, nRet:I
    const/4 v1, 0x0

    .local v1, isNextJobRet:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    invoke-virtual {v4}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v2

    .local v2, mountService:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v4, v4, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v5, "working"

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v5, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v5, v5, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v4, v4, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v4, v4, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v5, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v5, v5, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v5, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v5, v5, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService;->doWorkNextJob(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v4, v4, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService$InternalDB;->setWorkingPath(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v4, v4, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v5, "none"

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    :cond_3
    return-void

    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    :cond_4
    :try_start_1
    const-string v4, "EncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IMountService.mountVolume was error("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    const/16 v5, 0xdc

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService;->setError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, -0x1

    goto :goto_0

    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    const/16 v5, 0xdd

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService;->setError(I)V

    const/4 v3, -0x2

    const-string v4, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ==normalMount : RemoteException exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .local v0, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    const/16 v5, 0xde

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService;->setError(I)V

    const/4 v3, -0x3

    const-string v4, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ==normalMount : Exception exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
