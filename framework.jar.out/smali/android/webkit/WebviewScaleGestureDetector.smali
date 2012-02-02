.class public Landroid/webkit/WebviewScaleGestureDetector;
.super Ljava/lang/Object;
.source "WebviewScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebviewScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f


# instance fields
.field private mBottomSlopEdge:F

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field mCurrTilt:I

.field private final mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

.field mOnScaleBeginStart:J

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field mPrevTilt:I

.field private mRightSlopEdge:F

.field private mScaleFactor:F

.field private mSloppyGesture:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevTilt:I

    .line 153
    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 154
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    .line 198
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 199
    .local v0, config:Landroid/view/ViewConfiguration;
    iput-object p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 200
    iput-object p2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    .line 201
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    .line 202
    return-void
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v0, v1, v2

    .line 357
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v0, v1, v2

    .line 366
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 407
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 409
    iput-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 411
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 413
    iput-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 415
    :cond_1
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    .line 416
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 417
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 20
    .parameter "curr"

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 373
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 375
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    .line 376
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    .line 377
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object v9, v0

    .line 381
    .local v9, prev:Landroid/view/MotionEvent;
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 382
    .local v12, px0:F
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 383
    .local v14, py0:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 384
    .local v13, px1:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    .line 385
    .local v15, py1:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 386
    .local v5, cx0:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 387
    .local v7, cy0:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 388
    .local v6, cx1:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 390
    .local v8, cy1:F
    sub-float v10, v13, v12

    .line 391
    .local v10, pvx:F
    sub-float v11, v15, v14

    .line 392
    .local v11, pvy:F
    sub-float v3, v6, v5

    .line 393
    .local v3, cvx:F
    sub-float v4, v8, v7

    .line 394
    .local v4, cvy:F
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffX:F

    .line 395
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffY:F

    .line 396
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffX:F

    .line 397
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffY:F

    .line 399
    const/high16 v16, 0x3f00

    mul-float v16, v16, v3

    add-float v16, v16, v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 400
    const/high16 v16, 0x3f00

    mul-float v16, v16, v4

    add-float v16, v16, v7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    .line 402
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v16

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v17

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrPressure:F

    .line 403
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v16

    const/16 v17, 0x1

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v17

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevPressure:F

    .line 404
    return-void
.end method


# virtual methods
.method public getCurrTilt()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    return v0
.end method

.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 448
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 449
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffX:F

    .line 450
    .local v0, cvx:F
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffY:F

    .line 451
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    .line 453
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPrevTilt()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevTilt:I

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 463
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 464
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffX:F

    .line 465
    .local v0, pvx:F
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffY:F

    .line 466
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    .line 468
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 473
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    .line 476
    :cond_0
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    .prologue
    .line 486
    iget-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 206
    .local v3, action:I
    const/4 v6, 0x1

    .line 208
    .local v6, handled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 209
    move v0, v3

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 348
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 214
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 215
    .local v8, metrics:Landroid/util/DisplayMetrics;
    move-object v0, v8

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    .line 216
    move-object v0, v8

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    .line 219
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    .line 221
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 222
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    .line 224
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move v5, v0

    .line 231
    .local v5, edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    move v11, v0

    .line 232
    .local v11, rightSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    move v4, v0

    .line 233
    .local v4, bottomSlop:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 234
    .local v13, x0:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    .line 235
    .local v15, y0:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v14

    .line 236
    .local v14, x1:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 238
    .local v16, y1:F
    cmpg-float v17, v13, v5

    if-ltz v17, :cond_1

    cmpg-float v17, v15, v5

    if-ltz v17, :cond_1

    cmpl-float v17, v13, v11

    if-gtz v17, :cond_1

    cmpl-float v17, v15, v4

    if-lez v17, :cond_3

    :cond_1
    const/16 v17, 0x1

    move/from16 v9, v17

    .line 240
    .local v9, p0sloppy:Z
    :goto_1
    cmpg-float v17, v14, v5

    if-ltz v17, :cond_2

    cmpg-float v17, v16, v5

    if-ltz v17, :cond_2

    cmpl-float v17, v14, v11

    if-gtz v17, :cond_2

    cmpl-float v17, v16, v4

    if-lez v17, :cond_4

    :cond_2
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 243
    .local v10, p1sloppy:Z
    :goto_2
    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    .line 244
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 245
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 246
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 238
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    :cond_3
    const/16 v17, 0x0

    move/from16 v9, v17

    goto :goto_1

    .line 240
    .restart local v9       #p0sloppy:Z
    :cond_4
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_2

    .line 247
    .restart local v10       #p1sloppy:Z
    :cond_5
    if-eqz v9, :cond_6

    .line 248
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 249
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 250
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 251
    :cond_6
    if-eqz v10, :cond_7

    .line 252
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 253
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 254
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 256
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 262
    .end local v4           #bottomSlop:F
    .end local v5           #edgeSlop:F
    .end local v8           #metrics:Landroid/util/DisplayMetrics;
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    .end local v11           #rightSlop:F
    .end local v13           #x0:F
    .end local v14           #x1:F
    .end local v15           #y0:F
    .end local v16           #y1:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move v5, v0

    .line 265
    .restart local v5       #edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    move v11, v0

    .line 266
    .restart local v11       #rightSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    move v4, v0

    .line 267
    .restart local v4       #bottomSlop:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 268
    .restart local v13       #x0:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    .line 269
    .restart local v15       #y0:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v14

    .line 270
    .restart local v14       #x1:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 272
    .restart local v16       #y1:F
    cmpg-float v17, v13, v5

    if-ltz v17, :cond_8

    cmpg-float v17, v15, v5

    if-ltz v17, :cond_8

    cmpl-float v17, v13, v11

    if-gtz v17, :cond_8

    cmpl-float v17, v15, v4

    if-lez v17, :cond_a

    :cond_8
    const/16 v17, 0x1

    move/from16 v9, v17

    .line 274
    .restart local v9       #p0sloppy:Z
    :goto_3
    cmpg-float v17, v14, v5

    if-ltz v17, :cond_9

    cmpg-float v17, v16, v5

    if-ltz v17, :cond_9

    cmpl-float v17, v14, v11

    if-gtz v17, :cond_9

    cmpl-float v17, v16, v4

    if-lez v17, :cond_b

    :cond_9
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 277
    .restart local v10       #p1sloppy:Z
    :goto_4
    if-eqz v9, :cond_c

    if-eqz v10, :cond_c

    .line 278
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 279
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 272
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    :cond_a
    const/16 v17, 0x0

    move/from16 v9, v17

    goto :goto_3

    .line 274
    .restart local v9       #p0sloppy:Z
    :cond_b
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_4

    .line 280
    .restart local v10       #p1sloppy:Z
    :cond_c
    if-eqz v9, :cond_d

    .line 281
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 282
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 283
    :cond_d
    if-eqz v10, :cond_e

    .line 284
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 285
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 287
    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 294
    .end local v4           #bottomSlop:F
    .end local v5           #edgeSlop:F
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    .end local v11           #rightSlop:F
    .end local v13           #x0:F
    .end local v14           #x1:F
    .end local v15           #y0:F
    .end local v16           #y1:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 296
    const v17, 0xff00

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_f

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 298
    .local v7, id:I
    :goto_5
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 299
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 296
    .end local v7           #id:I
    :cond_f
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_5

    .line 305
    :cond_10
    move v0, v3

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    .line 332
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 337
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrPressure:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevPressure:F

    move/from16 v18, v0

    div-float v17, v17, v18

    const v18, 0x3f2b851f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v12

    .line 340
    .local v12, updatePrevious:Z
    if-eqz v12, :cond_0

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->recycle()V

    .line 342
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 308
    .end local v12           #updatePrevious:Z
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 311
    const v17, 0xff00

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_12

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 313
    .restart local v7       #id:I
    :goto_6
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 314
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-nez v17, :cond_11

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 320
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 311
    .end local v7           #id:I
    :cond_12
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_6

    .line 324
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-nez v17, :cond_13

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 328
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 305
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public setCurrTilt(I)I
    .locals 1
    .parameter "newTilt"

    .prologue
    .line 166
    iput p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 167
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    return v0
.end method

.method public setIsInProgress(Z)V
    .locals 0
    .parameter "InProgress"

    .prologue
    .line 428
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 429
    return-void
.end method

.method public setTiltStartTime(J)J
    .locals 2
    .parameter "start"

    .prologue
    .line 171
    iput-wide p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    .line 172
    iget-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    return-wide v0
.end method
