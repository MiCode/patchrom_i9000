.class public Lcom/android/internal/policy/impl/UnlockMediaController;
.super Ljava/lang/Object;
.source "UnlockMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;
    }
.end annotation


# static fields
.field private static final MUSICPLAYER_CHECK_PLAY_STATUS:Ljava/lang/String; = "com.android.music.musicservicecommand.checkplaystatus"

.field private static final MUSICPLAYER_FF_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.down"

.field private static final MUSICPLAYER_FF_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.up"

.field private static final MUSICPLAYER_NEXT:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field private static final MUSICPLAYER_PREVIOUS:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field private static final MUSICPLAYER_REW_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.down"

.field private static final MUSICPLAYER_REW_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.up"

.field private static final MUSICPLAYER_TOGGLEPAUSE:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final SOUND_TOUCH_ID:I = 0x9

.field private static final TAG:Ljava/lang/String; = "UnlockMediaController"

.field private static mOverlayCanvas:Landroid/graphics/Canvas;

.field private static mRect:Landroid/graphics/Rect;

.field public static mScaleBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final DEBUG:Z

.field protected changeMusic:Z

.field private controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

.field private controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

.field private currentAlbumID:Ljava/lang/String;

.field private currentAlbumTitle:Ljava/lang/String;

.field private currentArtist:Ljava/lang/String;

.field private currentTitle:Ljava/lang/String;

.field private mBeforeButton:Landroid/widget/ImageButton;

.field private mCDHandleLayout:Landroid/widget/RelativeLayout;

.field private mCDImage:Landroid/widget/ImageView;

.field mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mControllerOpened:Z

.field protected mFFLongPressed:Z

.field private mIsPlaying:Z

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mMusicBoxAlbumImage:Landroid/widget/ImageView;

.field private mMusicBoxUpDownAllow:Landroid/widget/ImageView;

.field private mMusicBoxWithoutAlbumImage:Landroid/widget/ImageView;

.field private mMusicControlBox:Landroid/widget/LinearLayout;

.field private mMusicControllerAnimationDutation:I

.field private mMusicControllerCDImageExposureHeight:I

.field private mMusicControllerCDImageHeight:I

.field private mMusicControllerCDImageWidth:I

.field private mMusicControllerInitYOffset:I

.field private mMusicControllerMaxPullValue:I

.field private mMusicControllerPullYOffset:I

.field private mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPath:Landroid/graphics/Path;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPlayFlag:Z

.field protected mREWLongPressed:Z

.field private mTitleTextViewInBox:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    sput-object v0, Lcom/android/internal/policy/impl/UnlockMediaController;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/16 v8, -0x9a

    const/16 v7, 0x190

    const/16 v6, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->DEBUG:Z

    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPlayFlag:Z

    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentArtist:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentAlbumID:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentAlbumTitle:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->changeMusic:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x109007d

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .local v0, densityDpi:I
    sparse-switch v0, :sswitch_data_0

    iput v8, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I

    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    const/16 v3, 0x54

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageExposureHeight:I

    iput v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->init(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContentResolver:Landroid/content/ContentResolver;

    return-void

    :sswitch_0
    iput v8, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I

    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    const/16 v3, 0x54

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageExposureHeight:I

    iput v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    goto :goto_0

    :sswitch_1
    iput v8, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I

    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    const/16 v3, 0x54

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageExposureHeight:I

    iput v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    goto :goto_0

    :sswitch_2
    const/16 v3, -0x4d

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I

    const/16 v3, 0x64

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    const/16 v3, 0x64

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    const/16 v3, 0x2a

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageExposureHeight:I

    iput v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/UnlockMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockMediaController;->sendTouchDetection()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/UnlockMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/UnlockMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/UnlockMediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/UnlockMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/UnlockMediaController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->sendMediaControllerOpen(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/UnlockMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .parameter "mContext"

    .prologue
    const v9, 0x10a0006

    const/high16 v8, 0x42e2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v0, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x102028b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020281

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020285

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020286

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxAlbumImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020287

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxWithoutAlbumImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020284

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020282

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDHandleLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020283

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDHandleLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$1;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$2;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x102028a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$3;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$4;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020288

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$5;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$6;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020289

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$7;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController$7;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v5, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-static {p1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    int-to-float v3, v3

    invoke-direct {v2, v5, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-static {p1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    const/16 v1, 0x64

    .local v1, radius:I
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Canvas;

    sget-object v3, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    :cond_1
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    int-to-float v3, v1

    int-to-float v4, v1

    int-to-float v5, v1

    div-float/2addr v5, v8

    const/high16 v6, 0x42d8

    mul-float/2addr v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    int-to-float v3, v1

    int-to-float v4, v1

    int-to-float v5, v1

    div-float/2addr v5, v8

    const/high16 v6, 0x4210

    mul-float/2addr v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mRect:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mRect:Landroid/graphics/Rect;

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;

    const v3, 0x10803a3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private refreshMediaPlayer()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x4

    const/4 v8, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, newTitleText:Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x1e

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/external/audio/albumart/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentAlbumID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, currentAlbumArtURI:Landroid/net/Uri;
    const/4 v4, 0x0

    .local v4, mInputStream:Ljava/io/InputStream;
    const/4 v2, 0x0

    .local v2, mAlbumArtBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v3, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_0

    invoke-static {v4, v9, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const/4 v4, 0x0

    :cond_0
    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImage:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getCDImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImage:Landroid/widget/ImageView;

    const v7, 0x10803a0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxWithoutAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void

    .end local v0           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v2           #mAlbumArtBitmap:Landroid/graphics/Bitmap;
    .end local v3           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #mInputStream:Ljava/io/InputStream;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .restart local v0       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v2       #mAlbumArtBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #mInputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v6, "UnlockMediaController"

    const-string v7, "mInputStream.close() Failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    if-nez v2, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImage:Landroid/widget/ImageView;

    const v7, 0x10803a2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxWithoutAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private sendMediaControllerOpen(Z)V
    .locals 1
    .parameter "opened"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;->onControllerOpened(Z)V

    :cond_0
    return-void
.end method

.method private sendTouchDetection()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;->onTouchedCD()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCDImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "image"

    .prologue
    :try_start_0
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "UnlockMediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMainLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    return-void
.end method

.method public playingFlagSet(Z)V
    .locals 0
    .parameter "bIsPlaying"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mIsPlaying:Z

    return-void
.end method

.method public setControllerVisibility(Z)V
    .locals 2
    .parameter "bIsStop"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V
    .locals 0
    .parameter "imageTouchListener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    return-void
.end method

.method public startControllerAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    iget v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->forceLayout()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;

    const v3, 0x10803a1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->sendMediaControllerOpen(Z)V

    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    iget v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->forceLayout()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;

    const v3, 0x10803a3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public startPlaying()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPlayFlag:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x10803bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void
.end method

.method public stopPlaying()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPlayFlag:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x10803bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void
.end method

.method public updateMediaPlayer(Landroid/net/Uri;)V
    .locals 8
    .parameter "mediaUri"

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, mCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentTitle:Ljava/lang/String;

    const-string v0, "artist"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentArtist:Ljava/lang/String;

    const-string v0, "album_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentAlbumID:Ljava/lang/String;

    const-string v0, "album"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentAlbumTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockMediaController;->refreshMediaPlayer()V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->sendMediaControllerOpen(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
