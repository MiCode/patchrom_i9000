.class public Lcom/android/phone/PhoneSlidingTab;
.super Landroid/view/ViewGroup;
.source "PhoneSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneSlidingTab$Slider;,
        Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

.field private mDensity:F

.field private mGrabbedState:I

.field private mHoldLeftOnTransition:Z

.field private mHoldRightOnTransition:Z

.field private mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

.field private mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

.field private mOrientation:I

.field private mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

.field private mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

.field private mThreshold:F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mTriggered:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/PhoneSlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 439
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v5, 0x1080224

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 445
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-boolean v2, p0, Lcom/android/phone/PhoneSlidingTab;->mHoldLeftOnTransition:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/phone/PhoneSlidingTab;->mHoldRightOnTransition:Z

    .line 69
    iput v3, p0, Lcom/android/phone/PhoneSlidingTab;->mGrabbedState:I

    .line 70
    iput-boolean v3, p0, Lcom/android/phone/PhoneSlidingTab;->mTriggered:Z

    .line 91
    new-instance v2, Lcom/android/phone/PhoneSlidingTab$1;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneSlidingTab$1;-><init>(Lcom/android/phone/PhoneSlidingTab;)V

    iput-object v2, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 448
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/phone/PhoneSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 450
    sget-object v2, Lcom/android/internal/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 451
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/phone/PhoneSlidingTab;->mOrientation:I

    .line 452
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 454
    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 455
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/phone/PhoneSlidingTab;->mDensity:F

    .line 458
    new-instance v2, Lcom/android/phone/PhoneSlidingTab$Slider;

    const v3, 0x1080216

    const v4, 0x1080205

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/phone/PhoneSlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 462
    new-instance v2, Lcom/android/phone/PhoneSlidingTab$Slider;

    const v3, 0x108021f

    const v4, 0x108020e

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/phone/PhoneSlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 468
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneSlidingTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->onAnimationDone()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/PhoneSlidingTab;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneSlidingTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->resetView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneSlidingTab;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneSlidingTab;)Lcom/android/phone/PhoneSlidingTab$Slider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneSlidingTab;)Lcom/android/phone/PhoneSlidingTab$Slider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    return-object v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 829
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneSlidingTab;->vibrate(J)V

    .line 830
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 833
    :cond_0
    return-void
.end method

.method private isHorizontal()Z
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/android/phone/PhoneSlidingTab;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveHandle(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 725
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .line 726
    .local v3, handle:Landroid/view/View;
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$700(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v0

    .line 727
    .local v0, content:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 728
    float-to-int v4, p1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 729
    .local v1, deltaX:I
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 730
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 736
    .end local v1           #deltaX:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->invalidate()V

    .line 737
    return-void

    .line 732
    :cond_0
    float-to-int v4, p2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 733
    .local v2, deltaY:I
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 734
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private onAnimationDone()V
    .locals 1

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->resetView()V

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimating:Z

    .line 698
    return-void
.end method

.method private resetView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 710
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneSlidingTab$Slider;->reset(Z)V

    .line 711
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneSlidingTab$Slider;->reset(Z)V

    .line 713
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 840
    iget v0, p0, Lcom/android/phone/PhoneSlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 841
    iput p1, p0, Lcom/android/phone/PhoneSlidingTab;->mGrabbedState:I

    .line 842
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/PhoneSlidingTab;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 846
    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 808
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    monitor-exit p0

    return-void

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private withinView(FFLandroid/view/View;)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "view"

    .prologue
    const/high16 v1, -0x3db8

    .line 701
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const v13, 0x3f2aaaab

    const v12, 0x3eaaaaaa

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 505
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 506
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 508
    .local v6, y:F
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimating:Z

    if-eqz v7, :cond_0

    move v7, v11

    .line 547
    :goto_0
    return v7

    .line 512
    :cond_0
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v1

    .line 513
    .local v1, leftHandle:Landroid/view/View;
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 514
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 516
    .local v2, leftHit:Z
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .line 517
    .local v3, rightHandle:Landroid/view/View;
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 518
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    .line 520
    .local v4, rightHit:Z
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    if-nez v7, :cond_1

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    move v7, v11

    .line 521
    goto :goto_0

    .line 524
    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v7, v10

    .line 547
    goto :goto_0

    .line 526
    :pswitch_0
    iput-boolean v10, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    .line 527
    iput-boolean v11, p0, Lcom/android/phone/PhoneSlidingTab;->mTriggered:Z

    .line 528
    const-wide/16 v7, 0x1e

    invoke-direct {p0, v7, v8}, Lcom/android/phone/PhoneSlidingTab;->vibrate(J)V

    .line 529
    if-eqz v2, :cond_3

    .line 530
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iput-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 531
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iput-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 532
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v13

    :goto_2
    iput v7, p0, Lcom/android/phone/PhoneSlidingTab;->mThreshold:F

    .line 533
    invoke-direct {p0, v10}, Lcom/android/phone/PhoneSlidingTab;->setGrabbedState(I)V

    .line 540
    :goto_3
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7, v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->setState(I)V

    .line 541
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/phone/PhoneSlidingTab$Slider;->showTarget()V

    .line 542
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/phone/PhoneSlidingTab$Slider;->hide()V

    goto :goto_1

    :cond_2
    move v7, v12

    .line 532
    goto :goto_2

    .line 535
    :cond_3
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iput-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 536
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iput-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 537
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v12

    :goto_4
    iput v7, p0, Lcom/android/phone/PhoneSlidingTab;->mThreshold:F

    .line 538
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/phone/PhoneSlidingTab;->setGrabbedState(I)V

    goto :goto_3

    :cond_4
    move v7, v13

    .line 537
    goto :goto_4

    .line 524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 717
    if-nez p1, :cond_0

    .line 722
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/PhoneSlidingTab$Slider;->layout(IIIII)V

    .line 721
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v5, v1

    :goto_2
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/PhoneSlidingTab$Slider;->layout(IIIII)V

    goto :goto_0

    .line 720
    :cond_1
    const/4 v1, 0x3

    move v5, v1

    goto :goto_1

    .line 721
    :cond_2
    const/4 v1, 0x2

    move v5, v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 472
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 473
    .local v8, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 475
    .local v9, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 476
    .local v1, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 478
    .local v2, heightSpecSize:I
    if-eqz v8, :cond_0

    if-nez v1, :cond_1

    .line 479
    :cond_0
    const-string v10, "SlidingTab"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SlidingTab cannot have UNSPECIFIED MeasureSpec(wspec="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", hspec="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "PhoneSlidingTabstack:"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    :cond_1
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->measure()V

    .line 485
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->measure()V

    .line 486
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->getTabWidth()I

    move-result v4

    .line 487
    .local v4, leftTabWidth:I
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->getTabWidth()I

    move-result v6

    .line 488
    .local v6, rightTabWidth:I
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->getTabHeight()I

    move-result v3

    .line 489
    .local v3, leftTabHeight:I
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->getTabHeight()I

    move-result v5

    .line 492
    .local v5, rightTabHeight:I
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 493
    add-int v10, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 494
    .local v7, width:I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 499
    .local v0, height:I
    :goto_0
    invoke-virtual {p0, v7, v0}, Lcom/android/phone/PhoneSlidingTab;->setMeasuredDimension(II)V

    .line 500
    return-void

    .line 496
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 497
    .restart local v7       #width:I
    add-int v10, v3, v5

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0       #height:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 575
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    if-eqz v7, :cond_0

    .line 576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 577
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 578
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 580
    .local v6, y:F
    packed-switch v0, :pswitch_data_0

    .line 623
    .end local v0           #action:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    if-nez v7, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_1
    move v7, v10

    :goto_1
    return v7

    .line 582
    .restart local v0       #action:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :pswitch_0
    invoke-direct {p0, v5, v6, p0}, Lcom/android/phone/PhoneSlidingTab;->withinView(FFLandroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 583
    invoke-direct {p0, v5, v6}, Lcom/android/phone/PhoneSlidingTab;->moveHandle(FF)V

    .line 584
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 585
    .local v2, position:F
    :goto_2
    iget v7, p0, Lcom/android/phone/PhoneSlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->getWidth()I

    move-result v8

    :goto_3
    int-to-float v8, v8

    mul-float v3, v7, v8

    .line 587
    .local v3, target:F
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 588
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iget-object v8, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    if-ne v7, v8, :cond_5

    cmpl-float v7, v2, v3

    if-lez v7, :cond_4

    move v4, v10

    .line 594
    .local v4, thresholdReached:Z
    :goto_4
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTriggered:Z

    if-nez v7, :cond_0

    if-eqz v4, :cond_0

    .line 595
    iput-boolean v10, p0, Lcom/android/phone/PhoneSlidingTab;->mTriggered:Z

    .line 596
    iput-boolean v9, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    .line 597
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7, v11}, Lcom/android/phone/PhoneSlidingTab$Slider;->setState(I)V

    .line 598
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iget-object v8, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    if-ne v7, v8, :cond_b

    move v1, v10

    .line 599
    .local v1, isLeft:Z
    :goto_5
    if-eqz v1, :cond_c

    move v7, v10

    :goto_6
    invoke-direct {p0, v7}, Lcom/android/phone/PhoneSlidingTab;->dispatchTriggerEvent(I)V

    .line 602
    if-eqz v1, :cond_d

    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mHoldLeftOnTransition:Z

    :goto_7
    invoke-virtual {p0, v7}, Lcom/android/phone/PhoneSlidingTab;->startAnimating(Z)V

    .line 603
    invoke-direct {p0, v9}, Lcom/android/phone/PhoneSlidingTab;->setGrabbedState(I)V

    goto :goto_0

    .end local v1           #isLeft:Z
    .end local v2           #position:F
    .end local v3           #target:F
    .end local v4           #thresholdReached:Z
    :cond_2
    move v2, v6

    .line 584
    goto :goto_2

    .line 585
    .restart local v2       #position:F
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->getHeight()I

    move-result v8

    goto :goto_3

    .restart local v3       #target:F
    :cond_4
    move v4, v9

    .line 588
    goto :goto_4

    :cond_5
    cmpg-float v7, v2, v3

    if-gez v7, :cond_6

    move v4, v10

    goto :goto_4

    :cond_6
    move v4, v9

    goto :goto_4

    .line 591
    :cond_7
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iget-object v8, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    if-ne v7, v8, :cond_9

    cmpg-float v7, v2, v3

    if-gez v7, :cond_8

    move v4, v10

    .restart local v4       #thresholdReached:Z
    :goto_8
    goto :goto_4

    .end local v4           #thresholdReached:Z
    :cond_8
    move v4, v9

    goto :goto_8

    :cond_9
    cmpl-float v7, v2, v3

    if-lez v7, :cond_a

    move v4, v10

    goto :goto_8

    :cond_a
    move v4, v9

    goto :goto_8

    .restart local v4       #thresholdReached:Z
    :cond_b
    move v1, v9

    .line 598
    goto :goto_5

    .restart local v1       #isLeft:Z
    :cond_c
    move v7, v11

    .line 599
    goto :goto_6

    .line 602
    :cond_d
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mHoldRightOnTransition:Z

    goto :goto_7

    .line 611
    .end local v1           #isLeft:Z
    .end local v2           #position:F
    .end local v3           #target:F
    .end local v4           #thresholdReached:Z
    :cond_e
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    .line 612
    iput-boolean v9, p0, Lcom/android/phone/PhoneSlidingTab;->mTriggered:Z

    .line 613
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7, v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->show(Z)V

    .line 614
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7, v9}, Lcom/android/phone/PhoneSlidingTab$Slider;->reset(Z)V

    .line 615
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/phone/PhoneSlidingTab$Slider;->hideTarget()V

    .line 616
    iput-object v8, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 617
    iput-object v8, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 618
    invoke-direct {p0, v9}, Lcom/android/phone/PhoneSlidingTab;->setGrabbedState(I)V

    goto/16 :goto_0

    .end local v0           #action:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_f
    move v7, v9

    .line 623
    goto/16 :goto_1

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->reset(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->reset(Z)V

    .line 559
    if-nez p1, :cond_0

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimating:Z

    .line 562
    :cond_0
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->setHintText(I)V

    .line 767
    :cond_0
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 1
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->setIcon(I)V

    .line 752
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/phone/PhoneSlidingTab$Slider;->setTarget(I)V

    .line 753
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/phone/PhoneSlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 754
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/phone/PhoneSlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 755
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/phone/PhoneSlidingTab$Slider;->updateDrawableStates()V

    .line 756
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 821
    iput-object p1, p0, Lcom/android/phone/PhoneSlidingTab;->mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

    .line 822
    return-void
.end method

.method public setRightHintText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->setHintText(I)V

    .line 797
    :cond_0
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 1
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->setIcon(I)V

    .line 782
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/phone/PhoneSlidingTab$Slider;->setTarget(I)V

    .line 783
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/phone/PhoneSlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 784
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/phone/PhoneSlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 785
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/phone/PhoneSlidingTab$Slider;->updateDrawableStates()V

    .line 786
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneSlidingTab;->reset(Z)V

    .line 570
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 571
    return-void
.end method

.method startAnimating(Z)V
    .locals 24
    .parameter "holdAfter"

    .prologue
    .line 627
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneSlidingTab;->mAnimating:Z

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    move-object v13, v0

    .line 631
    .local v13, slider:Lcom/android/phone/PhoneSlidingTab$Slider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    move-object v11, v0

    .line 634
    .local v11, other:Lcom/android/phone/PhoneSlidingTab$Slider;
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 635
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getRight()I

    move-result v12

    .line 636
    .local v12, right:I
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v19

    .line 637
    .local v19, width:I
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getLeft()I

    move-result v10

    .line 638
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneSlidingTab;->getWidth()I

    move-result v18

    .line 639
    .local v18, viewWidth:I
    if-eqz p1, :cond_0

    const/16 v20, 0x0

    move/from16 v9, v20

    .line 640
    .local v9, holdOffset:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    move-object/from16 v20, v0

    move-object v0, v13

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    add-int v20, v12, v18

    sub-int v20, v20, v9

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v6, v20

    .line 642
    .local v6, dx:I
    :goto_1
    const/4 v7, 0x0

    .line 653
    .end local v10           #left:I
    .end local v12           #right:I
    .end local v18           #viewWidth:I
    .end local v19           #width:I
    .local v7, dy:I
    :goto_2
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move v0, v7

    int-to-float v0, v0

    move/from16 v23, v0

    move-object v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 654
    .local v15, trans1:Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    move-object v0, v15

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 655
    new-instance v20, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 656
    const/16 v20, 0x1

    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 657
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move v0, v7

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 658
    .local v16, trans2:Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 659
    new-instance v20, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 660
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 662
    new-instance v20, Lcom/android/phone/PhoneSlidingTab$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneSlidingTab$2;-><init>(Lcom/android/phone/PhoneSlidingTab;ZII)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 691
    invoke-virtual {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->hideTarget()V

    .line 692
    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneSlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 693
    return-void

    .end local v6           #dx:I
    .end local v7           #dy:I
    .end local v9           #holdOffset:I
    .end local v15           #trans1:Landroid/view/animation/Animation;
    .end local v16           #trans2:Landroid/view/animation/Animation;
    .restart local v10       #left:I
    .restart local v12       #right:I
    .restart local v18       #viewWidth:I
    .restart local v19       #width:I
    :cond_0
    move/from16 v9, v19

    .line 639
    goto/16 :goto_0

    .line 640
    .restart local v9       #holdOffset:I
    :cond_1
    sub-int v20, v18, v10

    add-int v20, v20, v18

    sub-int v20, v20, v9

    move/from16 v6, v20

    goto/16 :goto_1

    .line 644
    .end local v9           #holdOffset:I
    .end local v10           #left:I
    .end local v12           #right:I
    .end local v18           #viewWidth:I
    .end local v19           #width:I
    :cond_2
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getTop()I

    move-result v14

    .line 645
    .local v14, top:I
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    .line 646
    .local v5, bottom:I
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    .line 647
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneSlidingTab;->getHeight()I

    move-result v17

    .line 648
    .local v17, viewHeight:I
    if-eqz p1, :cond_3

    const/16 v20, 0x0

    move/from16 v9, v20

    .line 649
    .restart local v9       #holdOffset:I
    :goto_3
    const/4 v6, 0x0

    .line 650
    .restart local v6       #dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    move-object/from16 v20, v0

    move-object v0, v13

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    add-int v20, v14, v17

    sub-int v20, v20, v9

    move/from16 v7, v20

    .restart local v7       #dy:I
    :goto_4
    goto/16 :goto_2

    .end local v6           #dx:I
    .end local v7           #dy:I
    .end local v9           #holdOffset:I
    :cond_3
    move v9, v8

    .line 648
    goto :goto_3

    .line 650
    .restart local v6       #dx:I
    .restart local v9       #holdOffset:I
    :cond_4
    sub-int v20, v17, v5

    add-int v20, v20, v17

    sub-int v20, v20, v9

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v7, v20

    goto :goto_4
.end method
