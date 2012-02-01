.class public final Lcom/broadcom/bt/service/flick/BluetoothFlickService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothFlickService.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothFlick"


# instance fields
.field private mIsFinish:Z

.field private mNativeData:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->classInitNative()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native disableFlickNative()V
.end method

.method private native enableFlickNative()V
.end method

.method private native sendFlickNative(Ljava/lang/String;)V
.end method


# virtual methods
.method public native cleanupNative()V
.end method

.method public disableFlick()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->disableFlickNative()V

    return-void
.end method

.method public enableFlick()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->enableFlickNative()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->finish()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->cleanupNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothFlick"

    const-string v2, "Unable to cleanup Flick service"

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

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "bluetooth_flick"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->initNative()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->mIsFinish:Z
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

.method protected onFlickConnectedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "address"
    .parameter "dev_name"

    .prologue
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_CONNECTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v1, "RMT_DEV_ADDR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "RMT_DEV_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected onFlickFinishedEvent()V
    .locals 3

    .prologue
    const-string v1, "BluetoothFlick"

    const-string v2, "onFlickFinishedEvent() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->onStateChangeEvent(Z)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_FINISHED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected onFlickSearchStartedEvent()V
    .locals 3

    .prologue
    const-string v1, "BluetoothFlick"

    const-string v2, "onFlickSearchStartedEvent() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->onStateChangeEvent(Z)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SEARCH_STARTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected onFlickTxRxStatusEvent(BBIILjava/lang/String;)V
    .locals 3
    .parameter "evt_code"
    .parameter "op_status"
    .parameter "prog_bytes"
    .parameter "obj_size"
    .parameter "fpath"

    .prologue
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_TXRX_STATUS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v1, "EVT_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    const-string v1, "OP_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    const-string v1, "BYTES_TRANSFERRED"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TOTAL_BYTES"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendFlick(Ljava/lang/String;)V
    .locals 0
    .parameter "fpath"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->sendFlickNative(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->onStateChangeEvent(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->onStateChangeEvent(Z)V

    return-void
.end method
