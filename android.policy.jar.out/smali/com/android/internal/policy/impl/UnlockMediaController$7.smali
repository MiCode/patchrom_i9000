.class Lcom/android/internal/policy/impl/UnlockMediaController$7;
.super Ljava/lang/Object;
.source "UnlockMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnlockMediaController;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$7;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iput-object p2, p0, Lcom/android/internal/policy/impl/UnlockMediaController$7;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController$7;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #calls: Lcom/android/internal/policy/impl/UnlockMediaController;->sendTouchDetection()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$000(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController$7;->val$mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
