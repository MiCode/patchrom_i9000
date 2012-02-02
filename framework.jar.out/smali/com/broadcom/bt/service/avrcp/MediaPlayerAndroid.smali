.class Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;
.super Lcom/broadcom/bt/service/avrcp/MediaPlayer;
.source "MediaPlayerAndroid.java"


# static fields
.field public static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.android.music.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field private static final TAG:Ljava/lang/String; = "AVRCP.MediaPlayerAndroid"


# instance fields
.field private mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;-><init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V

    .line 90
    new-instance v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid$1;-><init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 3

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->duration()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 259
    :goto_0
    return-wide v1

    .line 256
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 257
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAlbumId()J
    .locals 3

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getAlbumId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 211
    :goto_0
    return-wide v1

    .line 208
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 209
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    .line 200
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 201
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method

.method public getArtistId()J
    .locals 3

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getArtistId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 227
    :goto_0
    return-wide v1

    .line 224
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 225
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getArtistName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 219
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 217
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method

.method public getAudioId()J
    .locals 3

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 243
    :goto_0
    return-wide v1

    .line 240
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 241
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "Android Media Player"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 235
    :goto_0
    return-object v1

    .line 232
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 233
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method

.method public getQueue()[J
    .locals 2

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getQueue()[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 126
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getQueuePosition()I
    .locals 2

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getQueuePosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRepeatMode()I
    .locals 2

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getRepeatMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    :goto_0
    return v1

    .line 296
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 297
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getShuffleMode()I
    .locals 2

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getShuffleMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 283
    :goto_0
    return v1

    .line 280
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 281
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getTrackName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 195
    :goto_0
    return-object v1

    .line 192
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 193
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_0
    return v1

    .line 149
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 150
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 186
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBinded(Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    const-string v3, "AVRCP.MediaPlayerAndroid"

    .line 52
    const-string v1, "AVRCP.MediaPlayerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBinded: Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {p2}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    .line 59
    :try_start_0
    const-string v1, "AVRCP.MediaPlayerAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBinded:Playing track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v1, "AVRCP.MediaPlayerAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBinded:By artist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "AVRCP.MediaPlayerAndroid"

    const-string/jumbo v2, "onBinded:Music player is playing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->registerIntentReceiver()V

    .line 67
    const/4 v1, 0x1

    .line 72
    :goto_1
    return v1

    .line 64
    :cond_0
    const-string v1, "MediaPlayerServiceConnection"

    const-string v2, "Music player is not playing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 69
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onUnbinded(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 118
    const-string v0, "AVRCP.MediaPlayerAndroid"

    const-string/jumbo v1, "onUnbinded:Disconnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->unregisterIntentReceiver()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    .line 121
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 172
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public position()J
    .locals 3

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->position()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 251
    :goto_0
    return-wide v1

    .line 248
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 249
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->prev()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 179
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected registerIntentReceiver()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method

.method public seek(J)J
    .locals 3
    .parameter "pos"

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 267
    :goto_0
    return-wide v1

    .line 264
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 265
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->setQueuePosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setRepeatMode(I)V
    .locals 2
    .parameter "repeatmode"

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->setRepeatMode(I)V

    .line 288
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->refreshUI(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 290
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter "shufflemode"

    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->setShuffleMode(I)V

    .line 272
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->refreshUI(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 274
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IMediaPlaybackService;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 158
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected unregisterIntentReceiver()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method
