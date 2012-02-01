.class Lcom/android/internal/policy/impl/UnlockMediaController$3;
.super Ljava/lang/Object;
.source "UnlockMediaController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UnlockMediaController;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockMediaController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$3;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$3;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #calls: Lcom/android/internal/policy/impl/UnlockMediaController;->sendTouchDetection()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$000(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$3;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mFFLongPressed:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.down"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v2, "lockscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    return v1
.end method
