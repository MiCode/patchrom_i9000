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
    .line 208
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
    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$800(Lcom/android/internal/policy/impl/UnlockMediaController;)I

    move-result v0

    .line 263
    .local v0, maxY:I
    if-le p3, v0, :cond_0

    .line 264
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/UnlockMediaController$1;->viewMoveTo(Landroid/view/View;II)V

    .line 268
    :goto_0
    return-void

    .line 266
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

    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v0, v1

    .line 223
    .local v0, rawY:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #calls: Lcom/android/internal/policy/impl/UnlockMediaController;->sendTouchDetection()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$000(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 258
    :goto_0
    return v4

    .line 227
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->mMusicMovingBoxOrigTop:I

    .line 228
    iget v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->mMusicMovingBoxOrigTop:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->mMusicMovingBoxOffsetTop:I

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->mMusicMovingBoxOffsetTop:I

    sub-int v2, v0, v2

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/policy/impl/UnlockMediaController$1;->musicBoxMoveTo(Landroid/view/View;II)V

    goto :goto_0

    .line 238
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

    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #setter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$302(Lcom/android/internal/policy/impl/UnlockMediaController;Z)Z

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$400(Lcom/android/internal/policy/impl/UnlockMediaController;)I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/internal/policy/impl/UnlockMediaController$1;->viewMoveTo(Landroid/view/View;II)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->forceLayout()V

    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$500(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 244
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$600(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x10803a1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 255
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$300(Lcom/android/internal/policy/impl/UnlockMediaController;)Z

    move-result v2

    #calls: Lcom/android/internal/policy/impl/UnlockMediaController;->sendMediaControllerOpen(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$700(Lcom/android/internal/policy/impl/UnlockMediaController;Z)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #setter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$302(Lcom/android/internal/policy/impl/UnlockMediaController;Z)Z

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$200(Lcom/android/internal/policy/impl/UnlockMediaController;)I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/internal/policy/impl/UnlockMediaController$1;->viewMoveTo(Landroid/view/View;II)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->forceLayout()V

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$500(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$1;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$600(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x10803a3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 225
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
    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 215
    .local v1, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 216
    .local v0, height:I
    add-int v2, p2, v1

    add-int v3, p3, v0

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 217
    return-void
.end method
