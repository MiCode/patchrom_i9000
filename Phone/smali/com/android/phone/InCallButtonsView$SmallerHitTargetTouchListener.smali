.class Lcom/android/phone/InCallButtonsView$SmallerHitTargetTouchListener;
.super Ljava/lang/Object;
.source "InCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallButtonsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmallerHitTargetTouchListener"
.end annotation


# instance fields
.field mDownEventHit:Z

.field final synthetic this$0:Lcom/android/phone/InCallButtonsView;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallButtonsView;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView$SmallerHitTargetTouchListener;->this$0:Lcom/android/phone/InCallButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 353
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    .line 357
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v0, v6

    .line 358
    .local v0, touchX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v2, v6

    .line 360
    .local v2, touchY:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 361
    .local v5, viewWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 364
    .local v4, viewHeight:I
    mul-int/lit8 v6, v0, 0x64

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    float-to-int v1, v6

    .line 365
    .local v1, touchXPercent:I
    mul-int/lit8 v6, v2, 0x64

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    float-to-int v3, v6

    .line 374
    .local v3, touchYPercent:I
    const/16 v6, 0x19

    if-lt v1, v6, :cond_0

    const/16 v6, 0x4b

    if-gt v1, v6, :cond_0

    const/16 v6, 0xa

    if-lt v3, v6, :cond_0

    const/16 v6, 0x5a

    if-le v3, v6, :cond_1

    .line 378
    :cond_0
    iput-boolean v8, p0, Lcom/android/phone/InCallButtonsView$SmallerHitTargetTouchListener;->mDownEventHit:Z

    move v6, v9

    .line 393
    .end local v0           #touchX:I
    .end local v1           #touchXPercent:I
    .end local v2           #touchY:I
    .end local v3           #touchYPercent:I
    .end local v4           #viewHeight:I
    .end local v5           #viewWidth:I
    :goto_0
    return v6

    .line 383
    .restart local v0       #touchX:I
    .restart local v1       #touchXPercent:I
    .restart local v2       #touchY:I
    .restart local v3       #touchYPercent:I
    .restart local v4       #viewHeight:I
    .restart local v5       #viewWidth:I
    :cond_1
    iput-boolean v9, p0, Lcom/android/phone/InCallButtonsView$SmallerHitTargetTouchListener;->mDownEventHit:Z

    move v6, v8

    .line 384
    goto :goto_0

    .line 393
    .end local v0           #touchX:I
    .end local v1           #touchXPercent:I
    .end local v2           #touchY:I
    .end local v3           #touchYPercent:I
    .end local v4           #viewHeight:I
    .end local v5           #viewWidth:I
    :cond_2
    iget-boolean v6, p0, Lcom/android/phone/InCallButtonsView$SmallerHitTargetTouchListener;->mDownEventHit:Z

    if-nez v6, :cond_3

    move v6, v9

    goto :goto_0

    :cond_3
    move v6, v8

    goto :goto_0
.end method
