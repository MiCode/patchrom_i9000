.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TN"
.end annotation


# instance fields
.field final mHide:Ljava/lang/Runnable;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mWM:Landroid/view/WindowManagerImpl;

.field final synthetic this$0:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 316
    iput-object p1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 300
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    .line 306
    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 312
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 319
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 320
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 321
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 325
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 326
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 327
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 328
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v1, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 389
    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Toast;->mView:Landroid/view/View;

    .line 391
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 350
    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v1, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eq v1, v2, :cond_3

    .line 352
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 353
    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput-object v2, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    .line 354
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    .line 355
    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v0, v1, Landroid/widget/Toast;->mGravity:I

    .line 356
    .local v0, gravity:I
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 357
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 358
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 360
    :cond_0
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    .line 361
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 363
    :cond_1
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 364
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 365
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mVerticalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 366
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mHorizontalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 367
    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v1, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 370
    iget-object v1, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 373
    :cond_2
    iget-object v1, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .end local v0           #gravity:I
    :cond_3
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method
