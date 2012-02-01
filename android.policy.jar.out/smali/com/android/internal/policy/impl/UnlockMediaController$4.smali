.class Lcom/android/internal/policy/impl/UnlockMediaController$4;
.super Ljava/lang/Object;
.source "UnlockMediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$4;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const-string v6, "musicplayer.from"

    const-string v5, "lockscreen"

    const-string v4, "com.android.music.musicservicecommand.ff.up"

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$4;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #calls: Lcom/android/internal/policy/impl/UnlockMediaController;->sendTouchDetection()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$000(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102028a

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$4;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mNextButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$900(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageButton;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$4;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mFFLongPressed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$4;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mFFLongPressed:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$4;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mFFLongPressed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$4;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mFFLongPressed:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
