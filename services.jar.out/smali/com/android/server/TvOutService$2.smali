.class Lcom/android/server/TvOutService$2;
.super Landroid/content/BroadcastReceiver;
.source "TvOutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvOutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvOutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/TvOutService$2;->this$0:Lcom/android/server/TvOutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, " tvOutSetImageString BroadcastReceiver  broadcast received"

    const-string v3, "TvOut-Observer"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TvOut-Observer"

    const-string v1, " tvOutSetImageString BroadcastReceiver  broadcast received"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.locale.changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TvOut-Observer"

    const-string v1, " tvOutSetImageString BroadcastReceiver  broadcast received"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/TvOutService$2;->this$0:Lcom/android/server/TvOutService;

    #calls: Lcom/android/server/TvOutService;->tvOutSetImageString()V
    invoke-static {v1}, Lcom/android/server/TvOutService;->access$500(Lcom/android/server/TvOutService;)V

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TvOut-Observer"

    const-string v1, "ACTION_SCREEN_OFF"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/TvOutService;->access$602(Z)Z

    iget-object v1, p0, Lcom/android/server/TvOutService$2;->this$0:Lcom/android/server/TvOutService;

    invoke-virtual {v1}, Lcom/android/server/TvOutService;->updateTVoutOnScreenOnOff()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TvOut-Observer"

    const-string v1, "ACTION_SCREEN_ON "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/TvOutService;->access$602(Z)Z

    iget-object v1, p0, Lcom/android/server/TvOutService$2;->this$0:Lcom/android/server/TvOutService;

    invoke-virtual {v1}, Lcom/android/server/TvOutService;->updateTVoutOnScreenOnOff()V

    goto :goto_0
.end method
