.class Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"


# static fields
.field public static final MetaChanged:I = 0x2

.field public static final PlayComplete:I = 0x4

.field public static final PlayStateChanged:I = 0x1

.field public static final PlayerExit:I = 0x6

.field public static final PlayerStarted:I = 0x5

.field public static final QueueChanged:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AVRCP:MediaPlayerManager"


# instance fields
.field private mAVService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

.field private mBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

.field private mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

.field private mRegBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V
    .locals 1
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mRegBinders:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mAVService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    return-void
.end method


# virtual methods
.method protected final bindAll()V
    .locals 5

    .prologue
    const-string v4, "AVRCP:MediaPlayerManager"

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mRegBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayer()Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->bindService(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AVRCP:MediaPlayerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binding on playback service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlaybackServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "AVRCP:MediaPlayerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot bind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on playback service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlaybackServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :cond_2
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    iput-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mRegBinders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v1, binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;>;"
    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    const-string v3, "AVRCP:MediaPlayerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MediaPlayerMaanger::clear(): on playback service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlaybackServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; player: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayer()Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->unbind(Landroid/content/Context;)V

    goto :goto_0

    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected final findBinderByPackageName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    .locals 3
    .parameter "PackageName"

    .prologue
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    .locals 3
    .parameter "PlayerName"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    goto :goto_0

    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final findBinderByServiceName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    .locals 3
    .parameter "ServiceName"

    .prologue
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlaybackServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getCurrentPlayer()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultPlayer()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    .locals 2
    .parameter "PlayerName"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayer()Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPlayers()[Ljava/lang/String;
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    if-lez v2, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    .local v1, players:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v1

    .end local v0           #i:I
    .end local v1           #players:[Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public init(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroidBinder;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroidBinder;-><init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->registerMediaPlayer(Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;Z)Z

    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->bindAll()V

    return v1
.end method

.method public isPlayerLaunched(Ljava/lang/String;)Z
    .locals 1
    .parameter "PlayerName"

    .prologue
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchPlayer(Ljava/lang/String;I)V
    .locals 4
    .parameter "PlayerName"
    .parameter "msWait"

    .prologue
    const/4 v0, 0x0

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->launch(Landroid/content/Context;)V

    monitor-enter v0

    if-lez p2, :cond_0

    int-to-long v2, p2

    :try_start_1
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v1

    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "AVRCP:MediaPlayerManager"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public declared-synchronized onPlayerBindFail(Lcom/broadcom/bt/service/avrcp/MediaPlayer;)V
    .locals 2
    .parameter "player"

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public onPlayerBinded(Lcom/broadcom/bt/service/avrcp/MediaPlayer;)V
    .locals 4
    .parameter "player"

    .prologue
    const/4 v0, 0x0

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mAVService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChanged(Ljava/lang/String;I)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public declared-synchronized onPlayerUnbinded(Lcom/broadcom/bt/service/avrcp/MediaPlayer;)V
    .locals 4
    .parameter "player"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->bindService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mAVService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChanged(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onStateChanged(Lcom/broadcom/bt/service/avrcp/MediaPlayer;I)V
    .locals 2
    .parameter "player"
    .parameter "type"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mAVService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChanged(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerMediaPlayer(Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;Z)Z
    .locals 4
    .parameter "binder"
    .parameter "DefaultPlayer"

    .prologue
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mRegBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mRegBinders:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mDefaultBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setCurrentPlayer(Ljava/lang/String;)Z
    .locals 2
    .parameter "PlayerName"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->findBinderByPlayerName(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;

    move-result-object v0

    .local v0, b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->mCurrBinder:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #b:Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
