.class abstract Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "AVRCP.MediaPlayerBinder"


# instance fields
.field protected final mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

.field protected mPlayer:Lcom/broadcom/bt/service/avrcp/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mPlayer:Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPlaybackServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method protected abstract create(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;
.end method

.method public abstract getActivityName()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPlaybackServiceName()Ljava/lang/String;
.end method

.method public getPlayer()Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mPlayer:Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    return-object v0
.end method

.method public abstract getPlayerName()Ljava/lang/String;
.end method

.method public launch(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    const-string v0, "AVRCP.MediaPlayerBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected:: name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->create(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mPlayer:Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mPlayer:Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->onBinded(Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mPlayer:Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->onPlayerBinded(Lcom/broadcom/bt/service/avrcp/MediaPlayer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mPlayer:Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->onPlayerBindFail(Lcom/broadcom/bt/service/avrcp/MediaPlayer;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const-string v0, "AVRCP.MediaPlayerBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mPlayer:Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mPlayer:Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->onUnbinded(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mPlayer:Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->onPlayerUnbinded(Lcom/broadcom/bt/service/avrcp/MediaPlayer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;->mPlayer:Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    :cond_0
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
