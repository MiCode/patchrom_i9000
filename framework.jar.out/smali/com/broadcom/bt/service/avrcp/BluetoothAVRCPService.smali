.class public Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;
.super Lcom/broadcom/bt/service/framework/BaseEventLoop;
.source "BluetoothAVRCPService.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAVRCPService"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->classInitNativeAVRCP()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseEventLoop;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;-><init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;-><init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    iput-boolean v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    return-void
.end method

.method private static native classInitNativeAVRCP()V
.end method

.method private native cleanupNativeAVRCP()V
.end method

.method private native disableNativeAVRCP()V
.end method

.method private native enableNativeAVRCP()V
.end method

.method private native initNativeAVRCP()V
.end method

.method private static native onPlayStateChangedNative(Ljava/lang/String;I)V
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 4

    .prologue
    const-string v1, "BluetoothAVRCPService"

    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable: enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->disableNativeAVRCP()V
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
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "disableNativeAVRCP failed"

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

.method public duration(Ljava/lang/String;)J
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->duration()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized enable()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->enableNativeAVRCP()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z
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
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    const-string v1, "BluetoothAVRCPService"

    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->cleanupNativeAVRCP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "Unable to cleanup AVRCP EventLoop service"

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

.method public getAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlbumName: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArtistName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArtistName: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAudioId(Ljava/lang/String;)J
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getAudioId()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioId: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentPlayer()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getCurrentPlayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPlayer()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getDefaultPlayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "bluetooth_avrcp"

    return-object v0
.end method

.method public getPlayers()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayers()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition(Ljava/lang/String;)I
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getQueuePosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQueuePosition: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not find or not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRepeatMode(Ljava/lang/String;)I
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getRepeatMode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRepeatMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getShuffleMode(Ljava/lang/String;)I
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getShuffleMode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShuffleMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTotalTracks(Ljava/lang/String;)I
    .locals 5
    .parameter "PlayerName"

    .prologue
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v1

    .local v1, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getQueue()[J

    move-result-object v0

    .local v0, list:[J
    if-eqz v0, :cond_0

    array-length v2, v0

    .end local v0           #list:[J
    :goto_0
    return v2

    .restart local v0       #list:[J
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .end local v0           #list:[J
    :cond_1
    const-string v2, "BluetoothAVRCPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalTracks: player: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not binded!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getTrackName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getTrackName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrackName: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized init()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "init(): register avrcp test intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.broadcom.test.avrcp.cmd"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->initNativeAVRCP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isPlayerLaunched(Ljava/lang/String;)Z
    .locals 1
    .parameter "PlayerName"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->isPlayerLaunched(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->isPlaying()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchPlayer(Ljava/lang/String;I)V
    .locals 1
    .parameter "PlayerName"
    .parameter "msWait"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->launchPlayer(Ljava/lang/String;I)V

    return-void
.end method

.method public next(Ljava/lang/String;)V
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->next()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    const-string v0, "BluetoothAVRCPService"

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

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .prologue
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "PlayerName"
    .parameter "StateChangeType"

    .prologue
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChangedNative(Ljava/lang/String;I)V

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->pause()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public play(Ljava/lang/String;)V
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->play()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public position(Ljava/lang/String;)J
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->position()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public prev(Ljava/lang/String;)V
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->prev()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshUI(Ljava/lang/String;I)V
    .locals 4
    .parameter "PlayerName"
    .parameter "controls"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->refreshUI(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshUI: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized registerCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
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
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mCallbacks:Landroid/os/RemoteCallbackList;

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

.method public seek(Ljava/lang/String;J)J
    .locals 4
    .parameter "PlayerName"
    .parameter "pos"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->seek(J)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setCurrentPlayer(Ljava/lang/String;)V
    .locals 1
    .parameter "PlayerName"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->setCurrentPlayer(Ljava/lang/String;)Z

    return-void
.end method

.method public setQueuePosition(Ljava/lang/String;I)V
    .locals 4
    .parameter "PlayerName"
    .parameter "index"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->setQueuePosition(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setQueuePosition: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRepeatMode(Ljava/lang/String;I)V
    .locals 4
    .parameter "PlayerName"
    .parameter "mode"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->setRepeatMode(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepeatMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setShuffleMode(Ljava/lang/String;I)V
    .locals 4
    .parameter "PlayerName"
    .parameter "shufflemode"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->setShuffleMode(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->init(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->enable()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onStateChangeEvent(Z)V
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
    const-string v0, "BluetoothAVRCPService"

    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BluetoothAVRCPService"

    const-string v1, "calling mPlayerMgr.clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->clear()V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->disable()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopPlayer(Ljava/lang/String;)V
    .locals 4
    .parameter "PlayerName"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->stop()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
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
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mCallbacks:Landroid/os/RemoteCallbackList;

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
