.class public final Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
.super Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;
.source "BluetoothPrinterService.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothPrinterService"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mIsStarted:Z

.field private mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isAppService"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    const-string v0, "BluetoothPrinterService"

    const-string v1, "Initialize Bluetooth Printer Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_InitBluetoothPrinter()V

    return-void
.end method

.method private native Native_BluetoothPrinterAbort()V
.end method

.method private native Native_BluetoothPrinterDisable()V
.end method

.method private native Native_BluetoothPrinterEnable()V
.end method

.method private native Native_BluetoothPrinterGetCapabilities(Ljava/lang/String;I)V
.end method

.method private native Native_BluetoothPrinterObexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native Native_BluetoothPrinterPartialImageResponse(Ljava/lang/String;)V
.end method

.method private native Native_BluetoothPrinterPrint(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method private native Native_InitBluetoothPrinter()V
.end method


# virtual methods
.method native Native_BluetoothPrinterCancelBppStatus()V
.end method

.method native Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V
.end method

.method public abort()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "abort"

    const-string v3, "BluetoothPrinterService"

    const-string v2, "BluetoothPrinterService"

    const-string v2, "abort"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterAbort()V

    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v0

    .local v0, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-eqz v0, :cond_0

    const/4 v2, 0x4

    iput v2, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothPrinterService"

    const-string v2, "abort"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelBppStatus()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v3, "cancelBppStatus"

    const-string v2, "BluetoothPrinterService"

    const-string v1, "BluetoothPrinterService"

    const-string v1, "cancelBppStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterCancelBppStatus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinterService"

    const-string v1, "cancelBppStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized disable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterDisable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "BluetoothPrinterService"

    const-string v2, "disable"

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

.method public declared-synchronized enable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterEnable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

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

.method public finish()V
    .locals 0

    .prologue
    return-void
.end method

.method public getCapabilities(Ljava/lang/String;I)V
    .locals 5
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "BluetoothPrinterService"

    :try_start_0
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCapabilities("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterGetCapabilities(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinterService"

    const-string v1, "getCapabilities"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "bluetooth_bpp_service"

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    return-void
.end method

.method public obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "password"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothPrinterService"

    const-string v1, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obexAuthenticationResponse("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterObexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinterService"

    const-string v1, "obexAuthenticationResponse"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public partialImageResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothPrinterService"

    const-string v1, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "partialImageResponse("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPartialImageResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinterService"

    const-string v1, "partialImageResponse"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public print(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    .locals 11
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "handle"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "objectResolver"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static/range {p1 .. p10}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJob(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v9

    .local v9, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    invoke-virtual {v9}, Lcom/broadcom/bt/service/bpp/PrintJob;->setStartState()V

    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "print("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    invoke-static {v9}, Lcom/broadcom/bt/service/bpp/PrintManager;->setCurrentJob(Lcom/broadcom/bt/service/bpp/PrintJob;)V

    iget-object v1, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    iget v2, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    iget v3, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    iget-object v4, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    iget-object v5, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    iget v6, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mHandle:I

    iget-object v7, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    iget-object v8, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPrint(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-wide v0, v9, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    return-wide v0

    :catch_0
    move-exception v0

    move-object v10, v0

    .local v10, t:Ljava/lang/Throwable;
    const-string v0, "BluetoothPrinterService"

    const-string v1, "print"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public refObjectResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothPrinterService"

    const-string v1, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refObjectResponse("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinterService"

    const-string v1, "refObjectResponse"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    const-string v0, "BluetoothPrinterService"

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPrinterService"

    const-string v1, "start() called, but service already running.Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Enabling Bpp Service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-nez v0, :cond_1

    const-string v0, "BluetoothPrinterService"

    const-string v1, "Starting BluetoothPrinterEventLoop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->start()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    const-string v0, "BluetoothPrinterService"

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    if-nez v0, :cond_0

    const-string v0, "BluetoothPrinterService"

    const-string v1, "stop() called, but service already disabled. Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Disabling Bpp Service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-eqz v0, :cond_1

    const-string v0, "BluetoothPrinterService"

    const-string v1, "Stopping BluetoothPrinterEventLoop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
