.class Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlayerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid$1;->this$0:Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "AVRCP.MediaPlayerAndroid"

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v2, "AVRCP.MediaPlayerAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, type:I
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid$1;->this$0:Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;

    iget-object v2, v2, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid$1;->this$0:Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;

    invoke-virtual {v2, v3, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->onStateChanged(Lcom/broadcom/bt/service/avrcp/MediaPlayer;I)V

    goto :goto_0

    :cond_1
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const-string v2, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    const-string v2, "AVRCP.MediaPlayerAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set change type as general PlayStateChanged for unknown intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
