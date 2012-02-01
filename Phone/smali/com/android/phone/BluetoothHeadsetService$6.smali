.class Lcom/android/phone/BluetoothHeadsetService$6;
.super Landroid/bluetooth/IBluetoothHeadset$Stub;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 11
    .parameter "device"

    .prologue
    const/4 v10, 0x1

    .line 760
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v9

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 763
    .local v7, cachedHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v7, :cond_0

    .line 764
    const-string v1, "BT HSHFP"

    const-string v2, "Cached Headset is Null in acceptIncomingConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v1, 0x0

    monitor-exit v9

    .line 777
    :goto_0
    return v1

    .line 767
    :cond_0
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-result-object v8

    .line 768
    .local v8, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget v4, v8, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v5, v8, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 771
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x2

    const/4 v3, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$2300(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 773
    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v7, v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2402(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 774
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$700(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/BluetoothHandsfree;->connectHeadset(Landroid/bluetooth/HeadsetBase;I)V

    .line 776
    const-string v1, "Successfully used incoming connection"

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Ljava/lang/String;)V

    .line 777
    monitor-exit v9

    move v1, v10

    goto :goto_0

    .line 778
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    .end local v7           #cachedHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .end local v8           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelConnectThread()Z
    .locals 4

    .prologue
    .line 782
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 783
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 785
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 791
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1902(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 793
    :cond_0
    const/4 v2, 0x1

    monitor-exit v1

    return v2

    .line 788
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 789
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "BT HSHFP"

    const-string v3, "Connection cancelled twice?"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 794
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 647
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;->connectHeadset(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :try_start_1
    monitor-exit v1

    move v1, v2

    .line 650
    :goto_0
    return v1

    .line 648
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 649
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BT HSHFP"

    const-string v3, "connectHeadset"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 652
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v7, 0x1

    .line 798
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v3

    .line 799
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 800
    .local v0, currDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 801
    new-instance v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v1, v4}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    .line 802
    .local v1, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v5, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v4, p1, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$2500(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 805
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    if-nez v4, :cond_0

    .line 808
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 809
    .local v2, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 810
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 811
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$2600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x5dc

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 815
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    monitor-exit v3

    move v3, v7

    .line 821
    .end local v1           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .end local p0
    :goto_1
    return v3

    .line 813
    .restart local v1       #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local p0
    :cond_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v4, p1}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 822
    .end local v0           #currDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .end local p0
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 817
    .restart local v0       #currDevice:Landroid/bluetooth/BluetoothDevice;
    .restart local p0
    :cond_1
    :try_start_1
    const-string v4, "BT HSHFP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectHeadset("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): failed: already in state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {p0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with headset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v4, 0x0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_1
.end method

.method public createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10
    .parameter "device"

    .prologue
    const/4 v9, 0x1

    .line 730
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v8

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v1, p1, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$2500(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 734
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-result-object v7

    .line 735
    .local v7, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget v4, v7, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v5, v7, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 739
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2402(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 741
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 742
    monitor-exit v8

    return v9

    .line 743
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    .end local v7           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 659
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;->disconnectHeadset(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 664
    return-void

    .line 660
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 661
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BT HSHFP"

    const-string v3, "disconnectHeadset"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 663
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 826
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v2

    .line 827
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 828
    .local v1, remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v1, :cond_0

    monitor-exit v2

    move v2, v4

    .line 859
    :goto_0
    return v2

    .line 830
    :cond_0
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 838
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2400(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/HeadsetBase;

    move-result-object v0

    .line 839
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$700(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 840
    const-string v3, "+CIEV: 7,3"

    invoke-virtual {v0, v3}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 843
    :cond_1
    if-eqz v0, :cond_2

    .line 844
    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 845
    const/4 v0, 0x0

    .line 847
    :cond_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;III)V
    invoke-static {v3, p1, v4, v5, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2200(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;III)V

    .line 850
    monitor-exit v2

    move v2, v7

    goto :goto_0

    .line 851
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    :cond_3
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 854
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;III)V
    invoke-static {v3, p1, v4, v5, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2200(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;III)V

    .line 857
    monitor-exit v2

    move v2, v7

    goto :goto_0

    .line 859
    :cond_4
    monitor-exit v2

    move v2, v4

    goto :goto_0

    .line 860
    .end local v1           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getBatteryUsageHint()I
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-static {}, Landroid/bluetooth/HeadsetBase;->getAtInputCount()I

    move-result v0

    return v0
.end method

.method public getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 705
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 708
    .local v0, priority:I
    monitor-exit v1

    return v0

    .line 709
    .end local v0           #priority:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 633
    .local v0, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v0, :cond_0

    .line 634
    const/4 v1, 0x0

    .line 636
    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 666
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 669
    .local v0, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    .line 747
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v2

    .line 748
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 749
    .local v0, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-eqz v0, :cond_0

    .line 750
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-result-object v1

    .line 751
    .local v1, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->rejectIncomingConnection(Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    invoke-static {v3, v1}, Lcom/android/phone/BluetoothHeadsetService;->access$900(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V

    .line 755
    .end local v1           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :goto_0
    const/4 v3, 0x1

    monitor-exit v2

    return v3

    .line 753
    :cond_0
    const-string v3, "BT HSHFP"

    const-string v4, "Error no record of remote headset"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    .end local v0           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .parameter "device"
    .parameter "priority"

    .prologue
    const/4 v3, 0x0

    .line 713
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v0

    .line 716
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    monitor-exit v0

    move v0, v3

    .line 726
    :goto_0
    return v0

    .line 719
    :cond_0
    if-gez p2, :cond_1

    .line 720
    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 722
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Ljava/lang/String;)V

    .line 726
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 727
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startVirtualVoiceCall()Z
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public startVoiceRecognition()Z
    .locals 4

    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v2

    .line 674
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 676
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 678
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    .line 680
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->startVoiceRecognition()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 681
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopVirtualVoiceCall()Z
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method public stopVoiceRecognition()Z
    .locals 4

    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v2

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 688
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 690
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    .line 693
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->stopVoiceRecognition()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 694
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
