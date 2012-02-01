.class Landroid/widget/TextView$InsertionPointCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_FADE_OUT:I = 0xbb8


# instance fields
.field private mCurrentOffset:I

.field private final mHandle:Landroid/widget/TextView$HandleView;

.field private final mHider:Ljava/lang/Runnable;

.field private mPreviousEnd:I

.field private mPreviousStart:I

.field private mSwapCursorController:Z

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousStart:I

    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousEnd:I

    iput-boolean v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mSwapCursorController:Z

    new-instance v0, Landroid/widget/TextView$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InsertionPointCursorController$1;-><init>(Landroid/widget/TextView$InsertionPointCursorController;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/TextView$HandleView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    return-void
.end method

.method private hideDelayed(I)V
    .locals 4
    .parameter "msec"

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public doSwapCursorController()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public endHandleVisible()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x270f

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x270f

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x270f

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIsInTextSelectionMode:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetChanged(Landroid/widget/TextView$HandleView;)Z
    .locals 3
    .parameter "handle"

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousStart:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    :cond_0
    return-void
.end method

.method public resetSwapCursorController()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mSwapCursorController:Z

    return-void
.end method

.method public setPreviousOffset()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousStart:I

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousEnd:I

    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIsCursorControllerOn:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->show()V

    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    goto :goto_0
.end method

.method public updatePosition()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .local v0, offset:I
    if-gez v0, :cond_0

    const-string v1, "TextView"

    const-string v2, "Update cursor controller position called with no cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    goto :goto_0
.end method

.method public updatePosition(Landroid/widget/TextView$HandleView;II)V
    .locals 3
    .parameter "handle"
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, previousOffset:I
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p2, p3, v1}, Landroid/widget/TextView;->getHysteresisOffset(III)I

    move-result v0

    .local v0, offset:I
    if-eq v0, v1, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    :cond_0
    const/16 v2, 0xbb8

    invoke-direct {p0, v2}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    return-void
.end method
