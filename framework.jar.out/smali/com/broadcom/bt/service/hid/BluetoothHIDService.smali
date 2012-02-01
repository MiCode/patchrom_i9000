.class public Lcom/broadcom/bt/service/hid/BluetoothHIDService;
.super Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;
.source "BluetoothHIDService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_HID_SERVICE:Ljava/lang/String; = "bluetooth_hid"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PERM_WARNING:Ljava/lang/String; = "Need BLUETOOTH_ADMIN permission"

.field private static final HH_STATUS_DB_FULL:I = 0x21

.field private static final HH_STATUS_DRIVER_ERR:I = 0x22

.field private static final HH_STATUS_ERR:I = 0x20

.field private static final HH_STATUS_OK:I = 0x0

.field private static final MESSAGE_CORRUPTED_INFO:I = 0x3

.field private static final MESSAGE_DISABLE_BT:I = 0x1

.field private static final MESSAGE_TOO_MANY_DEV:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothHIDService"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->classInitNative()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 3
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;-><init>()V

    new-instance v1, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;-><init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;-><init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Platform does not support Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->initNative()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothEnable()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/hid/BluetoothHIDService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/hid/BluetoothHIDService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->handleBtDisableMsg(I)V

    return-void
.end method

.method private native addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private declared-synchronized completeDisable()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothHIDService"

    const-string v2, "HID profile has been disconnected."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disableNative()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.PROFILE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native connectHidNative(Ljava/lang/String;I)V
.end method

.method private native disableNative()V
.end method

.method private native disconnectHidNative(Ljava/lang/String;)V
.end method

.method private native enableNative()V
.end method

.method private declared-synchronized findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 3
    .parameter "address"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native getProtocolModeNative(Ljava/lang/String;)V
.end method

.method private native getReportNative(Ljava/lang/String;BBI)V
.end method

.method private declared-synchronized handleBtDisableMsg(I)V
    .locals 8
    .parameter "delayCount"

    .prologue
    const-string v5, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    const-string v5, "BluetoothHIDService"

    const-string v6, "handleBtDisableMsg"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v5, :cond_0

    const-string v5, "BluetoothHIDService"

    const-string v6, "#### handleBtDisableMsg: mDevices is null ####"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BluetoothHIDService"

    const-string v6, "handleBtDisableMsg: mDevices is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    const/4 v1, 0x1

    .local v1, disconnectDone:Z
    :try_start_2
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .local v4, state:I
    const-string v5, "BluetoothHIDService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleBtDisableMsg: device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-lez p1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #state:I
    :cond_3
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static {v5, v6, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private native initNative()V
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 9

    .prologue
    const-string v5, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    const-string v5, "BluetoothHIDService"

    const-string v6, "onBluetoothDisable"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v5, :cond_0

    const-string v5, "BluetoothHIDService"

    const-string v6, "#### onBluetoothDisable: mDevices is null ####"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BluetoothHIDService"

    const-string v6, "onBluetoothDisable: mDevices is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    const/4 v1, 0x1

    .local v1, disconnectDone:Z
    :try_start_2
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .local v4, state:I
    const-string v5, "BluetoothHIDService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBluetoothDisable: device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-direct {p0, v0, v4, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #state:I
    :cond_2
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 2

    .prologue
    const-string v0, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothHIDService"

    const-string v1, "onBluetoothEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHIDService"

    const-string v1, "#### onBluetoothEnable: mDevices is not null ####"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->enableNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onHidConnected(Ljava/lang/String;I)V
    .locals 7
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v3, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHidConnected: address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v3, :cond_1

    const-string v3, "BluetoothHIDService"

    const-string v4, "#### onHidConnected: mDevices = null ####"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    const-string v3, "BluetoothHIDService"

    const-string v4, "onHidConnected: device = null, must be incoming connection."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .local v2, state:I
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHidConnected: device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_3

    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #state:I
    :cond_3
    and-int/lit16 v3, p2, 0xff

    const/16 v4, 0x21

    if-ne v3, v4, :cond_4

    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    shr-int/lit8 v5, p2, 0x8

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    :cond_4
    const/16 v3, 0x22

    if-ne p2, v3, :cond_5

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized onHidDisabled(I)V
    .locals 3
    .parameter "status"

    .prologue
    const-string v0, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothHIDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHidDisabled: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "BluetoothHIDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops, failed to disable HID profile. status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
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

.method private declared-synchronized onHidDisconnected(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHidDisconnected: address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_1

    const-string v2, "BluetoothHIDService"

    const-string v3, "#### onHidDisconnected: mDevices = null ####"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    const-string v2, "BluetoothHIDService"

    const-string v3, "onHidDisconnected: device = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .local v1, state:I
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHidDisconnected: device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized onHidEnabled(I)V
    .locals 14
    .parameter "status"

    .prologue
    const-string v11, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    const-string v11, "BluetoothHIDService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onHidEnabled: status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v11, "BluetoothHIDService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Oops, failed to enable HID profile. status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v11}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "BluetoothHIDService"

    const-string v12, "Oops, onHidEnabled but BT is disabled."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_2
    :try_start_2
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v11}, Landroid/server/BluetoothService;->listHidInfo()Ljava/lang/String;

    move-result-object v8

    .local v8, hidList:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, addresses:[Ljava/lang/String;
    if-nez v1, :cond_3

    const-string v11, "BluetoothHIDService"

    const-string v12, "addresses = null"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_0

    aget-object v0, v2, v9

    .local v0, address:Ljava/lang/String;
    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v11, v0}, Landroid/server/BluetoothService;->getHidInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, hidInfo:Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-direct {p0, v0, v7}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .local v5, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_4

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .local v4, attrMaskStr:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, attrMask:I
    const/16 v11, 0x10

    :try_start_3
    invoke-static {v4, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const-string v11, "BluetoothHIDService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hidInfo.attrMask = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    or-int/lit8 v12, v3, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v3           #attrMask:I
    .end local v4           #attrMaskStr:Ljava/lang/String;
    .end local v5           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .restart local v3       #attrMask:I
    .restart local v4       #attrMaskStr:Ljava/lang/String;
    .restart local v5       #device:Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v11

    move-object v6, v11

    .local v6, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v11, "BluetoothHIDService"

    const-string v12, ""

    invoke-static {v11, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized onHidInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "address"
    .parameter "info"
    .parameter "attrMask"

    .prologue
    const/4 v6, 0x3

    const-string v3, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHidInfo: address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v3, :cond_1

    const-string v3, "BluetoothHIDService"

    const-string v4, "#### onHidInfo: mDevices = null ####"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    const-string v3, "BluetoothHIDService"

    const-string v4, "onHidInfo: device = null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    if-eqz p2, :cond_3

    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1, p2}, Landroid/server/BluetoothService;->addHidInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setAttrMask(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .local v2, state:I
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHidInfo: device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v6, :cond_0

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized onHidVup(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHidVup: address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_0

    const-string v2, "BluetoothHIDService"

    const-string v3, "#### onHidVup: mDevices = null ####"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    const-string v2, "BluetoothHIDService"

    const-string v3, "onHidVup: device = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .local v1, state:I
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHidVup: device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private native sendDataNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private declared-synchronized setAttrMask(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .parameter "device"
    .parameter "attrMask"

    .prologue
    const-string v2, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAttrMask: device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", attrMask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_0

    const-string v2, "BluetoothHIDService"

    const-string v3, "setAttrMask() but mDevices is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    move v0, p2

    .local v0, intValue:I
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, value:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #intValue:I
    .end local v1           #value:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native setProtocolModeNative(Ljava/lang/String;B)V
.end method

.method private native setReportNative(Ljava/lang/String;BLjava/lang/String;)V
.end method

.method private setState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    if-ne p3, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setState: device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    if-eq p3, v3, :cond_2

    shl-int/lit8 v0, p3, 0x10

    .local v0, intValue:I
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, value:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.service.hid.extra.STATE"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #intValue:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #value:Ljava/lang/Integer;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #intValue:I
    goto :goto_1
.end method

.method private native virtualUnplugHidNative(Ljava/lang/String;)V
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oops, connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but BT is disabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but mDevices is null ####"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect new device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, state:I
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v0, :cond_3

    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    .end local v0           #state:I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .restart local v0       #state:I
    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->connectHidNative(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v5

    goto/16 :goto_0

    .end local v0           #state:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oops, disconnect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but BT is disabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_1

    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### disconnect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but mDevices is null ####"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "BluetoothHIDService"

    const-string v3, "disconnect: no such HID device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .local v1, state:I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :pswitch_1
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect: no action, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->cleanupNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getAttrMask(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    goto :goto_0

    .end local v0           #value:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .local v1, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothHidPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getProtocolModeNative(Ljava/lang/String;)V

    return-void
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .locals 1
    .parameter "device"
    .parameter "reportType"
    .parameter "reportId"
    .parameter "bufferSize"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getReportNative(Ljava/lang/String;BBI)V

    return-void
.end method

.method public declared-synchronized getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    goto :goto_0

    .end local v0           #value:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 1
    .parameter "device"
    .parameter "cData"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->sendDataNative(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothHidPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;B)V
    .locals 1
    .parameter "device"
    .parameter "protocolMode"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setProtocolModeNative(Ljava/lang/String;B)V

    return-void
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)V
    .locals 1
    .parameter "device"
    .parameter "reportType"
    .parameter "cData"

    .prologue
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setReportNative(Ljava/lang/String;BLjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHIDService"

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "virtualUnplug "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oops, virtualUnplug "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but BT is disabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_1

    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### virtualUnplug "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but mDevices is null ####"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "BluetoothHIDService"

    const-string v3, "virtualUnplug: no such HID device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .local v1, state:I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->virtualUnplugHidNative(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :pswitch_1
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "virtualUnplug: no action, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
