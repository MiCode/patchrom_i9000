.class Lcom/android/server/FMRadioService$9;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private off()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$400(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "force stop making off: FM"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->cancelSeek()V

    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    const/4 v1, 0x6

    #calls: Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    invoke-static {v0, v2, v1, v2}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;ZIZ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .local v1, packageName:Ljava/lang/String;
    const-string v3, "com.sec.android.app.fm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/FMRadioService$9;->off()V

    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method
