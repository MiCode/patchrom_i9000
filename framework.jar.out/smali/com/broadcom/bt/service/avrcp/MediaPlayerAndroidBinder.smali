.class Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroidBinder;
.super Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
.source "MediaPlayerAndroid.java"


# static fields
.field public static final ActivityName:Ljava/lang/String; = "com.android.music.MediaPlaybackActivity"

.field public static final PackageName:Ljava/lang/String; = "com.android.music"

.field public static final PlaybackServiceName:Ljava/lang/String; = "com.android.music.MediaPlaybackService"

.field public static final PlayerName:Ljava/lang/String; = "Android Media Player"


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;-><init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected create(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    .locals 1
    .parameter "mgr"

    .prologue
    .line 38
    new-instance v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;-><init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V

    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "com.android.music.MediaPlaybackActivity"

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "com.android.music"

    return-object v0
.end method

.method public getPlaybackServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "com.android.music.MediaPlaybackService"

    return-object v0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "Android Media Player"

    return-object v0
.end method
