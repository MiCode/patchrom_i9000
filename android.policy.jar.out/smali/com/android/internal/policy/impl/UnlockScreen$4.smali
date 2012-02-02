.class Lcom/android/internal/policy/impl/UnlockScreen$4;
.super Landroid/os/CountDownTimer;
.source "UnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnlockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockScreen;->access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/UnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040322

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/UnlockScreen;->mInstructions:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UnlockScreen;->access$502(Lcom/android/internal/policy/impl/UnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #calls: Lcom/android/internal/policy/impl/UnlockScreen;->updateStatusLines()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockScreen;->access$600(Lcom/android/internal/policy/impl/UnlockScreen;)V

    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UnlockScreen;->access$802(Lcom/android/internal/policy/impl/UnlockScreen;I)I

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockScreen;->access$1000(Lcom/android/internal/policy/impl/UnlockScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;

    #calls: Lcom/android/internal/policy/impl/UnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UnlockScreen;->access$1100(Lcom/android/internal/policy/impl/UnlockScreen;Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;

    #calls: Lcom/android/internal/policy/impl/UnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UnlockScreen;->access$1100(Lcom/android/internal/policy/impl/UnlockScreen;Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 575
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 576
    .local v0, secondsRemaining:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040338

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/UnlockScreen;->mInstructions:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$502(Lcom/android/internal/policy/impl/UnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #calls: Lcom/android/internal/policy/impl/UnlockScreen;->updateStatusLines()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockScreen;->access$600(Lcom/android/internal/policy/impl/UnlockScreen;)V

    .line 580
    return-void
.end method
