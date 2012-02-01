.class Lcom/android/internal/policy/impl/PuzzleLockScreen$2;
.super Ljava/lang/Object;
.source "PuzzleLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PuzzleLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v0, v4

    .local v0, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v1, v4

    .local v1, rawY:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1202(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTop()I

    move-result v5

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1402(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return v11

    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$302(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTop()I

    move-result v5

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$402(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v0, v5

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$602(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v6

    add-int/2addr v5, v6

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v6

    sub-int/2addr v5, v6

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1702(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    #calls: Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2202(Lcom/android/internal/policy/impl/PuzzleLockScreen;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/PuzzleLockScreen$2$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$2$1;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen$2;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v11, :cond_0

    const-string v4, "file:///system/media/audio/ui/TW_Unlock_Glass.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, soundUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .local v2, sfx:Landroid/media/Ringtone;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v11}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_0

    :cond_1
    const-string v4, "PuzzleLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSounds: failed to load ringtone from uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #sfx:Landroid/media/Ringtone;
    .end local v3           #soundUri:Landroid/net/Uri;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->moveTo(II)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v4, v11}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->moveTo(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
