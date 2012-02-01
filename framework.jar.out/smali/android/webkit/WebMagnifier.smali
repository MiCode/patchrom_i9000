.class Landroid/webkit/WebMagnifier;
.super Landroid/view/View;
.source "WebMagnifier.java"


# static fields
.field static final BOUNDARY_STOROKE_WIDTH:F = 3.0f

.field static final DEBUG:Z = false

.field static final LOGTAG:Ljava/lang/String; = "WebMagnifier"

.field static final MAGNIFIER_HEIGHT:I = 0x64

.field static final MAGNIFIER_PADDING:I = 0x5

.field static final MAGNIFIER_WIDTH:I = 0xc8

.field static final ROUND_DIAMETER:F = 10.0f

.field static SHOW_HEIGHT:I = 0x0

.field static SHOW_WIDTH:I = 0x0

.field static final STROKE_WIDTH:I = 0x1

.field static final TAIL_HEIGHT:I = 0x14

.field static final TAIL_WIDTH:I = 0x1e

.field static final ZOOM_SCALE:F = 1.2f


# instance fields
.field mBgPath:Landroid/graphics/Path;

.field mBoundaryPaint:Landroid/graphics/Paint;

.field final mContext:Landroid/content/Context;

.field mGarbageBgPath:Landroid/graphics/Path;

.field mMagnifierPath:Landroid/graphics/Path;

.field mPathBgFill:Landroid/graphics/Path;

.field mShowX:I

.field mShowY:I

.field mSrcView:Landroid/view/View;

.field mSrcX:I

.field mSrcY:I

.field mViewHeight:I

.field mViewWidth:I

.field mWebView:Landroid/view/View;

.field mWindowManager:Landroid/view/WindowManager;

.field mbShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xc8

    sput v0, Landroid/webkit/WebMagnifier;->SHOW_WIDTH:I

    const/16 v0, 0x78

    sput v0, Landroid/webkit/WebMagnifier;->SHOW_HEIGHT:I

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "webView"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    iput-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    iput-object p1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/webkit/WebMagnifier;->setPadding(IIII)V

    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    return-void
.end method

.method private setShowXY(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    iput p1, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    iput p2, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, winloc:[I
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/2addr v1, p1

    sget v2, Landroid/webkit/WebMagnifier;->SHOW_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    const/4 v1, 0x1

    aget v1, v0, v1

    add-int/2addr v1, p2

    sget v2, Landroid/webkit/WebMagnifier;->SHOW_HEIGHT:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    iget v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    const/16 v2, 0x28

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateDrawingPath()V

    return-void
.end method

.method private updateDrawingPath()V
    .locals 15

    .prologue
    const/16 v14, 0xf

    const/4 v13, 0x5

    const/4 v12, 0x0

    const/high16 v11, 0x4120

    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    const/16 v4, 0xc7

    .local v4, w:I
    const/16 v0, 0x63

    .local v0, h:I
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v10, v0

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v11, v11, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v7, v14

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x14

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0xf

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v6, v14

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xf

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x5

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit16 v9, v9, 0xc8

    sub-int/2addr v9, v13

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v10, v10, 0x64

    sub-int/2addr v10, v13

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v11, v11, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    new-instance v2, Landroid/graphics/Region;

    iget v5, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v6, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    invoke-direct {v2, v12, v12, v5, v6}, Landroid/graphics/Region;-><init>(IIII)V

    .local v2, regionClip:Landroid/graphics/Region;
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .local v1, regionBgFill:Landroid/graphics/Region;
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .local v3, regionMagnifier:Landroid/graphics/Region;
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method drawMagnifierContents(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v4, 0xa6

    .local v4, zoomarea_width:I
    const/16 v3, 0x53

    .local v3, zoomarea_height:I
    const/4 v5, 0x2

    new-array v2, v5, [I

    .local v2, winloc:[I
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    iget v5, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    aget v6, v2, v8

    add-int/2addr v5, v6

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    aget v7, v2, v9

    add-int/2addr v6, v7

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    aget v8, v2, v8

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    aget v9, v2, v9

    add-int/2addr v8, v9

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v1, srcRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .local v0, matrix:Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit16 v9, v9, 0xc8

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v10, v10, 0x64

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v5, v6, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    iput v1, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_0
.end method

.method move(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    invoke-virtual {p0}, Landroid/webkit/WebMagnifier;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x100

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .local v2, saveCount:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .local v1, paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .local v0, gPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v3, 0x4000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0, p1}, Landroid/webkit/WebMagnifier;->drawMagnifierContents(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method show(II)V
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    iget-object v9, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    .local v9, srcView:Landroid/view/View;
    :goto_0
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .end local v9           #srcView:Landroid/view/View;
    check-cast v9, Landroid/view/View;

    .restart local v9       #srcView:Landroid/view/View;
    goto :goto_0

    :cond_0
    if-nez v9, :cond_2

    const-string v1, "WebMagnifier"

    const-string v2, "show : Cannot find Decor View."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-object v9, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .local v8, display:Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    iget-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eq v1, v10, :cond_1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v2, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    const/16 v5, 0x3e8

    const/16 v6, 0x208

    const/4 v7, -0x3

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v10, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_1
.end method
