.class public Landroid/webkit/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field private static CharControllerHeight:I = 0x0

.field private static CharControllerWidth:I = 0x0

.field public static final HANDLE_CHARACTER_LEFT:I = 0x0

.field public static final HANDLE_CHARACTER_RIGHT:I = 0x1

.field public static final HANDLE_NONE:I = -0x1

.field static final LOGTAG:Ljava/lang/String; = "WebSelectionControls"

.field static final LOGV:Z = false

.field private static MIN_SCALE_LEVEL:F = 0.0f

.field public static final PARAGRAPH_HANDLE_BOTTOM:I = 0x5

.field public static final PARAGRAPH_HANDLE_LEFT:I = 0x2

.field public static final PARAGRAPH_HANDLE_RIGHT:I = 0x4

.field public static final PARAGRAPH_HANDLE_TOP:I = 0x3

.field private static ParaControllerHeight:I

.field private static ParaControllerWidth:I

.field private static mControllerHeight:I

.field private static mControllerWidth:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEndRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mReversedHandleLeft:Z

.field private mReversedHandleRight:Z

.field private mSelectedtext:Ljava/lang/String;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sput v1, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    .line 60
    sput v1, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    .line 61
    sput v1, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    .line 62
    sput v1, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    .line 64
    const/high16 v0, 0x3f80

    sput v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    .line 66
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 67
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 85
    iput-object v1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 87
    iput-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    .line 88
    iput-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "context"
    .parameter "webview"

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 113
    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 117
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    .line 118
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 119
    invoke-direct {p0, p1}, Landroid/webkit/WebTextSelectionControls;->Init(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"
    .parameter "webview"

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 145
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 147
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 148
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 149
    iput-object p5, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    .line 150
    return-void
.end method

.method private DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 10
    .parameter "canvas"
    .parameter "Start"
    .parameter "End"
    .parameter "pressed"

    .prologue
    .line 480
    const v2, 0x1080287

    .line 481
    .local v2, leftHandleId:I
    const v5, 0x1080289

    .line 484
    .local v5, rightHandleId:I
    iget v8, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x1

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v3, v8, v9

    .line 485
    .local v3, leftX:I
    iget v8, p2, Landroid/graphics/Rect;->top:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v4, v8, v9

    .line 488
    .local v4, leftY:I
    iget v8, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x1

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v6, v8, v9

    .line 489
    .local v6, rightX:I
    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    .line 491
    .local v7, rightY:I
    if-nez p4, :cond_1

    .line 493
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    .line 494
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    .line 497
    if-gez v4, :cond_0

    .line 498
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v9

    if-gt v8, v9, :cond_4

    .line 499
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    .line 505
    :cond_0
    :goto_0
    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v8, v7

    iget-object v9, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 506
    iget v8, p3, Landroid/graphics/Rect;->top:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sub-int/2addr v8, v9

    if-ltz v8, :cond_5

    .line 507
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    .line 513
    :cond_1
    :goto_1
    const/4 v8, 0x1

    iget-boolean v9, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    if-ne v8, v9, :cond_2

    .line 514
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 515
    const v2, 0x1080289

    .line 518
    :cond_2
    const/4 v8, 0x1

    iget-boolean v9, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    if-ne v8, v9, :cond_3

    .line 519
    iget v8, p3, Landroid/graphics/Rect;->top:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v7, v8, v9

    .line 520
    const v5, 0x1080287

    .line 525
    :cond_3
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 526
    .local v1, SController:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 528
    .local v0, EController:Landroid/graphics/drawable/Drawable;
    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v8, v3

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v9, v4

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 529
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 531
    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v8, v6

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v9, v7

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 532
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 533
    return-void

    .line 501
    .end local v0           #EController:Landroid/graphics/drawable/Drawable;
    .end local v1           #SController:Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v8, "WebSelectionControls"

    const-string v9, "DrawSelectionCharController : webview  is too short. Cannot turn LEFT handle upside-down"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :cond_5
    const-string v8, "WebSelectionControls"

    const-string v9, "DrawSelectionCharController : webview  is too short. Cannot turn RIGHT handle upside-down"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private DrawSelectionParaController(Landroid/graphics/Canvas;II)V
    .locals 5
    .parameter "canvas"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 542
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080288

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 546
    .local v0, PController:Landroid/graphics/drawable/Drawable;
    sget v3, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, p2, v3

    .line 547
    .local v1, x:I
    sget v3, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v2, p3, v3

    .line 549
    .local v2, y:I
    sget v3, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v3, v1

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 550
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 551
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080287

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    .local v1, SController:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080288

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, PController:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    .line 134
    :cond_0
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method public DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 29
    .parameter "canvas"
    .parameter "copyRegion"
    .parameter "startRect"
    .parameter "endRect"
    .parameter "pressed"
    .parameter "selectionGranularity"
    .parameter "controler"
    .parameter "showController"

    .prologue
    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v27

    .line 307
    .local v27, scalecont:I
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 308
    .local v16, paintSelected:Landroid/graphics/Paint;
    const/4 v7, 0x1

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    const/16 v7, 0x80

    const/16 v8, 0x96

    const/16 v9, 0xcb

    const/16 v10, 0xfb

    move-object/from16 v0, v16

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 310
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScale()F

    move-result v25

    .line 313
    .local v25, scale:F
    const/16 v26, 0x0

    .line 316
    .local v26, scaleLevel:I
    const/4 v7, 0x4

    move/from16 v0, p6

    move v1, v7

    if-ne v0, v1, :cond_2

    .line 317
    sget v7, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v7, v25, v7

    if-lez v7, :cond_1

    .line 318
    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    int-to-float v7, v7

    div-float v7, v7, v25

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 319
    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    int-to-float v7, v7

    div-float v7, v7, v25

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    .line 334
    :goto_0
    const/4 v7, 0x4

    move/from16 v0, p6

    move v1, v7

    if-ne v0, v1, :cond_5

    .line 335
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 336
    .local v5, SelectionPath:Landroid/graphics/Path;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 337
    .local v12, Paragraphrect:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v28

    .line 338
    .local v28, temp:Landroid/graphics/Rect;
    move-object v0, v12

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 339
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 340
    .local v13, centerX:I
    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v14, v7, 0x2

    .line 343
    .local v14, centerY:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    int-to-float v6, v7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    int-to-float v8, v8

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    int-to-float v9, v9

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 345
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 347
    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 350
    if-nez p5, :cond_4

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;II)V

    .line 352
    iget v13, v12, Landroid/graphics/Rect;->right:I

    .line 353
    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v14, v7, 0x2

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;II)V

    .line 355
    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v13, v7, 0x2

    .line 356
    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;II)V

    .line 359
    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v13, v7, 0x2

    .line 360
    iget v14, v12, Landroid/graphics/Rect;->top:I

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;II)V

    .line 469
    .end local v5           #SelectionPath:Landroid/graphics/Path;
    .end local v12           #Paragraphrect:Landroid/graphics/Rect;
    .end local v13           #centerX:I
    .end local v14           #centerY:I
    .end local v28           #temp:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 470
    return-void

    .line 321
    :cond_1
    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    int-to-float v8, v8

    sget v9, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v9, v9, v25

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 322
    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    int-to-float v8, v8

    sget v9, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v9, v9, v25

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_0

    .line 325
    :cond_2
    sget v7, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v7, v25, v7

    if-lez v7, :cond_3

    .line 326
    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    int-to-float v7, v7

    div-float v7, v7, v25

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 327
    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    int-to-float v7, v7

    div-float v7, v7, v25

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_0

    .line 329
    :cond_3
    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    int-to-float v8, v8

    sget v9, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v9, v9, v25

    mul-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 330
    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    int-to-float v8, v8

    sget v9, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v9, v9, v25

    mul-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    sput v7, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_0

    .line 364
    .restart local v5       #SelectionPath:Landroid/graphics/Path;
    .restart local v12       #Paragraphrect:Landroid/graphics/Rect;
    .restart local v13       #centerX:I
    .restart local v14       #centerY:I
    .restart local v28       #temp:Landroid/graphics/Rect;
    :cond_4
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 365
    .local v6, path:Landroid/graphics/Path;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 366
    .local v15, paint:Landroid/graphics/Paint;
    iget v7, v12, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v12, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v12, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, v12, Landroid/graphics/Rect;->top:I

    add-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 369
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 370
    iget v7, v12, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v12, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 373
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 374
    iget v7, v12, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iget v9, v12, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 377
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 378
    iget v7, v12, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iget v9, v12, Landroid/graphics/Rect;->right:I

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v12, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 381
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 382
    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 383
    const v7, -0xffff01

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 385
    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 387
    packed-switch p7, :pswitch_data_0

    .line 409
    const-string v7, ""

    const-string v8, "Selection controler not set!!! "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;II)V

    goto/16 :goto_1

    .line 389
    :pswitch_0
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 390
    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v14, v7, 0x2

    .line 391
    goto :goto_2

    .line 394
    :pswitch_1
    iget v13, v12, Landroid/graphics/Rect;->right:I

    .line 395
    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v14, v7, 0x2

    .line 396
    goto :goto_2

    .line 399
    :pswitch_2
    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v13, v7, 0x2

    .line 400
    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    .line 401
    goto :goto_2

    .line 404
    :pswitch_3
    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v13, v7, 0x2

    .line 405
    iget v14, v12, Landroid/graphics/Rect;->top:I

    .line 406
    goto :goto_2

    .line 418
    .end local v5           #SelectionPath:Landroid/graphics/Path;
    .end local v6           #path:Landroid/graphics/Path;
    .end local v12           #Paragraphrect:Landroid/graphics/Rect;
    .end local v13           #centerX:I
    .end local v14           #centerY:I
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v28           #temp:Landroid/graphics/Rect;
    :cond_5
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 419
    .local v24, rtStart:Landroid/graphics/Rect;
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 420
    .local v22, rtMiddle:Landroid/graphics/Rect;
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 422
    .local v21, rtEnd:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    .line 425
    .local v23, rtSelected:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v9, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v10, v0

    move-object/from16 v0, v24

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 427
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v9, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v10, v0

    move-object/from16 v0, v22

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 429
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v9, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v10, v0

    move-object/from16 v0, v21

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 433
    new-instance v20, Landroid/graphics/Region;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Region;-><init>()V

    .line 434
    .local v20, regionSelection:Landroid/graphics/Region;
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 435
    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 436
    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 438
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 439
    .local v17, pathSelection:Landroid/graphics/Path;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 441
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 444
    const/4 v7, 0x1

    move v0, v7

    move/from16 v1, p8

    if-ne v0, v1, :cond_0

    .line 445
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 446
    .restart local v15       #paint:Landroid/graphics/Paint;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 447
    .local v18, rect1:Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 449
    .local v19, rect2:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v9, v0

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v10, v0

    move-object/from16 v0, v18

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 451
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v9, v0

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v10, v0

    move-object/from16 v0, v19

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 453
    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 454
    const v7, -0xffff01

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    if-nez p5, :cond_6

    .line 457
    const/16 v7, 0xff

    const/16 v8, 0x58

    const/16 v9, 0xa5

    const/16 v10, 0xdc

    invoke-virtual {v15, v7, v8, v9, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 460
    :cond_6
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 461
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 462
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_1

    .line 387
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"

    .prologue
    .line 290
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 291
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 292
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 293
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 294
    return-void
.end method

.method public copy()Z
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " html copy() "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    const-string v1, "Copy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 210
    :cond_0
    const-string v0, "WebSelectionControls"

    const-string v1, "Selected text String is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getControllerHeight()I
    .locals 1

    .prologue
    .line 230
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return v0
.end method

.method getControllerWidth()I
    .locals 1

    .prologue
    .line 221
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    return v0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method isReversed(I)Z
    .locals 3
    .parameter "handleType"

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 102
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReversed : wrong handle type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 96
    :pswitch_0
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleLeft:Z

    goto :goto_0

    .line 99
    :pswitch_1
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mReversedHandleRight:Z

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "filepath"
    .parameter "rt"

    .prologue
    .line 235
    const/4 v5, 0x0

    .local v5, bitmapwidth:I
    const/4 v4, 0x0

    .line 236
    .local v4, bitmapheight:I
    const/4 v6, 0x0

    .local v6, bitmapx:F
    const/4 v7, 0x0

    .line 239
    .local v7, bitmapy:F
    move-object/from16 v13, p2

    .line 241
    .local v13, rtSelection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->right:I

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v5

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v4

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v6

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v7

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v12

    .line 254
    .local v12, picture:Landroid/graphics/Picture;
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 255
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    .local v3, bitmapCanvas:Landroid/graphics/Canvas;
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.left :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.top : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    neg-float v14, v6

    neg-float v15, v7

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    invoke-virtual {v12, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 263
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v9, mFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 266
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 269
    :cond_0
    const/4 v10, 0x0

    .line 272
    .local v10, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    .end local v10           #out:Ljava/io/FileOutputStream;
    .local v11, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v2, v14, v15, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v10, v11

    .line 278
    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v10, :cond_1

    .line 279
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 283
    :cond_1
    :goto_1
    return-void

    .line 280
    :catch_0
    move-exception v8

    .line 281
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 274
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v14

    goto :goto_0

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v14

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method
