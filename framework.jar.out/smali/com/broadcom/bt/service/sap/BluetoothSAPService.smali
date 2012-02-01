.class public Lcom/broadcom/bt/service/sap/BluetoothSAPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothSAPService.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothSAPService"


# instance fields
.field private deviceAddr:Ljava/lang/String;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurState:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->classEventLoopInitNative()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCurState:I

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z

    iput-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z

    iput v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCurState:I

    return-void
.end method

.method private static native classEventLoopInitNative()V
.end method

.method private native cleanupEventLoopNative()V
.end method

.method private native disableNative()V
.end method

.method private native disconnectNative(B)V
.end method

.method private native enableNative()V
.end method

.method private native initEventLoopNative()V
.end method

.method private onConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    const-string v0, "BluetoothSAPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: address = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->deviceAddr:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onConnectStateChanged(B)V

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.sap.action.ON_SAP_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private onDisconnected()V
    .locals 3

    .prologue
    const-string v0, "BluetoothSAPService"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onConnectStateChanged(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->deviceAddr:Ljava/lang/String;

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.sap.action.ON_SAP_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 4

    .prologue
    const-string v1, "BluetoothSAPService"

    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothSAPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable: enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disableNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothSAPService"

    const-string v2, "disableNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disconnect(B)V
    .locals 3
    .parameter "type"

    .prologue
    const-string v1, "BluetoothSAPService"

    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothSAPService"

    const-string v2, "disconnect..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disconnectNative(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothSAPService"

    const-string v2, "disconnectNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enable()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothSAPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->enableNative()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-string v0, "BluetoothSAPService"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    const-string v1, "BluetoothSAPService"

    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothSAPService"

    const-string v2, "finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->cleanupEventLoopNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothSAPService"

    const-string v2, "Unable to cleanup SAP EventLoop service"

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

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->deviceAddr:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "BluetoothSAPService"

    const-string v1, "getBluetoothDevice: address is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->deviceAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "bluetooth_sap"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothSAPService"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->initEventLoopNative()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnectStateChanged(B)V
    .locals 4
    .parameter "state"

    .prologue
    iget v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCurState:I

    if-eq v1, p1, :cond_0

    const-string v1, "BluetoothSAPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectStateChanged: mCurState/state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCurState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iput p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCurState:I

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    const-string v1, "SVC_NAME"

    const-string v2, "bluetooth_sap"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothSAPService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->enable()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothSAPService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->deviceAddr:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onConnectStateChanged(B)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
