.class Landroid/widget/BounceController$BounceScrollRunnableDefault;
.super Ljava/lang/Object;
.source "BounceController.java"

# interfaces
.implements Landroid/widget/BounceController$BounceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BounceScrollRunnableDefault"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "BounceScrollRunnableDefault"


# instance fields
.field mBounceDuration:F

.field mBounceExtentCoef:F

.field private mStartFromDrag:Z

.field private mStartTime:J

.field final synthetic this$0:Landroid/widget/BounceController;


# direct methods
.method public constructor <init>(Landroid/widget/BounceController;)V
    .locals 1
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/high16 v0, 0x43c8

    iput v0, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 653
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 662
    return-void
.end method

.method private computeBounceExtent(F)F
    .locals 3
    .parameter "timeFraction"

    .prologue
    .line 714
    iget v0, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    sget-object v1, Landroid/widget/BounceController;->mTweener:Landroid/widget/BounceController$Tweener;

    iget-boolean v2, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    invoke-interface {v1, v2, p1}, Landroid/widget/BounceController$Tweener;->compute(ZF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v0}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 756
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 726
    .local v0, tNow:J
    iget-wide v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mStartTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    iget v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    div-float v2, v3, v4

    .line 728
    .local v2, timeFraction:F
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-direct {p0, v2}, Landroid/widget/BounceController$BounceScrollRunnableDefault;->computeBounceExtent(F)F

    move-result v4

    iput v4, v3, Landroid/widget/BounceController;->mBounceExtent:F

    .line 735
    const/high16 v3, 0x3f80

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 736
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/BounceController;->mBounceExtent:F

    .line 738
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    iget-object v3, v3, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v3, :cond_0

    .line 739
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    iget-object v3, v3, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v3}, Landroid/widget/EdgeGlow;->onRelease2()V

    .line 740
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    iget-object v3, v3, Landroid/widget/BounceController;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v3}, Landroid/widget/EdgeGlow;->onRelease2()V

    .line 743
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BounceController$BounceScrollRunnableDefault;->cancel()V

    .line 745
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 752
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 751
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public start(F)V
    .locals 10
    .parameter "flingSpeed"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, -0x4080

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 670
    invoke-virtual {p0}, Landroid/widget/BounceController$BounceScrollRunnableDefault;->cancel()V

    .line 672
    cmpl-float v3, p1, v5

    if-nez v3, :cond_2

    .line 673
    iput-boolean v8, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    .line 675
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    iget v3, v3, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mOrientation:I
    invoke-static {v4}, Landroid/widget/BounceController;->access$000(Landroid/widget/BounceController;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v4}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    div-float v0, v3, v4

    .line 678
    .local v0, extentRatio:F
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mDurations:[I
    invoke-static {v3}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v3

    aget v3, v3, v8

    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mDurations:[I
    invoke-static {v4}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v4

    aget v4, v4, v6

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mDurations:[I
    invoke-static {v4}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v4

    aget v4, v4, v6

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 681
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    iget v3, v3, Landroid/widget/BounceController;->mBounceExtent:F

    iput v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 704
    .end local v0           #extentRatio:F
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mStartTime:J

    .line 706
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 711
    return-void

    .line 675
    :cond_1
    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v4}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    goto :goto_0

    .line 684
    :cond_2
    iput-boolean v6, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    .line 686
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mMaxFlingSpeed:F
    invoke-static {v4}, Landroid/widget/BounceController;->access$300(Landroid/widget/BounceController;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 687
    cmpg-float v3, p1, v5

    if-gez v3, :cond_4

    move v3, v7

    :goto_2
    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mMaxFlingSpeed:F
    invoke-static {v4}, Landroid/widget/BounceController;->access$300(Landroid/widget/BounceController;)F

    move-result v4

    mul-float p1, v3, v4

    .line 690
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mMaxFlingSpeed:F
    invoke-static {v4}, Landroid/widget/BounceController;->access$300(Landroid/widget/BounceController;)F

    move-result v4

    div-float v2, v3, v4

    .line 692
    .local v2, speedRatio:F
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mDurations:[I
    invoke-static {v3}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mDurations:[I
    invoke-static {v4}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v4

    aget v4, v4, v9

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mDurations:[I
    invoke-static {v4}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v4

    aget v4, v4, v9

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 695
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mOrientation:I
    invoke-static {v3}, Landroid/widget/BounceController;->access$000(Landroid/widget/BounceController;)I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    :goto_3
    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mMaxBounceRatio:F
    invoke-static {v4}, Landroid/widget/BounceController;->access$400(Landroid/widget/BounceController;)F

    move-result v4

    mul-float v1, v3, v4

    .line 698
    .local v1, maxBounceExtent:F
    mul-float v3, v1, v2

    iput v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 700
    cmpl-float v3, p1, v5

    if-lez v3, :cond_0

    .line 701
    iget v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    mul-float/2addr v3, v7

    iput v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    goto/16 :goto_1

    .line 687
    .end local v1           #maxBounceExtent:F
    .end local v2           #speedRatio:F
    :cond_4
    const/high16 v3, 0x3f80

    goto :goto_2

    .line 695
    .restart local v2       #speedRatio:F
    :cond_5
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    #getter for: Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    goto :goto_3
.end method
