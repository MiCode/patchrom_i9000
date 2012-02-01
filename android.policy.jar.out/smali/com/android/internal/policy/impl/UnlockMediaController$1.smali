.class Lcom/android/internal/policy/impl/UnlockMediaController$1;
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
.field private mMusicMovingBoxOffsetTop:I

.field private mMusicMovingBoxOrigTop:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockMediaController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private musicBoxMoveTo(Landroid/view/View;II)V
    .locals 2
    .parameter "v"
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$800(Lcom/android/internal/policy/impl/UnlockMediaController;)I

    move-result v0

    .local v0, maxY:I
    if-le p3, v0, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/UnlockMediaController$1;->viewMoveTo(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/UnlockMediaController$1;->viewMoveTo(Landroid/view/View;II)V

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v0, v1

    .local v0, rawY:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #calls: Lcom/android/internal/policy/impl/UnlockMediaController;->sendTouchDetection()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$000(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->mMusicMovingBoxOrigTop:I

    iget v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->mMusicMovingBoxOrigTop:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->mMusicMovingBoxOffsetTop:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->mMusicMovingBoxOffsetTop:I

    sub-int v2, v0, v2

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/policy/impl/UnlockMediaController$1;->musicBoxMoveTo(Landroid/view/View;II)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$200(Lcom/android/internal/policy/impl/UnlockMediaController;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #setter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$302(Lcom/android/internal/policy/impl/UnlockMediaController;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$400(Lcom/android/internal/policy/impl/UnlockMediaController;)I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/internal/policy/impl/UnlockMediaController$1;->viewMoveTo(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->forceLayout()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$500(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$600(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x10803a1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$300(Lcom/android/internal/policy/impl/UnlockMediaController;)Z

    move-result v2

    #calls: Lcom/android/internal/policy/impl/UnlockMediaController;->sendMediaControllerOpen(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$700(Lcom/android/internal/policy/impl/UnlockMediaController;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #setter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$302(Lcom/android/internal/policy/impl/UnlockMediaController;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$200(Lcom/android/internal/policy/impl/UnlockMediaController;)I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/internal/policy/impl/UnlockMediaController$1;->viewMoveTo(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->forceLayout()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$500(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$600(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x10803a3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public viewMoveTo(Landroid/view/View;II)V
    .locals 4
    .parameter "v"
    .parameter "absX"
    .parameter "absY"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .local v1, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .local v0, height:I
    add-int v2, p2, v1

    add-int v3, p3, v0

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
