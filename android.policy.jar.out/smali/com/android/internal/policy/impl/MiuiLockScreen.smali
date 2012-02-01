.class public Lcom/android/internal/policy/impl/MiuiLockScreen;
.super Landroid/widget/FrameLayout;
.source "MiuiLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockScreen$7;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$Status;
    }
.end annotation


# static fields
.field private static final BACKGROUND_MUSIC_SHOW_DEFAULT_ALBUM:I = 0x3

.field private static final BACKGROUND_MUSIC_SHOW_HAS_ALBUM:I = 0x2

.field private static final BACKGROUND_MUSIC_SHOW_NONE:I = 0x1

.field private static final BACKGROUND_NONE:I = 0x0

.field private static final CHECK_STREAM_MUSIC_DELAY:I = 0x3e8

.field private static final CONTROL_VIEW_BATTERY:I = 0x5

.field private static final CONTROL_VIEW_CALL:I = 0x1

.field private static final CONTROL_VIEW_DATE:I = 0x3

.field private static final CONTROL_VIEW_MUSIC:I = 0x4

.field private static final CONTROL_VIEW_NONE:I = 0x0

.field private static final CONTROL_VIEW_SMS:I = 0x2

.field private static final CallLog_COLUMNS:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final MAKR_PREVIEW_READ_DELAY:J = 0x7d0L

.field private static final MAX_VISIBLE_ITEM_NUM:I = 0x2

.field private static final MUSIC_SHOW_NONE:I = 0x0

.field private static final MUSIC_SHOW_PLAY:I = 0x2

.field private static final MUSIC_SHOW_STOP:I = 0x1

.field private static final QUERY_TOKEN:I = 0x35

.field private static final SMS_RECEIVED_WAKE_UP_DELAY:I = 0x61a8

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static sPrevStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;


# instance fields
.field private isPaused:Z

.field private mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

.field private mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

.field private mBackgroundMask:Landroid/widget/ImageView;

.field private mBatteryInfo:Landroid/view/View;

.field private mBatteryInfoText:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private final mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

.field private mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

.field private mCallsControlView:Landroid/view/View;

.field private mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

.field private mCallsPreviewList:Landroid/widget/ListView;

.field private mCarrier:Landroid/widget/TextView;

.field private mCheckStreamMusicRunnable:Ljava/lang/Runnable;

.field private mControlView:Landroid/widget/FrameLayout;

.field private mControlViewType:I

.field private mCreationOrientation:I

.field private mCurrentPreviewList:Landroid/widget/ListView;

.field private mEmergencyCall:Landroid/view/View;

.field private mEmergencyCallText:Landroid/widget/Button;

.field private mEnableMenuKeyInLockScreen:Z

.field private mEnableSpectrumVisualizer:Z

.field private mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

.field private final mFadeoutAnim:Landroid/view/animation/Animation;

.field private final mHandler:Landroid/os/Handler;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHintView:Landroid/view/View;

.field private mIsBatteryHorizontal:Z

.field private mIsOnlineSongBlocking:Z

.field private mKeyboardHidden:I

.field private mLastGrabTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

.field private mMusicBatteryIndicator:Landroid/widget/ImageView;

.field private mMusicBatteryIndicatorId:I

.field private mMusicControl:Landroid/view/View;

.field private mMusicPlayPauseButton:Landroid/widget/ImageView;

.field private mMusicStatus:I

.field private mMusicTitle:Landroid/widget/TextView;

.field private mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mPluggedIn:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

.field private mShowingBatteryInfo:Z

.field private mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

.field private mSmsControlView:Landroid/view/View;

.field private mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

.field private mSmsPreviewList:Landroid/widget/ListView;

.field private mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

.field private mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

.field private mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

.field private mTimeView:Landroid/view/View;

.field private mUnlockIccCard:Landroid/view/View;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final sLongPressVibration:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1144
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->CallLog_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 122
    sget-object v4, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 179
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    .line 186
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    .line 189
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    .line 192
    const/16 v4, 0x64

    iput v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    .line 196
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    .line 937
    new-instance v4, Lcom/android/internal/policy/impl/MiuiLockScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$3;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    .line 1398
    new-instance v4, Lcom/android/internal/policy/impl/MiuiLockScreen$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$4;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    .line 1716
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mHandler:Landroid/os/Handler;

    .line 1718
    new-instance v4, Lcom/android/internal/policy/impl/MiuiLockScreen$5;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$5;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 1858
    new-instance v4, Lcom/android/internal/policy/impl/MiuiLockScreen$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$6;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 278
    .local v2, res:Landroid/content/res/Resources;
    iput-object p3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 279
    iput-object p4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 280
    iput-object p5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    .line 282
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->shouldEnableMenuKey()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 284
    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCreationOrientation:I

    .line 285
    iget v4, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    .line 287
    const v4, 0x60a000b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mIsBatteryHorizontal:Z

    .line 288
    new-instance v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, bgView:Landroid/widget/ImageView;
    const v4, 0x60202c6

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 291
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    .line 297
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    const v5, 0x60202a9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 300
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 306
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x6030006

    const/4 v5, 0x1

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 308
    const v4, 0x60d001a

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 310
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 312
    const v4, 0x60d001b

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    .line 314
    const v4, 0x60d0019

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    .line 315
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 317
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    .line 318
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    new-instance v5, Lcom/android/internal/policy/impl/MiuiLockScreen$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    const v4, 0x60d001c

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUnlockIccCard:Landroid/view/View;

    .line 325
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUnlockIccCard:Landroid/view/View;

    new-instance v5, Lcom/android/internal/policy/impl/MiuiLockScreen$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$2;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    const v4, 0x603001a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mTimeView:Landroid/view/View;

    .line 333
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v5, 0x6030019

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mHintView:Landroid/view/View;

    .line 335
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v5, 0x6040004

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mFadeoutAnim:Landroid/view/animation/Animation;

    .line 336
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupSlidingPanel()V

    .line 337
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupBatteryInfo()V

    .line 339
    new-instance v4, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    .line 340
    new-instance v4, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    .line 342
    new-instance v4, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    .line 343
    new-instance v4, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    .line 345
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setFocusable(Z)V

    .line 346
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setFocusableInTouchMode(Z)V

    .line 347
    const/high16 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setDescendantFocusability(I)V

    .line 348
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 350
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 351
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 352
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 354
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 355
    .local v3, statusBarBg:Landroid/widget/ImageView;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 356
    const v4, 0x60202e1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 357
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v7, 0x30

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPowerManager:Landroid/os/PowerManager;

    .line 363
    new-instance v4, Lmiui/util/HapticFeedbackUtil;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->onPause()V

    .line 366
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/MiuiLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mIsOnlineSongBlocking:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/MiuiLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mIsOnlineSongBlocking:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/MiuiLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateBackground()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateSpectrumVisualizer()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setTrackInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/MiuiLockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/MiuiLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateMusic()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/SlidingPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lmiui/util/HapticFeedbackUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private callAndSmsHandle(Landroid/widget/ListView;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;Landroid/view/View;)V
    .locals 3
    .parameter "previewList"
    .parameter "adapter"
    .parameter "controlView"

    .prologue
    const/4 v2, 0x0

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 520
    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->enableDefaultCount(Z)V

    .line 522
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCurrentPreviewList:Landroid/widget/ListView;

    .line 523
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->markReadDelayVibrate()V

    .line 524
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 529
    :goto_0
    invoke-direct {p0, p3, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 530
    return-void

    .line 526
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private enableMusicControl(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1846
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1847
    if-eqz p1, :cond_2

    .line 1848
    iput v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 1849
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1856
    :cond_0
    :goto_1
    return-void

    .line 1846
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 1851
    :cond_2
    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    .line 1852
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    if-ne v0, v3, :cond_0

    .line 1853
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    goto :goto_1
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 853
    if-eqz p0, :cond_0

    move-object v0, p0

    .line 858
    :goto_0
    return-object v0

    .line 855
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 856
    goto :goto_0

    .line 858
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/MiuiLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 726
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 728
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 729
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 748
    :goto_1
    return-object v1

    .line 726
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 732
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$7;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 748
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 734
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 736
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 738
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 740
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 742
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 744
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 746
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 732
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

.method private markReadDelayVibrate()V
    .locals 4

    .prologue
    .line 511
    iget-wide v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    .line 513
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    :cond_0
    return-void
.end method

.method private noHandle()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const-string v9, "android.intent.extra.update_application_flatten_name"

    .line 536
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 538
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    if-eqz v4, :cond_2

    .line 542
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCurrentPreviewList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCurrentPreviewList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCurrentPreviewList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    .line 545
    .local v0, MAX_MARK_READ_COUNT:I
    sub-int v2, v0, v8

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 546
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->markRead(Landroid/content/Context;I)V

    .line 545
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 548
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    invoke-virtual {v4, v8}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->enableDefaultCount(Z)V

    .line 549
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->getCount()I

    move-result v1

    .line 550
    .local v1, count:I
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.update_application_message"

    if-le v1, v0, :cond_3

    sub-int v5, v1, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    if-ne v4, v5, :cond_4

    .line 557
    const-string v4, "android.intent.extra.update_application_flatten_name"

    const-string v4, "com.android.contacts/.TwelveKeyDialer"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 571
    .end local v0           #MAX_MARK_READ_COUNT:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    .line 572
    return-void

    .line 551
    .restart local v0       #MAX_MARK_READ_COUNT:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 561
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    if-ne v4, v5, :cond_1

    .line 562
    const-string v4, "android.intent.extra.update_application_flatten_name"

    const-string v4, "com.android.mms/.ui.MmsTabActivity"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 679
    const/4 v1, 0x0

    .line 680
    .local v1, info:Ljava/lang/String;
    const/4 v0, 0x0

    .line 681
    .local v0, backgroundId:I
    const v2, 0x60202c9

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicatorId:I

    .line 683
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    if-eqz v2, :cond_0

    .line 684
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    if-eqz v2, :cond_3

    .line 685
    iget v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x6090010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 687
    const/4 v0, 0x3

    .line 700
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setBatteryInfo(Ljava/lang/String;)V

    .line 702
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->setBatteryLevel(I)V

    .line 703
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v2, v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->setBackgroundFor(I)V

    .line 704
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v2, v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->setBatteryInfo(Ljava/lang/String;)V

    .line 705
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 706
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicatorId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 708
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    .line 709
    return-void

    .line 689
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x609000f

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 690
    const/4 v0, 0x2

    .line 691
    const v2, 0x60202c8

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicatorId:I

    goto :goto_0

    .line 694
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x6090011

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 695
    const/4 v0, 0x1

    .line 696
    const v2, 0x60202ca

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicatorId:I

    goto :goto_0
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    .line 440
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    .line 441
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    .line 443
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V

    .line 446
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshBatteryStringAndIcon()V

    .line 448
    return-void
.end method

.method private sendMediaButtonBroadcast(II)V
    .locals 10
    .parameter "action"
    .parameter "keyCode"

    .prologue
    const/4 v9, 0x0

    .line 2028
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2029
    .local v1, eventtime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-wide v3, v1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 2031
    .local v0, event:Landroid/view/KeyEvent;
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v8, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2032
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "forbid_double_click"

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2033
    const-string v3, "android.intent.extra.KEY_EVENT"

    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2036
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2037
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2038
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 2040
    :cond_0
    return-void
.end method

.method private setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 7
    .parameter "view"
    .parameter "params"

    .prologue
    .line 2001
    if-eqz p1, :cond_4

    .line 2002
    const/4 v3, 0x0

    .line 2003
    .local v3, useDefaultParams:Z
    if-nez p2, :cond_1

    .line 2004
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object p2, v0

    .line 2005
    if-nez p2, :cond_0

    .line 2006
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x50

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .end local p2
    .local v1, params:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object p2, v1

    .line 2009
    .end local v1           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local p2
    :cond_0
    const/4 v3, 0x1

    .line 2011
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2012
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2013
    .local v2, parent:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    .line 2014
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2015
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2025
    .end local v2           #parent:Landroid/view/ViewGroup;
    .end local v3           #useDefaultParams:Z
    :cond_3
    :goto_0
    return-void

    .line 2019
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2022
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setTrackInfo(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1457
    const-string v2, "track"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1458
    .local v1, title:Ljava/lang/String;
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    .local v0, artist:Ljava/lang/String;
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mIsOnlineSongBlocking:Z

    .line 1461
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1462
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicTitle:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1475
    :goto_0
    return-void

    .line 1464
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1465
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1472
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1473
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 1466
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1467
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1469
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicTitle:Landroid/widget/TextView;

    const-string v3, "%s-%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setupBatteryInfo()V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v1, 0x6030011

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfo:Landroid/view/View;

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfo:Landroid/view/View;

    const v1, 0x60d002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfoText:Landroid/widget/TextView;

    .line 432
    return-void
.end method

.method private setupCallsPreviewList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 381
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v2, 0x6030013

    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsControlView:Landroid/view/View;

    .line 382
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsControlView:Landroid/view/View;

    const v2, 0x60d002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    .line 383
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 384
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 385
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 386
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v2, 0x6030012

    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, hint:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 388
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 389
    return-void
.end method

.method private setupMusicControl()V
    .locals 5

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v1, 0x6030015

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    const v1, 0x60d0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicTitle:Landroid/widget/TextView;

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    const v1, 0x60d0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    .line 411
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicatorId:I

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicatorId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    const v1, 0x60d0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    const v1, 0x60d0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    const v1, 0x60d0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicPlayPauseButton:Landroid/widget/ImageView;

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicPlayPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    const v1, 0x60d003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SpectrumVisualizer;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    const v1, 0x60d0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AlbumFrameView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    const v1, 0x60d0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AlbumFrameView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;

    .line 425
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    return-void
.end method

.method private setupSlidingPanel()V
    .locals 5

    .prologue
    .line 369
    new-instance v0, Lcom/miui/internal/policy/impl/SlidingPanel;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x53

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mTimeView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/policy/impl/SlidingPanel;->setTimeView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->setOnTriggerListener(Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->getControlView()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    .line 378
    return-void
.end method

.method private setupSmsPreviewList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 392
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v2, 0x6030017

    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsControlView:Landroid/view/View;

    .line 393
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsControlView:Landroid/view/View;

    const v2, 0x60d003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    .line 394
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 397
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v2, 0x6030016

    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 398
    .local v0, hint:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 399
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 400
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 259
    .local v3, res:Landroid/content/res/Resources;
    const/high16 v4, 0x60a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 260
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 261
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 262
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

.method private startCallsQuery()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x35

    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->setLoading(Z)V

    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->cancelOperation(I)V

    .line 652
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, " type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .local v8, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 654
    const-string v0, " AND new=1 "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/MiuiLockScreen;->CallLog_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method private startSmsQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x35

    const/4 v2, 0x0

    .line 660
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->setLoading(Z)V

    .line 662
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->cancelOperation(I)V

    .line 663
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_PREVIEW_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method private toggleMusicControl()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1800
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    if-nez v3, :cond_0

    .line 1801
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupMusicControl()V

    .line 1803
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v2, v5

    .line 1804
    .local v2, isMusicShowNow:Z
    :goto_0
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v1

    .line 1806
    .local v1, isMusicActive:Z
    if-nez v2, :cond_3

    .line 1807
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 1808
    if-eqz v1, :cond_2

    .line 1809
    iput v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    .line 1813
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen;->enableMusicControl(Z)V

    .line 1814
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->enableAlbum(Z)V

    .line 1815
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->startAlbumAnim(I)V
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->access$2400(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;I)V

    .line 1826
    :goto_2
    return-void

    .end local v1           #isMusicActive:Z
    .end local v2           #isMusicShowNow:Z
    :cond_1
    move v2, v4

    .line 1803
    goto :goto_0

    .line 1811
    .restart local v1       #isMusicActive:Z
    .restart local v2       #isMusicShowNow:Z
    :cond_2
    iput v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    goto :goto_1

    .line 1818
    :cond_3
    iput v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    .line 1819
    iput v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 1820
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->enableAlbum(Z)V

    .line 1821
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    if-eqz v3, :cond_4

    move v0, v4

    .line 1823
    .local v0, animType:I
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->startAlbumAnim(I)V
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->access$2400(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;I)V

    .line 1824
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->enableMusicControl(Z)V

    goto :goto_2

    .end local v0           #animType:I
    :cond_4
    move v0, v6

    .line 1821
    goto :goto_3
.end method

.method private updateBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1906
    const/4 v0, 0x1

    .line 1910
    .local v0, backgroundStatus:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 1911
    .local v1, isMusicControlVisible:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1912
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->isAlbumShow()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->access$2700(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1913
    const/4 v0, 0x2

    .line 1918
    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1935
    :cond_1
    :goto_2
    return-void

    .end local v1           #isMusicControlVisible:Z
    :cond_2
    move v1, v4

    .line 1910
    goto :goto_0

    .line 1915
    .restart local v1       #isMusicControlVisible:Z
    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    .line 1921
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    const v3, 0x60202cb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1922
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1926
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    const v3, 0x60202a9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1927
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1928
    iget v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mIsBatteryHorizontal:Z

    if-eqz v2, :cond_1

    .line 1929
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    goto :goto_2

    .line 1927
    :cond_4
    const/16 v3, 0x8

    goto :goto_3

    .line 1918
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateControlView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1946
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    if-nez v0, :cond_0

    .line 1947
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 1950
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1952
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1953
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupMusicControl()V

    .line 1955
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->showAlbum()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->access$2800(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;)V

    .line 1959
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1960
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1962
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    packed-switch v0, :pswitch_data_0

    .line 1993
    invoke-direct {p0, v2, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1997
    :goto_1
    return-void

    .line 1957
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateBackground()V

    goto :goto_0

    .line 1964
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1965
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupMusicControl()V

    .line 1967
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1968
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateMusic()V

    goto :goto_1

    .line 1972
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsControlView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 1973
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupSmsPreviewList()V

    .line 1975
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsControlView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->callAndSmsHandle(Landroid/widget/ListView;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;Landroid/view/View;)V

    goto :goto_1

    .line 1979
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsControlView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 1980
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupCallsPreviewList()V

    .line 1982
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsControlView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->callAndSmsHandle(Landroid/widget/ListView;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;Landroid/view/View;)V

    goto :goto_1

    .line 1986
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mHintView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1

    .line 1989
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfo:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1

    .line 1962
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V
    .locals 8
    .parameter "status"

    .prologue
    const v7, 0x6090013

    const v3, 0x6090012

    const/4 v6, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 758
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUnlockIccCard:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 761
    sget-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen$7;->$SwitchMap$com$android$internal$policy$impl$MiuiLockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 850
    :goto_0
    return-void

    .line 764
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 776
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 781
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x6090014

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x609000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 788
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 795
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 796
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 807
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 814
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v5}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 822
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x6090017

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 830
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 831
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 835
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x6090015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x6090016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 842
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v5}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUnlockIccCard:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 761
    nop

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

.method private updateMusic()V
    .locals 4

    .prologue
    .line 1874
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1899
    :cond_0
    :goto_0
    return-void

    .line 1877
    :cond_1
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v0

    .line 1879
    .local v0, isMusicActive:Z
    move v1, v0

    .line 1880
    .local v1, isShowPlaying:Z
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mIsOnlineSongBlocking:Z

    if-eqz v2, :cond_2

    .line 1881
    const/4 v1, 0x1

    .line 1883
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicPlayPauseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    const v3, 0x60202d2

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1886
    iget v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1894
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1895
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    goto :goto_0

    .line 1883
    :cond_3
    const v3, 0x60202d5

    goto :goto_1

    .line 1888
    :pswitch_1
    if-nez v0, :cond_0

    .line 1889
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    goto :goto_0

    .line 1886
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSpectrumVisualizer()V
    .locals 2

    .prologue
    .line 1831
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    if-nez v1, :cond_1

    .line 1842
    :cond_0
    :goto_0
    return-void

    .line 1834
    :cond_1
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 1837
    .local v0, isEnable:Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableSpectrumVisualizer:Z

    if-eq v1, v0, :cond_0

    .line 1840
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableSpectrumVisualizer:Z

    .line 1841
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v1, v0}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    goto :goto_0

    .line 1834
    .end local v0           #isEnable:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 981
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 982
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 983
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 984
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->closeCursor()V

    .line 985
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->closeCursor()V

    .line 986
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 888
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 889
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateConfiguration()V

    .line 892
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 893
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 894
    const-string v1, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 895
    const-string v1, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 896
    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 897
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 900
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->startCallsQuery()V

    .line 901
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->startSmsQuery()V

    .line 902
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 913
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 914
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateConfiguration()V

    .line 915
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 907
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 908
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    if-ne p1, v0, :cond_1

    .line 583
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 587
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 646
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 590
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 592
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    goto :goto_0

    .line 597
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 599
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    goto :goto_0

    .line 603
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->toggleMusicControl()V

    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 605
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateSpectrumVisualizer()V

    goto :goto_0

    .line 609
    :pswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 610
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 611
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    goto :goto_0

    .line 615
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 616
    iput v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mFadeoutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 624
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    goto :goto_0

    .line 629
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->noHandle()V

    .line 630
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 633
    iput v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 635
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    goto :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 452
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 455
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 925
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 926
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 927
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->enableMusicControl(Z)V

    .line 928
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->enableAlbum(Z)V

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    .line 933
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->onPause()V

    .line 934
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateSpectrumVisualizer()V

    .line 935
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 996
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    if-nez v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->clearBatteryAnimations()V

    .line 1001
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1002
    return-void

    .line 998
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    if-nez v0, :cond_0

    .line 999
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshBatteryStringAndIcon()V

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 671
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    .line 672
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    .line 673
    iput p3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    .line 675
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshBatteryStringAndIcon()V

    .line 676
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 4
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    return-void

.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V

    .line 720
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 947
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v0

    .line 948
    .local v0, isMusicActive:Z
    if-eqz v0, :cond_2

    .line 949
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    if-nez v1, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupMusicControl()V

    .line 952
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 953
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    .line 954
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->enableMusicControl(Z)V

    .line 955
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->enableAlbum(Z)V

    .line 957
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 970
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 971
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 973
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 974
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    .line 975
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->onResume()V

    .line 976
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    .line 977
    return-void

    .line 960
    :cond_2
    iput v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 961
    iput v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    .line 962
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 963
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->enableMusicControl(Z)V

    .line 964
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->enableAlbum(Z)V

    .line 965
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->hideAlbum()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->access$300(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;)V

    .line 966
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateSpectrumVisualizer()V

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 991
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 3
    .parameter "simState"

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 865
    const-string v0, "LockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and prev status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/MiuiLockScreen;->sPrevStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    sget-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sPrevStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    if-eq v0, v1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 868
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 872
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sPrevStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 873
    return-void

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V

    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 714
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1763
    const/16 v1, 0x55

    .line 1765
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1775
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1776
    .local v0, action:I
    if-nez v0, :cond_1

    .line 1777
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v3, v6}, Lcom/miui/internal/policy/impl/SlidingPanel;->requestDisallowInterceptTouchEvent(Z)V

    .line 1778
    invoke-direct {p0, v4, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->sendMediaButtonBroadcast(II)V

    .line 1779
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1796
    :cond_0
    :goto_1
    return v6

    .line 1767
    .end local v0           #action:I
    :pswitch_1
    const/16 v1, 0x58

    .line 1768
    goto :goto_0

    .line 1771
    :pswitch_2
    const/16 v1, 0x57

    goto :goto_0

    .line 1781
    .restart local v0       #action:I
    :cond_1
    if-eq v0, v6, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 1782
    :cond_2
    invoke-direct {p0, v6, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->sendMediaButtonBroadcast(II)V

    .line 1783
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1785
    const/16 v3, 0x55

    if-ne v1, v3, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    if-ne v3, v5, :cond_3

    move v2, v6

    .line 1787
    .local v2, showPlayIcon:Z
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicPlayPauseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    const v4, 0x60202d5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1789
    if-eqz v2, :cond_5

    move v3, v6

    :goto_4
    iput v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicStatus:I

    .line 1790
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v3, v6}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 1793
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1794
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .end local v2           #showPlayIcon:Z
    :cond_3
    move v2, v4

    .line 1785
    goto :goto_2

    .line 1787
    .restart local v2       #showPlayIcon:Z
    :cond_4
    const v4, 0x60202d2

    goto :goto_3

    :cond_5
    move v3, v5

    .line 1789
    goto :goto_4

    .line 1765
    nop

    :pswitch_data_0
    .packed-switch 0x60d0037
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 11
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/high16 v8, 0x3400

    const/4 v7, 0x1

    const-string v10, "android.intent.category.DEFAULT"

    const-string v9, "android.intent.action.VIEW"

    .line 460
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    if-ne p1, v5, :cond_0

    .line 461
    if-ne p2, v7, :cond_1

    .line 463
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, dialIntent:Landroid/content/Intent;
    const-string v5, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 469
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 470
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 504
    .end local v1           #dialIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const/4 v5, 0x3

    if-ne p2, v5, :cond_2

    .line 472
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 473
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 474
    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_0

    .line 476
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v3, smsIntent:Landroid/content/Intent;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 480
    .local v4, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->enableDefaultCount(Z)V

    .line 481
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getCount()I

    move-result v5

    sub-int v2, v5, v7

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_4

    .line 482
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-virtual {v5, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 483
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 484
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 489
    .end local v0           #c:Landroid/database/Cursor;
    :cond_4
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 490
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v6, "thread_id"

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 492
    const-string v5, "view_conversation"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 495
    :cond_5
    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 500
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v3}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 501
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0
.end method

.method public setBatteryInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method

.method updateConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 876
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 877
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 878
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    .line 879
    iget v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_1

    move v0, v4

    .line 880
    .local v0, isKeyboardOpen:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 881
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 884
    .end local v0           #isKeyboardOpen:Z
    :cond_0
    return-void

    .line 879
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
