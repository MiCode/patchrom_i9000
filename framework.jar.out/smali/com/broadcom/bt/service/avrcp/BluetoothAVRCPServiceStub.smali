.class public final Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;
.super Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;
.source "BluetoothAVRCPServiceStub.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAVRCPServiceStub"

.field private static mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-string v1, "BluetoothAVRCPServiceStub"

    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;-><init>()V

    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v0, "BluetoothAVRCPServiceStub"

    invoke-static {v1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bluetooth_avrcp"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    sput-object p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    return-void
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->enable()V
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
    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;->finalize()V

    return-void
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->registerCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->unregisterCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
