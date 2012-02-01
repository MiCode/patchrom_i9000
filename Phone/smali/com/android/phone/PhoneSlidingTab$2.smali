.class Lcom/android/phone/PhoneSlidingTab$2;
.super Ljava/lang/Object;
.source "PhoneSlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneSlidingTab;->startAnimating(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneSlidingTab;

.field final synthetic val$dx:I

.field final synthetic val$dy:I

.field final synthetic val$holdAfter:Z


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneSlidingTab;ZII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/phone/PhoneSlidingTab$2;->this$0:Lcom/android/phone/PhoneSlidingTab;

    iput-boolean p2, p0, Lcom/android/phone/PhoneSlidingTab$2;->val$holdAfter:Z

    iput p3, p0, Lcom/android/phone/PhoneSlidingTab$2;->val$dx:I

    iput p4, p0, Lcom/android/phone/PhoneSlidingTab$2;->val$dy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 665
    iget-boolean v1, p0, Lcom/android/phone/PhoneSlidingTab$2;->val$holdAfter:Z

    if-eqz v1, :cond_0

    .line 666
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/phone/PhoneSlidingTab$2;->val$dx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/phone/PhoneSlidingTab$2;->val$dx:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/phone/PhoneSlidingTab$2;->val$dy:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/phone/PhoneSlidingTab$2;->val$dy:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 667
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 668
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$2;->this$0:Lcom/android/phone/PhoneSlidingTab;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/PhoneSlidingTab;->mAnimating:Z
    invoke-static {v1, v2}, Lcom/android/phone/PhoneSlidingTab;->access$202(Lcom/android/phone/PhoneSlidingTab;Z)Z

    .line 674
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$2;->this$0:Lcom/android/phone/PhoneSlidingTab;

    #getter for: Lcom/android/phone/PhoneSlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v1}, Lcom/android/phone/PhoneSlidingTab;->access$400(Lcom/android/phone/PhoneSlidingTab;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 677
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$2;->this$0:Lcom/android/phone/PhoneSlidingTab;

    #getter for: Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;
    invoke-static {v1}, Lcom/android/phone/PhoneSlidingTab;->access$500(Lcom/android/phone/PhoneSlidingTab;)Lcom/android/phone/PhoneSlidingTab$Slider;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/android/phone/PhoneSlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 678
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$2;->this$0:Lcom/android/phone/PhoneSlidingTab;

    #getter for: Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;
    invoke-static {v1}, Lcom/android/phone/PhoneSlidingTab;->access$600(Lcom/android/phone/PhoneSlidingTab;)Lcom/android/phone/PhoneSlidingTab$Slider;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/android/phone/PhoneSlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 679
    return-void

    .line 670
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 671
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 672
    iget-object v1, p0, Lcom/android/phone/PhoneSlidingTab$2;->this$0:Lcom/android/phone/PhoneSlidingTab;

    #calls: Lcom/android/phone/PhoneSlidingTab;->resetView()V
    invoke-static {v1}, Lcom/android/phone/PhoneSlidingTab;->access$300(Lcom/android/phone/PhoneSlidingTab;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 683
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 687
    return-void
.end method
