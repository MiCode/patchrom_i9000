.class Lcom/android/internal/policy/impl/PuzzleLockScreen;
.super Landroid/widget/LinearLayout;
.source "PuzzleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PuzzleLockScreen$4;,
        Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;,
        Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DISPLAY_CARRIER_NAME:Z = false

.field private static final DISPLAY_RAD_DUAL_CLOCK_ON_LOCK_UI:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final GLASS_EFFECT_ANIMATION:Z = true

.field private static final MODE_HOMESCREEN_WALLPAPER:I = 0x0

.field private static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PuzzleLockScreen"


# instance fields
.field private PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private mBackgroudLayout:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCreatedInPortrait:Z

.field private mEnableMenuKeyInLockScreen:Z

.field private mHelp2:Landroid/widget/TextView;

.field private mInitGlassHeight:I

.field private mInitGlassLeft:I

.field private mInitGlassTop:I

.field private mInitGlassWidth:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLayoutGlassEffect:Landroid/widget/ImageView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenBackground:Landroid/widget/ImageView;

.field private mMediaLayout:Landroid/widget/LinearLayout;

.field private mMediaOpened:Z

.field private mMissedCallCount:I

.field private mMissedMsgCount:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mOrigLeft:I

.field private mOrigTop:I

.field private mPuzzleMatch:Landroid/widget/ImageView;

.field private mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

.field private mPuzzleMatchLayout:Landroid/widget/LinearLayout;

.field private mPuzzleMatchLayoutLeft:I

.field private mPuzzleMatchLayoutTop:I

.field private mPuzzleNotiCall:Landroid/widget/ImageView;

.field private mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

.field private mPuzzleNotiCallText:Landroid/widget/TextView;

.field private mPuzzleNotiMail:Landroid/widget/ImageView;

.field private mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

.field private mPuzzleNotiMailText:Landroid/widget/TextView;

.field private mPuzzleUnlockHorizontalMargin:I

.field private mPuzzleUnlockLayoutLeft:I

.field private mPuzzleUnlockLayoutTop:I

.field private mPuzzleUnlockMatchHorizontalMargin:I

.field private mPuzzleUnlockRatio:I

.field private mPuzzleUnlockStatusBarMargin:I

.field private mPuzzleUnlockVerticalMargin:I

.field private mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

.field private mSweepTextBox:Landroid/widget/RelativeLayout;

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

.field private mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

.field private mUnlockHorizontalMargin:I

.field private mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

.field private mUnlockVerticalMargin:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v9, 0x1e0

    const/16 v8, 0x150

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 276
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    .line 131
    const/16 v2, 0x12

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    .line 132
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 133
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 154
    sget-object v2, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 278
    iput-object p2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 279
    iput-object p3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 280
    iput-object p4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 282
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 284
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    .line 285
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 287
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 288
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 291
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 292
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    if-eqz v2, :cond_0

    .line 293
    const v2, 0x1090080

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 299
    :goto_0
    const v2, 0x10201f0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 300
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    const v2, 0x1020299

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    .line 309
    const v2, 0x102027e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    .line 310
    const v2, 0x102027d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox:Landroid/widget/RelativeLayout;

    .line 312
    const v2, 0x102027f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    .line 313
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    const v3, 0x104042e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    const v3, 0x1080369

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 315
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 320
    const v2, 0x102029a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    .line 321
    const v2, 0x102029b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    .line 322
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    const v2, 0x102029c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    .line 325
    const v2, 0x102029d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    .line 326
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    const v2, 0x102029e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;

    .line 329
    const v2, 0x102029f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatch:Landroid/widget/ImageView;

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    .line 335
    new-instance v2, Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    .line 336
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/policy/impl/PuzzleLockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V

    .line 337
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    .line 338
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    new-instance v2, Lcom/android/internal/policy/impl/UnlockDualClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockDualClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    .line 347
    :goto_1
    const v2, 0x1020277

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 348
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 350
    const v2, 0x1020276

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    .line 354
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 360
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 361
    .local v0, densityDpiForPuzzle:I
    sparse-switch v0, :sswitch_data_0

    .line 398
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 399
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 400
    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 401
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 403
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 404
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 405
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 406
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    .line 411
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 575
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 667
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setFocusable(Z)V

    .line 668
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setFocusableInTouchMode(Z)V

    .line 669
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setDescendantFocusability(I)V

    .line 671
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateMissedEvent()V

    .line 672
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 673
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 674
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 675
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMediaCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;)V

    .line 677
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 678
    return-void

    .line 295
    .end local v0           #densityDpiForPuzzle:I
    :cond_0
    const v2, 0x1090081

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 345
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    goto/16 :goto_1

    .line 357
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 363
    .restart local v0       #densityDpiForPuzzle:I
    :sswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 364
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 365
    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 366
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 368
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 369
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 370
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 371
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto :goto_3

    .line 374
    :sswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 375
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 376
    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 377
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 379
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 380
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 381
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 382
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 385
    :sswitch_2
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 386
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 387
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 388
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 389
    const/16 v2, 0xa8

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 390
    const/16 v2, 0x118

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 392
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 393
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 394
    const/16 v2, 0xf0

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 395
    const/16 v2, 0x17d

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 361
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/PuzzleLockScreen;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return p1
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 1015
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 1025
    :goto_0
    return-object v0

    .line 1017
    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1018
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    .line 1019
    goto :goto_0

    .line 1021
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1022
    :cond_2
    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    move-object v0, p1

    .line 1023
    goto :goto_0

    .line 1025
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 911
    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 913
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 914
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 933
    :goto_1
    return-object v1

    .line 911
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 917
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 933
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 919
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 921
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 923
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 925
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 927
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 929
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 931
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 917
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isDualClockEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1043
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 1035
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 1037
    return-void
.end method

.method private sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .locals 2
    .parameter "notiMode"

    .prologue
    .line 693
    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getIntentMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 694
    .local v0, intent:Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 696
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 255
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 257
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 259
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 260
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method private switchLockscreenMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1066
    packed-switch p1, :pswitch_data_0

    .line 1080
    :goto_0
    :pswitch_0
    return-void

    .line 1070
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1066
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V
    .locals 3
    .parameter "status"

    .prologue
    const-string v2, "ro.csc.sales_code"

    .line 941
    const-string v0, "EPL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMH"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    :goto_0
    return-void

    .line 947
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/PuzzleLockScreen$4;->$SwitchMap$com$android$internal$policy$impl$PuzzleLockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 951
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 962
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 977
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 987
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 994
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1004
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 947
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateMissedEvent()V
    .locals 10

    .prologue
    const/high16 v9, 0x41c0

    const/high16 v8, 0x4188

    const/16 v7, 0x3e7

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 704
    const/4 v2, 0x0

    .line 705
    .local v2, visibility:I
    const/4 v0, 0x0

    .line 706
    .local v0, nCallCount:I
    const/4 v1, 0x0

    .line 708
    .local v1, nMsgCount:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v0

    .line 709
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v1

    .line 711
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-le v0, v3, :cond_0

    iput v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 712
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-le v1, v3, :cond_1

    iput v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 715
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-le v3, v7, :cond_2

    iput v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 716
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-le v3, v7, :cond_3

    iput v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 719
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    const/16 v4, 0x64

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 721
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    const/16 v4, 0x64

    if-ge v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 724
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 728
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-nez v3, :cond_8

    move v2, v6

    .line 729
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 731
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 732
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-nez v3, :cond_9

    move v2, v6

    .line 733
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 735
    :cond_5
    return-void

    .line 720
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 722
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 728
    :cond_8
    const/4 v3, 0x0

    move v2, v3

    goto :goto_2

    .line 732
    :cond_9
    const/4 v3, 0x0

    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 845
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 775
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 776
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 769
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 770
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 683
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 684
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startControllerAnimation()V

    .line 689
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 781
    return-void
.end method

.method public onMediaStoped(Z)V
    .locals 2
    .parameter "isStop"

    .prologue
    .line 874
    if-nez p1, :cond_0

    .line 882
    :goto_0
    return-void

    .line 876
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_1

    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 878
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    goto :goto_0
.end method

.method public onMediaUpdated(ZZLandroid/net/Uri;)V
    .locals 2
    .parameter "bIsPlaying"
    .parameter "bIsStop"
    .parameter "mediaUri"

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 852
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 853
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 856
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    .line 860
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_2

    .line 861
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startPlaying()V

    .line 864
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_3

    .line 865
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/UnlockMediaController;->setControllerVisibility(Z)V

    .line 868
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->playingFlagSet(Z)V

    .line 869
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/UnlockMediaController;->updateMediaPlayer(Landroid/net/Uri;)V

    .line 870
    return-void
.end method

.method public onOrientationChange(Z)V
    .locals 0
    .parameter "inPortrait"

    .prologue
    .line 763
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 790
    const-string v0, "PuzzleLockScreen"

    const-string v1, "PuzzleLock onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onPause()V

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 798
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 799
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1061
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 740
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 905
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 803
    const-string v0, "PuzzleLockScreen"

    const-string v1, "PuzzleLock onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 807
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 808
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 810
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getWallpaperMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->switchLockscreenMode(I)V

    .line 811
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 815
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 820
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateMissedEvent()V

    .line 822
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onResume()V

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 836
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 837
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 838
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 840
    return-void

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 759
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 1031
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 1032
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 751
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 755
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockClock;->resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 745
    return-void
.end method
