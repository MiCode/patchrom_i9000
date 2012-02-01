.class abstract Lcom/broadcom/bt/service/avrcp/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "name"

.field public static final ACTION_REFRESH_UI:Ljava/lang/String; = "RefreshUI"

.field public static final AVRCP_ACTION:Ljava/lang/String; = "com.broadcom.bluetooth.avrcp"

.field private static final TAG:Ljava/lang/String; = "AVRCP.MediaPlayer"

.field public static final UI_ALL:I = -0x1

.field public static final UI_PLAY_PAUSE:I = 0x2

.field public static final UI_PROGRESS:I = 0x4

.field public static final UI_REPEAT:I = 0x10

.field public static final UI_SHUFFLE:I = 0x8

.field public static final UI_TRACK:I = 0x1


# instance fields
.field protected final mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    return-void
.end method


# virtual methods
.method public abstract duration()J
.end method

.method public abstract getAlbumName()Ljava/lang/String;
.end method

.method public abstract getArtistName()Ljava/lang/String;
.end method

.method public abstract getAudioId()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getQueue()[J
.end method

.method public abstract getQueuePosition()I
.end method

.method abstract getRepeatMode()I
.end method

.method public abstract getShuffleMode()I
.end method

.method public abstract getTrackName()Ljava/lang/String;
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract next()V
.end method

.method protected abstract onBinded(Landroid/content/ComponentName;Landroid/os/IBinder;)Z
.end method

.method protected abstract onUnbinded(Landroid/content/ComponentName;)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract position()J
.end method

.method public abstract prev()V
.end method

.method public refreshUI(I)V
    .locals 4
    .parameter "UI"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bluetooth.avrcp"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v2, "name"

    const-string v3, "RefreshUI"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v1, strb:Ljava/lang/StringBuffer;
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    const-string v2, "track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1

    const-string v2, "progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_2

    const-string v2, "play/pause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    const-string v2, "shuffle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_4

    const-string v2, "repeat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "controls"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public abstract seek(J)J
.end method

.method public abstract setQueuePosition(I)V
.end method

.method abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleMode(I)V
.end method

.method public abstract stop()V
.end method
