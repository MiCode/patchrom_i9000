.class public final Lcom/broadcom/bt/service/dun/BluetoothDUNService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothDUNService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDUNService"


# instance fields
.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFinish:Z

.field private mNativeData:I

.field final mPortState:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->classInitNative()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native closeNative(B)V
.end method

.method private onDisableEvent()V
    .locals 2

    .prologue
    const-string v0, "BluetoothDUNService"

    const-string v1, "onDisableEvent() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onEnableEvent()V
    .locals 2

    .prologue
    const-string v0, "BluetoothDUNService"

    const-string v1, "onEnableEvent() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V

    return-void
.end method

.method private onPortStateChangeEvent(BBLjava/lang/String;)V
    .locals 5
    .parameter "appId"
    .parameter "portState"
    .parameter "address"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/dun/BluetoothDUN;->ACTION_ON_PORT_STATE_CHANGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v1, "ADDR"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "APPID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    const-string v1, "PORTSTATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public native cleanupNative()V
.end method

.method public close(B)V
    .locals 0
    .parameter "appId"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->closeNative(B)V

    return-void
.end method

.method public native disableNative()V
.end method

.method public native enableNative()V
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->finish()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->cleanupNative()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothDUNService"

    const-string v2, "Unable to cleanup DUN service"

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

.method public getAllPortStatus()Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .local v4, status:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    iget-object v7, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/LinkedHashMap;

    move-object v4, v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/os/Bundle;

    const/4 v6, 0x3

    invoke-direct {v1, v6}, Landroid/os/Bundle;-><init>(I)V

    .local v1, b:Landroid/os/Bundle;
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Byte;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    .local v3, key:Ljava/lang/Byte;
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    .local v5, val:Ljava/lang/Byte;
    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_0

    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Byte;>;"
    .end local v3           #key:Ljava/lang/Byte;
    .end local v5           #val:Ljava/lang/Byte;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .restart local v1       #b:Landroid/os/Bundle;
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Byte;>;"
    :cond_1
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "bluetooth_dun"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->initNative()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native initNative()V
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->enableNative()V

    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->disableNative()V

    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method
