.class public Lcom/android/phone/InVTCallScreen;
.super Landroid/app/Activity;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InVTCallScreen$47;,
        Lcom/android/phone/InVTCallScreen$BrightZoomTimer;,
        Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;,
        Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;
    }
.end annotation


# static fields
.field private static KeyGuard:Z

.field protected static disconnectDueToLowBattery:Z

.field private static farend_pressed:Z

.field private static isVTManagerAlreadyStarted:Z

.field private static mBackPressed:Z

.field private static mHomePressed:Z

.field protected static mImageSelectedFromGalary:Landroid/net/Uri;

.field private static mLongPressMenuEnabled:Z

.field private static mLongPressMoveCount:I

.field private static nearend_pressed:Z


# instance fields
.field private final COUNTDOWN_INTERVAL:I

.field private final DURINGCALL:I

.field private final DURINGCALL_LOCK:I

.field private final DURINGCALL_UNLOCK:I

.field private final INCOMING_CALL:I

.field private final INCOMING_LOCK:I

.field private final INCOMING_UNLOCK:I

.field private ImgProj:[Ljava/lang/String;

.field private final MILLIS_IN_FUTURE:I

.field private final OUTGOING_CALL:I

.field private final OUTGOING_LOCK:I

.field private final OUTGOING_UNLOCK:I

.field private final PROGRESS_MAX:I

.field private SeekBarLayout:Landroid/widget/LinearLayout;

.field private VideoProj:[Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

.field private dialpadLayout:Landroid/widget/LinearLayout;

.field private disconnectMsg:Landroid/os/Message;

.field private duringEndCalllayout:Landroid/widget/LinearLayout;

.field private farEndImage:Landroid/widget/ImageView;

.field protected far_endsurhldr:Landroid/view/SurfaceHolder;

.field protected far_endsurview:Landroid/view/SurfaceView;

.field private filePath:Ljava/lang/String;

.field protected incomingContactImage:Landroid/widget/ImageView;

.field private isCallConnected:Z

.field private isFarEndCapture:Z

.field private isFarEndRecord:Z

.field private isFrontCameraEnabled:Z

.field private isMO_Disconnect:Z

.field private isPresetImageEnabled:Z

.field private isPresetImageSelectedFromOption:Z

.field private isSurfaceViewSwipe:Z

.field private isVTCallAlreadyStop:Z

.field private keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mAddButton:Landroid/widget/Button;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAuxiDialogCameraPopup:Z

.field private mAuxiDialogList:Z

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBirthdayIcon:Landroid/widget/ImageView;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBlurPosition:I

.field private mBlur_Off:Z

.field protected mBrightSB:Landroid/widget/SeekBar;

.field mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mBrightSBPosition:I

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallEndTimeBlinkCount:I

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTimer:Landroid/widget/TextView;

.field private mCallerName:Landroid/widget/TextView;

.field private mCallerNumber:Landroid/widget/TextView;

.field private mCallerUppos:[Ljava/lang/String;

.field private mCancel:Landroid/view/MenuItem;

.field private mCancelRecording:Landroid/widget/Button;

.field private mCapture:Landroid/view/MenuItem;

.field private final mConfigurationChangedFilter:Landroid/content/IntentFilter;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mContextMenuDailog:Landroid/app/Dialog;

.field private mContextMenuStrArrayId:[Ljava/lang/String;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDesableOutGoingMenu:Z

.field private final mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

.field private mDisp_Small:Z

.field private mDownUppos:[Ljava/lang/String;

.field private mDownUpposBlurOff:[Ljava/lang/String;

.field private mEndCall:Landroid/widget/Button;

.field private mEndCallButtonFrame:Landroid/view/View;

.field protected mFaceBookIcon:Landroid/widget/ImageView;

.field private mFaceBookStatus:Landroid/widget/TextView;

.field private mFakeCallVoicePlayer:Landroid/media/MediaPlayer;

.field private mFirstFarEndViewClicked:Z

.field private mFirstNearEndViewClicked:Z

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHide:Landroid/widget/Button;

.field private mHideCheck:Z

.field private mHideDialPad:Landroid/widget/Button;

.field private mHideMe:Landroid/view/MenuItem;

.field private mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field private mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

.field private mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

.field private mIsBatteryLow:Z

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mIsShowMenu:Z

.field private mIsplayVideo:Z

.field private mKeyLockStatus:I

.field private mKeyPad:Landroid/view/MenuItem;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mLowMemoryStopRecording:Z

.field private mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

.field private mMenuSelected:I

.field protected mMinusBright:Landroid/widget/ImageView;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mMute:Landroid/widget/ToggleButton;

.field private mNeedShowCallLostDialog:Z

.field private mOutGoingImage:[Ljava/lang/String;

.field private mOutGoingImageHideMe:[Ljava/lang/String;

.field private mOutGoingWithPresetImage:[Ljava/lang/String;

.field private mOutImg:Landroid/view/MenuItem;

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPlusBright:Landroid/widget/ImageView;

.field private mProviderAddress:Ljava/lang/String;

.field private mProviderGatewayUri:Landroid/net/Uri;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderLabel:Ljava/lang/CharSequence;

.field private mProviderOverlayVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRecordFarEndView:Landroid/widget/ImageView;

.field protected mRecordNearEndView:Landroid/widget/ImageView;

.field private mRecord_stop:Z

.field private mRecording:Landroid/view/MenuItem;

.field private mRecordingAlert:Z

.field private mRecordingFileName:Ljava/lang/String;

.field private mRegisteredForPhoneStates:Z

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private final mRingingCallAnimationDuration:I

.field private mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mSPKTV:Landroid/widget/ToggleButton;

.field private mSaveButtonFrame:Landroid/view/View;

.field private mSeekBarSelection:I

.field private mSendMsgButton:Landroid/widget/Button;

.field private mSettings:Landroid/view/MenuItem;

.field private mShowCallLogAfterDisconnect:Z

.field private mShowMe:Landroid/view/MenuItem;

.field private mStop:Landroid/view/MenuItem;

.field private mStopRecording:Landroid/widget/Button;

.field private mSuccessToastNotRequired:Z

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mSwitchCAM:Landroid/view/MenuItem;

.field private mSwitchHDSet:Landroid/view/MenuItem;

.field private mSwitchPHSet:Landroid/view/MenuItem;

.field private mToast:Landroid/widget/Toast;

.field private mToastExecuteOnceForDevicePolicyManager:Z

.field private mVTManager:Lsiso/vt/VTManager;

.field private mVTStatusText:Landroid/widget/TextView;

.field private mVTcalltype:I

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVideoCallType:Z

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field private mVideofilePath:Ljava/lang/String;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mVoiceCallMessage:Ljava/lang/String;

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field protected mZoomSB:Landroid/widget/SeekBar;

.field private mZoomSBPosition:I

.field private mainLayout:Landroid/widget/LinearLayout;

.field myListener:Lsiso/vt/VTManager$VTStackStateListener;

.field private nearEndImage:Landroid/widget/ImageView;

.field nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

.field protected near_endsurhldr:Landroid/view/SurfaceHolder;

.field protected near_endsurview:Landroid/view/SurfaceView;

.field private nvBottomYPos:I

.field private nvTopYPos:I

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field protected outgoingContactImage:Landroid/widget/ImageView;

.field private phoneForCallNumber:Ljava/lang/String;

.field private sdcardState:Ljava/lang/String;

.field private selectImg:Z

.field private selectVideo:Z

.field private showcamera:Z

.field private stopRecordingLayout:Landroid/widget/LinearLayout;

.field private svBottomYPos:I

.field private svTopYPos:I

.field private timerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 441
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 544
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    .line 606
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    .line 703
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->farend_pressed:Z

    .line 711
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    .line 1237
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 2869
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 2870
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 7506
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    .line 7507
    sput v1, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 193
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 194
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    .line 197
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    .line 202
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    .line 206
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    .line 210
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 212
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    .line 213
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    .line 215
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 216
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 218
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 220
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallAnimationDuration:I

    .line 226
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->MILLIS_IN_FUTURE:I

    .line 227
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->COUNTDOWN_INTERVAL:I

    .line 228
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->PROGRESS_MAX:I

    .line 405
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    .line 438
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 439
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 464
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    .line 505
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z

    .line 506
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 510
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mPauseInProgress:Z

    .line 529
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mFakeCallVoicePlayer:Landroid/media/MediaPlayer;

    .line 533
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_CALL:I

    .line 534
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_CALL:I

    .line 535
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_LOCK:I

    .line 536
    iput v1, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_UNLOCK:I

    .line 537
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_LOCK:I

    .line 538
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_UNLOCK:I

    .line 539
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL:I

    .line 540
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL_LOCK:I

    .line 541
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL_UNLOCK:I

    .line 545
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 546
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 548
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 549
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 554
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mAddButton:Landroid/widget/Button;

    .line 571
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 575
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 577
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 578
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 579
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 581
    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBPosition:I

    .line 583
    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mZoomSBPosition:I

    .line 585
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 587
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    .line 589
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    .line 591
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 593
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 608
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 665
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    .line 667
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mZoomSB:Landroid/widget/SeekBar;

    .line 669
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    .line 671
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    .line 677
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 681
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    .line 686
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    .line 687
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 688
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->bitmap:Landroid/graphics/Bitmap;

    .line 689
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 690
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    .line 693
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 694
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->VideoProj:[Ljava/lang/String;

    .line 695
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 696
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->sdcardState:Ljava/lang/String;

    .line 697
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 698
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    .line 699
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 708
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    .line 709
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 710
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 715
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    .line 716
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    .line 717
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 718
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    .line 722
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    .line 723
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    .line 726
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    .line 729
    new-instance v0, Lcom/android/phone/InVTCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$1;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 754
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    .line 756
    new-instance v0, Lcom/android/phone/InVTCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$2;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    .line 1148
    new-instance v0, Lcom/android/phone/InVTCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$3;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1171
    new-instance v0, Lcom/android/phone/InVTCallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$4;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1201
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    .line 1202
    new-instance v0, Lcom/android/phone/InVTCallScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$5;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 2678
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 7833
    new-instance v0, Lcom/android/phone/InVTCallScreen$26;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$26;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 7981
    new-instance v0, Lcom/android/phone/InVTCallScreen$27;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$27;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    .line 9444
    new-instance v0, Lcom/android/phone/InVTCallScreen$43;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$43;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 9955
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    .line 9960
    new-instance v0, Lcom/android/phone/InVTCallScreen$46;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$46;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .locals 8

    .prologue
    const-string v7, " "

    .line 5798
    const-string v0, "InVTCallScreen: Waiting Call Dialog 1"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5800
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5802
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5814
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5816
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 5817
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5818
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 5819
    new-instance v0, Lcom/android/phone/InVTCallScreen$19;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$19;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5832
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5833
    return-void

    .line 5808
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 5810
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 5811
    if-nez v1, :cond_1

    .line 5812
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 10

    .prologue
    const v7, 0x7f0d02a6

    const-string v6, ")"

    const-string v5, "("

    const-string v8, " "

    .line 5839
    const-string v0, "InVTCallScreen: Waiting Call Dialog 2"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5842
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5844
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5847
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 5849
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 5850
    if-nez v2, :cond_5

    .line 5851
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 5877
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5879
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 5880
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 5882
    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 5884
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d02ab

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 5885
    new-instance v0, Lcom/android/phone/InVTCallScreen$20;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$20;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5904
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003d

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5906
    const v0, 0x7f080114

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5908
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5910
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5911
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5912
    return-void

    .line 5853
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5855
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 5857
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 5858
    if-nez v1, :cond_4

    .line 5859
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 5860
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 5864
    goto/16 :goto_0

    .line 5866
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 5868
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 5870
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 5871
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 5872
    if-nez v2, :cond_3

    .line 5873
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 5874
    :goto_2
    if-nez v3, :cond_2

    .line 5875
    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_0

    :cond_2
    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private GetValidFileName(Z)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const-string v5, "yyyy-MM-dd kk.mm.ss"

    const-string v4, "VT"

    const-string v3, "/"

    .line 9664
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 9665
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 9667
    if-eqz p1, :cond_0

    .line 9668
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9671
    :goto_0
    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9672
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9670
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/InVTCallScreen;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    return p0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->fillMenuArrayList()V

    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateSelectedImageFromGallery()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    return-void
.end method

.method static synthetic access$4802(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->performBatteryLowProcess()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    return p1
.end method

.method static synthetic access$5600()I
    .locals 1

    .prologue
    .line 175
    sget v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return v0
.end method

.method static synthetic access$5602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    sput p0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return p0
.end method

.method static synthetic access$5608()I
    .locals 2

    .prologue
    .line 175
    sget v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return v0
.end method

.method static synthetic access$5700()Z
    .locals 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    return v0
.end method

.method static synthetic access$5702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    return p0
.end method

.method static synthetic access$5800(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->svTopYPos:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->svTopYPos:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->svBottomYPos:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->svBottomYPos:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->nvTopYPos:I

    return v0
.end method

.method static synthetic access$6002(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->nvTopYPos:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I

    return p1
.end method

.method static synthetic access$6200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    return v0
.end method

.method static synthetic access$6202(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->swipeSurfaceView()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    return v0
.end method

.method static synthetic access$6502(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    return p0
.end method

.method static synthetic access$6900(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    return v0
.end method

.method static synthetic access$7700(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->removesurfaceview()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/phone/InVTCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    return v0
.end method

.method static synthetic access$8302(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/phone/InVTCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->contextMenuSelected(I)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    return v0
.end method

.method static synthetic access$8802(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    return p1
.end method

.method static synthetic access$8900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->brightOwnImage()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$9302(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return p1
.end method

.method static synthetic access$9308(Lcom/android/phone/InVTCallScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$9400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 5642
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 5644
    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5645
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5649
    :cond_0
    const-string v0, "bailOutAfterErrorDialog(): end InVTCallScreen session..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5650
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_1

    .line 5651
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 5657
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    .line 5658
    return-void

    .line 5653
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 5655
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_0
.end method

.method private brightOwnImage()V
    .locals 3

    .prologue
    .line 9207
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside brightOwnImage and brightening by factor -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9211
    return-void
.end method

.method private button_initialize()V
    .locals 8

    .prologue
    const v2, 0x7f0800f5

    const/4 v3, 0x4

    const/4 v6, 0x0

    const-string v7, "InVTCallScreen"

    const-string v4, ""

    .line 7077
    const-string v0, "InVTCallScreen"

    const-string v0, "Enter button_initialize"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7078
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    sparse-switch v0, :sswitch_data_0

    .line 7501
    :cond_0
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v0, "Exit button_initialize"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7502
    return-void

    .line 7081
    :sswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 7082
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setRingingCallFrameAni()V

    .line 7084
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 7085
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d02e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7086
    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    .line 7089
    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    .line 7090
    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 7091
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 7092
    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    .line 7110
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7111
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7114
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 7115
    if-eqz v0, :cond_2

    .line 7116
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 7118
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 7119
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 7120
    iget v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    packed-switch v1, :pswitch_data_0

    .line 7132
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7133
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7135
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7136
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7143
    :goto_2
    if-eqz v0, :cond_4

    .line 7144
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 7145
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_1

    .line 7150
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const v3, 0x7f0200ca

    invoke-static {v1, v2, v0, v3}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 7188
    :cond_2
    :goto_3
    const-string v0, "InVTCallScreen"

    const-string v0, "Incomming Lock Screen Draw"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7189
    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingSlidingWidget;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 7190
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingSlidingWidget;->initialize(Ljava/lang/Object;)V

    .line 7192
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/IncomingSlidingWidget;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 7193
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    goto/16 :goto_0

    .line 7123
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7124
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020153

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 7126
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7127
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020154

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 7129
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7130
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020155

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 7138
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7139
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7140
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7141
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 7171
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7173
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 7176
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7177
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7178
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 7284
    :sswitch_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 7286
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 7287
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d02f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7289
    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    .line 7290
    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    .line 7292
    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 7293
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 7295
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7296
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7297
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 7298
    const-string v0, "InVTCallScreen"

    const-string v0, "In Locked outgoing condn"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7332
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 7333
    if-eqz v0, :cond_0

    .line 7335
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 7337
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 7338
    if-eqz v0, :cond_a

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    .line 7339
    iget v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    packed-switch v1, :pswitch_data_1

    .line 7351
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7352
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7354
    :goto_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7355
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7362
    :goto_6
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 7364
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const v3, 0x7f0200ca

    invoke-static {v1, v2, v0, v3}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_0

    .line 7305
    :cond_6
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 7306
    const-string v0, "InVTCallScreen"

    const-string v0, "In unLocked outgoing condn"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7307
    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    .line 7308
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 7309
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7310
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-nez v0, :cond_7

    .line 7311
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f0d02c5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 7314
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 7317
    :cond_8
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    .line 7318
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 7319
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7321
    :cond_9
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    .line 7322
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    .line 7323
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7325
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_4

    .line 7342
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7343
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020153

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 7345
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7346
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020154

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 7348
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7349
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f020155

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 7357
    :cond_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7358
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7359
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7360
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 7386
    :cond_b
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7387
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7388
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7389
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 7402
    :sswitch_2
    iput v6, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 7403
    const-string v0, "InVTCallScreen"

    const-string v0, "In DURINGCALL condn button initialize"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7404
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    .line 7405
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    .line 7409
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    .line 7410
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    .line 7411
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    .line 7412
    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    .line 7413
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    .line 7414
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancelRecording:Landroid/widget/Button;

    .line 7417
    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 7418
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 7419
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    .line 7421
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7422
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7424
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    .line 7426
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 7427
    if-eqz v0, :cond_c

    .line 7428
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 7439
    :cond_c
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    .line 7441
    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    .line 7442
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7444
    const v0, 0x7f0800f4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    .line 7445
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7446
    const v0, 0x7f0800f9

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    .line 7447
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7449
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7450
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancelRecording:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7452
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7453
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    .line 7454
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_d

    .line 7455
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7462
    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_e

    .line 7463
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7484
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 7488
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_f

    .line 7489
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7491
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7492
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 7494
    :cond_f
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_10

    .line 7495
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUI()V

    .line 7497
    :cond_10
    const-string v0, "InVTCallScreen"

    const-string v0, "Exit DURINGCALL condn button initialize"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7458
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_d

    .line 7459
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 7078
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 7120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 7339
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private cancelRecordingFarEndView()V
    .locals 3

    .prologue
    const/16 v2, 0x7e

    .line 9766
    const-string v0, "InVTCallScreen"

    const-string v1, "In cancelRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9767
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9768
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->CancelRecording()V

    .line 9770
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUI()V

    .line 9771
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9772
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9773
    const v0, 0x7f0d030c

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 9774
    return-void
.end method

.method private cancelRecordingNearEndView()V
    .locals 2

    .prologue
    .line 9796
    const-string v0, "InVTCallScreen"

    const-string v1, "In cancelRecordingNearEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9797
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9798
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->CancelRecording()V

    .line 9799
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9800
    return-void
.end method

.method private capture_farend_view(J)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x7e

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "InVTCallScreen"

    .line 9696
    const-string v0, "InVTCallScreen"

    const-string v0, "In capture_farend_view method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9697
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9698
    const v0, 0x7f0d02e1

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 9699
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 9700
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture File Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9701
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9702
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 9703
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    .line 9704
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const-string v1, "data/data/com.android.phone/files/video_call_capture.jpg"

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 9705
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 9706
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9709
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    .line 9711
    new-array v0, v3, [Ljava/lang/String;

    .line 9712
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 9713
    const/4 v1, 0x0

    new-instance v2, Lcom/android/phone/InVTCallScreen$45;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$45;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 9722
    :cond_0
    :goto_0
    return-void

    .line 9720
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private capture_nearend_view(J)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 9677
    const-string v0, "InVTCallScreen"

    const-string v1, "In capture_nearend_view method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9678
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 9679
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9680
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 9681
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 9682
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    .line 9684
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 9685
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 9686
    const/4 v1, 0x0

    new-instance v2, Lcom/android/phone/InVTCallScreen$44;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$44;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 9691
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 9693
    :cond_0
    return-void
.end method

.method private changeImgSize(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v1, "InVTCallScreen"

    .line 9214
    packed-switch p1, :pswitch_data_0

    .line 9253
    :cond_0
    :goto_0
    return-void

    .line 9216
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 9217
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside ChangeImage for Caller Image with Small size -- "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9221
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9222
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 9223
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9231
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 9232
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside ChangeImage for Caller Image with Large size --"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9235
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9236
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9237
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 9238
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x16b

    const/16 v3, 0x110

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9242
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9243
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 9244
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x1b4

    const/16 v3, 0x146

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkForCleanupState()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4837
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 4838
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 4850
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 4841
    goto :goto_0

    .line 4843
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 4844
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 4845
    goto :goto_0

    :cond_2
    move v0, v2

    .line 4847
    goto :goto_0

    :cond_3
    move v0, v2

    .line 4850
    goto :goto_0
.end method

.method private checkIfOkToInitiateOutgoingCall()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 4

    .prologue
    .line 4813
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 4815
    .local v0, state:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIfOkToInitiateOutgoingCall: ServiceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4817
    packed-switch v0, :pswitch_data_0

    .line 4832
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4820
    :pswitch_0
    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 4830
    :goto_0
    return-object v1

    .line 4824
    :pswitch_1
    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 4830
    :pswitch_2
    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 4817
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkStorageMemorySpace(Z)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9628
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9629
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 9630
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 9631
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    .line 9632
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 9633
    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 9634
    const-string v2, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Memory Size Avialable is in Kb : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9635
    if-eqz p1, :cond_1

    .line 9636
    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move v0, v7

    .line 9658
    :goto_0
    return v0

    :cond_0
    move v0, v6

    .line 9646
    goto :goto_0

    .line 9649
    :cond_1
    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    move v0, v7

    .line 9650
    goto :goto_0

    :cond_2
    move v0, v6

    .line 9658
    goto :goto_0
.end method

.method private clearProvider()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6885
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    .line 6886
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 6887
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 6888
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 6889
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 6890
    return-void
.end method

.method private contextMenuSelected(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "InVTCallScreen"

    .line 8587
    const-string v0, "InVTCallScreen"

    const-string v0, "In CallVtScreen contextMenuSelected method"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8588
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8589
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 8591
    const-string v2, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this is inside contextMenuSelected and selected item is -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8614
    aget-object v2, v1, p1

    const v3, 0x7f0d02d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8616
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 8617
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    .line 8757
    :cond_0
    :goto_0
    return-void

    .line 8618
    :cond_1
    aget-object v2, v1, p1

    const v3, 0x7f0d02d3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8620
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v2, :cond_3

    .line 8623
    add-int/lit8 v2, p1, 0x1

    aget-object v2, v1, v2

    const v3, 0x7f0d02d4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8625
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 8626
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 8627
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 8628
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v8}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    .line 8629
    :cond_2
    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    const v2, 0x7f0d02d5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8632
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 8633
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 8634
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 8635
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v4}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    .line 8638
    :cond_3
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 8639
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 8641
    :cond_4
    aget-object v2, v1, p1

    const v3, 0x7f0d02d4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8643
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v0, :cond_0

    .line 8644
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 8645
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 8646
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 8647
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v8}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    .line 8652
    :cond_5
    aget-object v2, v1, p1

    const v3, 0x7f0d02d5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8654
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 8655
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 8656
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 8657
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v4}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 8658
    :cond_6
    aget-object v2, v1, p1

    const v3, 0x7f0d02d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    aget-object v2, v1, p1

    const v3, 0x7f0d02d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8662
    :cond_7
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 8663
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 8664
    :cond_8
    aget-object v2, v1, p1

    const v3, 0x7f0d02d9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    aget-object v2, v1, p1

    const v3, 0x7f0d02da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 8668
    :cond_9
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 8669
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 8670
    :cond_a
    aget-object v2, v1, p1

    const v3, 0x7f0d02db

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 8672
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside capture context menu selected"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8676
    const-string v0, "InVTCallScreen"

    const-string v0, "Capture Image called for Farend view"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_farend_view(J)V

    goto/16 :goto_0

    .line 8684
    :cond_b
    aget-object v2, v1, p1

    const v3, 0x7f0d02dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8686
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside record video"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8688
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 8689
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 8692
    :cond_c
    aget-object v2, v1, p1

    const v3, 0x7f0d02f7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 8694
    const-string v0, "InVTCallScreen"

    const-string v0, "In image option item"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8695
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 8697
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectImageFromMyFiles()V

    goto/16 :goto_0

    .line 8703
    :cond_d
    aget-object v2, v1, p1

    const v3, 0x7f0d02f8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 8705
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    .line 8706
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 8708
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V

    goto/16 :goto_0

    .line 8709
    :cond_e
    aget-object v2, v1, p1

    const v3, 0x7f0d02f9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 8711
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside capt_img context menu selected"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8714
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 8715
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 8716
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    .line 8718
    const-string v0, "InVTCallScreen"

    const-string v0, "Capture Image called for Nearend view"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_nearend_view(J)V

    goto/16 :goto_0

    .line 8723
    :cond_f
    aget-object v2, v1, p1

    const v3, 0x7f0d02fa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 8725
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 8726
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    goto/16 :goto_0

    .line 8728
    :cond_10
    aget-object v2, v1, p1

    const v3, 0x7f0d02fb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 8730
    const-string v0, "InVTCallScreen"

    const-string v0, "Preset Image is being called"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8731
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preset_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8733
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 8734
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    .line 8735
    if-eqz v0, :cond_11

    .line 8736
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v0}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 8742
    :goto_1
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    goto/16 :goto_0

    .line 8739
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const-string v1, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_1

    .line 8745
    :cond_12
    aget-object v1, v1, p1

    const v2, 0x7f0d02fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8748
    const-string v0, "InVTCallScreen"

    const-string v0, "Show camera is called"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8749
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 8750
    const-string v0, "InVTCallScreen"

    const-string v0, "Calling surfaceview_init"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8751
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto/16 :goto_0
.end method

.method private continueOnDisconnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1283
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    const-string v0, "ContinueOnDisconnection...... isBluetoothAvailable()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    const-string v0, "audio off when video call call disconnected"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1292
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1293
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    iget-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v0, p0, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    .line 1295
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1304
    return-void
.end method

.method private createDefaultImages()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1535
    .line 1541
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1543
    const v1, 0x7f0201a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v1

    .line 1545
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "data/data/com.android.phone/files/video_call_recording_start.jpg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1549
    const-string v2, "video_call_recording_start.jpg"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/InVTCallScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1557
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 1559
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 1561
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1573
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1577
    :cond_0
    const v2, 0x7f0201a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 1579
    :try_start_4
    new-instance v2, Ljava/io/File;

    const-string v3, "data/data/com.android.phone/files/video_call_capture.jpg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1583
    const-string v2, "video_call_capture.jpg"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/InVTCallScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v2

    .line 1591
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 1593
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 1595
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1607
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1621
    :cond_1
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1623
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 1633
    :cond_3
    :goto_2
    return-void

    .line 1563
    :catch_0
    move-exception v3

    .line 1565
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 1611
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    .line 1613
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1621
    if-eqz v2, :cond_4

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1623
    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 1625
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1567
    :catch_3
    move-exception v3

    .line 1569
    :try_start_b
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_0

    .line 1619
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    .line 1621
    :goto_4
    if-eqz v2, :cond_5

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1623
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 1629
    :cond_6
    :goto_5
    throw v0

    .line 1597
    :catch_4
    move-exception v3

    .line 1599
    :try_start_d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1611
    :catch_5
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 1601
    :catch_6
    move-exception v3

    .line 1603
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_1

    .line 1619
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 1625
    :catch_7
    move-exception v1

    goto :goto_5

    .line 1619
    :catchall_2
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 1611
    :catch_8
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto :goto_3

    .line 1625
    :catch_9
    move-exception v0

    goto :goto_2
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4889
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkForCleanupState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4892
    const-string v0, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4918
    const-string v0, "After internalHangup call the calllog -Exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4919
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 4920
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 4921
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 4932
    :goto_0
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 4933
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 4937
    return-void

    .line 4926
    :cond_0
    const-string v0, "- delayedCleanupAfterDisconnect: staying on the InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4928
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method private dismissAllDialogs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5668
    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5675
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 5677
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5678
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5679
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 5681
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 5683
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5684
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5685
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 5687
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 5689
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5690
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5691
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5693
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 5695
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5696
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5697
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 5699
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 5701
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5702
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5703
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 5705
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 5707
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5708
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5709
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 5711
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 5713
    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5714
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5715
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 5717
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_8

    .line 5719
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 5721
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 5723
    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5724
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5725
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 5727
    :cond_9
    return-void
.end method

.method private dismissContextDailogBox()V
    .locals 1

    .prologue
    .line 8579
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8580
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 8581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 8583
    :cond_0
    return-void
.end method

.method private displayToast(I)V
    .locals 1
    .parameter "aResId"

    .prologue
    .line 8244
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 8245
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 8246
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8248
    :cond_0
    return-void
.end method

.method private dumpBluetoothState()V
    .locals 3

    .prologue
    .line 6558
    const-string v0, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAudioConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6565
    const-string v0, "="

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6566
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_2

    .line 6567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6569
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 6570
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 6571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.getCurrentHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6572
    if-eqz v0, :cond_0

    .line 6573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6582
    :cond_0
    :goto_0
    return-void

    .line 6577
    :cond_1
    const-string v0, "= mBluetoothHeadset is null"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6580
    :cond_2
    const-string v0, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableKeyGuardLock()V
    .locals 3

    .prologue
    .line 2711
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_1

    .line 2723
    :cond_0
    :goto_0
    return-void

    .line 2714
    :cond_1
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value of KeyGuard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    if-eqz v0, :cond_0

    .line 2718
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 2719
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 2720
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    .line 2721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    goto :goto_0
.end method

.method private fillMenuArrayList()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const v6, 0x7f0d02f7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1502
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1503
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f0d02db

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d02dc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    .line 1505
    new-array v1, v7, [Ljava/lang/String;

    const v2, 0x7f0d02d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d02d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0d02d4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;

    .line 1508
    new-array v1, v7, [Ljava/lang/String;

    const v2, 0x7f0d02d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d02d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0d02d5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;

    .line 1512
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d02f9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    .line 1514
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 1516
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d02fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    .line 1519
    return-void
.end method

.method private getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    .line 4576
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4578
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4579
    const/4 v1, 0x0

    .line 4587
    :goto_0
    return-object v1

    .line 4582
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4584
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4587
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleCallKey()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 2953
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    .line 2954
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v5

    .line 2955
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v5

    .line 2957
    :goto_2
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2958
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 2963
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 2964
    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 2966
    if-eqz v0, :cond_4

    .line 2970
    const-string v0, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2971
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    .line 3043
    :cond_0
    :goto_3
    return v5

    :cond_1
    move v0, v3

    .line 2953
    goto :goto_0

    :cond_2
    move v1, v3

    .line 2954
    goto :goto_1

    :cond_3
    move v2, v3

    .line 2955
    goto :goto_2

    .line 2974
    :cond_4
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_5

    if-eqz v1, :cond_5

    .line 2978
    const-string v0, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2980
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_3

    .line 2981
    :cond_5
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_0

    .line 2986
    const-string v0, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2989
    :cond_6
    if-ne v3, v5, :cond_a

    .line 2990
    if-eqz v0, :cond_7

    .line 3001
    const-string v0, "InVTCallScreen"

    const-string v1, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto :goto_3

    .line 3011
    :cond_7
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 3014
    const-string v0, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 3016
    :cond_8
    if-eqz v2, :cond_9

    .line 3020
    const-string v0, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 3033
    :cond_9
    const-string v0, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 3037
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2866
    const/4 v0, 0x0

    return v0
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 4189
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4191
    if-eqz v0, :cond_0

    .line 4192
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 4195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePostOnDialChar: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4197
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    .line 4198
    sget-object v2, Lcom/android/phone/InVTCallScreen$47;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4250
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4215
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    goto :goto_0

    .line 4198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleStartupError(Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;)V
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f0d018d

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v5, "InVTCallScreen"

    .line 5452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5466
    sget-object v0, Lcom/android/phone/InVTCallScreen$47;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5541
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError: unexpected status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5543
    invoke-direct {p0, v4, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    .line 5549
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne p1, v0, :cond_1

    .line 5553
    :cond_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 5555
    :cond_1
    return-void

    .line 5483
    :pswitch_1
    const v0, 0x7f0d0189

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5490
    :pswitch_2
    const-string v0, "EMERGENCY_ONLY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5491
    const v0, 0x7f0d018a

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5497
    :pswitch_3
    const-string v0, "InVTCallScreen"

    const-string v0, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5505
    :pswitch_4
    const v0, 0x7f0d018c

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5518
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 5519
    const v0, 0x7f0d018e

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5522
    :cond_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_3

    .line 5523
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 5529
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    goto :goto_0

    .line 5525
    :cond_3
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 5527
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_1

    .line 5537
    :pswitch_6
    invoke-direct {p0, v4, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5466
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

.method private hideEndcallbuttonlayout()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 9328
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside hideEndcallbuttonlayout"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9329
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of duringEndCalllayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9330
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9332
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of SeekBarLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9333
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9334
    const-string v0, "InVTCallScreen"

    const-string v0, "Outside hideEndcallbuttonlayout"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9335
    return-void
.end method

.method private initInVTCallScreen()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 2727
    const-string v0, "initInVTCallScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2728
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside initInVTCallScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_0

    .line 2730
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 2731
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 2735
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 2756
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 2757
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 2758
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2759
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 2760
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    .line 2836
    :goto_0
    return-void

    .line 2765
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2766
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    .line 2835
    :cond_3
    :goto_1
    const-string v0, "InVTCallScreen"

    const-string v0, "Exit initInVTCallScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2767
    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_5

    .line 2768
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    goto :goto_1

    .line 2769
    :cond_5
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2771
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtoutgoing_main_unlock"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 2773
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtoutgoing_main_unlock : After Inflating screen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 2777
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 2778
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    goto :goto_1

    .line 2786
    :cond_6
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 2791
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtincoming_main_lock"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    new-instance v0, Lcom/android/phone/InVTCallScreen$9;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$9;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2798
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtincoming_main_lock : After Inflating screen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 2800
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 2801
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    goto :goto_1

    .line 2805
    :cond_7
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 2807
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 2808
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtduringcall_main"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 2810
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtduringcall_main : After Inflating screen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 2812
    const-string v0, "After SurfaceView_Initialization."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2813
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    .line 2814
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setupDTMFDialer()V

    .line 2815
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startDialerSession()V

    .line 2816
    const-string v0, "After Button_Initialization."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2817
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startVTCall()V

    .line 2818
    const-string v0, "After StartVTCall "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initvtstack()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "InVTCallScreen"

    .line 1867
    const-string v0, "Init VT Stack get called "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1868
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_0

    .line 1869
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 1872
    const-string v0, "Init VT Stack State Listener Registered"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1873
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1874
    const-string v1, "Videocalltype"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    .line 1876
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    if-ne v3, v0, :cond_1

    .line 1877
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming VideoCall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 1885
    :goto_0
    return-void

    .line 1881
    :cond_1
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Outgoing VideoCall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    goto :goto_0
.end method

.method private launchBrightSB(I)V
    .locals 6
    .parameter

    .prologue
    .line 9417
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside launchBrightSB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9418
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->hideEndcallbuttonlayout()V

    .line 9419
    new-instance v0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;-><init>(Lcom/android/phone/InVTCallScreen;JJ)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    .line 9420
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->start()Landroid/os/CountDownTimer;

    .line 9421
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    .line 9422
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    .line 9423
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    .line 9425
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 9426
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9427
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9428
    if-nez p1, :cond_1

    .line 9429
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 9430
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->GetCameraParams(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 9431
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9432
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9440
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 9442
    :cond_0
    return-void

    .line 9434
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 9435
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->GetCameraParams(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 9436
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9437
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 9532
    const-string v0, "InVTCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9533
    return-void
.end method

.method private onBluetoothClick()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5307
    const-string v0, "onBluetoothClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5309
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5310
    const-string v0, "isBluetoothAvailable()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5312
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5313
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->disconnectBluetoothAudio()V

    .line 5314
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5345
    :goto_0
    return-void

    .line 5322
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5323
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 5324
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 5326
    :cond_1
    invoke-static {p0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5327
    const-string v0, "BT: turnOnSpeaker()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5329
    :cond_2
    const-string v0, "BT: connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5330
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 5335
    :cond_3
    const-string v0, "InVTCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5339
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5342
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5343
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x4

    const-wide/16 v11, 0xdac

    const/16 v10, 0x6c

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3567
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3568
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 3570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cause="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3571
    iput-boolean v9, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 3572
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_1

    move v3, v9

    .line 3574
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v9

    .line 3575
    :goto_1
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v9, :cond_3

    move v4, v9

    .line 3597
    :goto_2
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v5, :cond_0

    .line 3598
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v5}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 3601
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    .line 3602
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v7, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v6, v7, :cond_4

    iget-object v6, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v6, :cond_4

    .line 3604
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 3605
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4115
    :goto_3
    return-void

    :cond_1
    move v3, v8

    .line 3572
    goto :goto_0

    :cond_2
    move v1, v8

    .line 3574
    goto :goto_1

    :cond_3
    move v4, v8

    .line 3575
    goto :goto_2

    .line 3607
    :cond_4
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v7, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v6, v7, :cond_5

    iget-object v6, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v6, :cond_6

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v5, :cond_6

    .line 3610
    :cond_5
    const-string v0, "onDisconnect: OTA Call end already handled"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 3625
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getNetworkType()V

    .line 3667
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usecall_fail_option"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3669
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    const/16 v7, 0x9

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_9

    .line 3676
    if-ne v5, v9, :cond_7

    .line 3677
    const v0, 0x7f0d02ea

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3678
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    .line 4114
    :goto_4
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    goto/16 :goto_3

    .line 3680
    :cond_7
    const v0, 0x7f0d0300

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3681
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 3682
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3684
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 3688
    :cond_9
    iget-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_a

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_a

    .line 3690
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 3693
    :cond_a
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_d

    .line 3695
    if-ne v5, v9, :cond_b

    .line 3696
    const v0, 0x7f0d02e8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3697
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_4

    .line 3699
    :cond_b
    const v0, 0x7f0d02fe

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3700
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 3701
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3704
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 3709
    :cond_d
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_10

    .line 3713
    if-ne v5, v9, :cond_e

    .line 3714
    const v0, 0x7f0d02e6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3715
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_4

    .line 3718
    :cond_e
    const v0, 0x7f0d0301

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3719
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 3720
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3722
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 3727
    :cond_10
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_13

    .line 3729
    if-ne v5, v9, :cond_11

    .line 3730
    const v0, 0x7f0d02e9

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3731
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 3733
    :cond_11
    const v0, 0x7f0d02ff

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3734
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 3735
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3737
    :cond_12
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 3742
    :cond_13
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_16

    .line 3744
    if-ne v5, v9, :cond_14

    .line 3745
    const v0, 0x7f0d02e9

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3746
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 3748
    :cond_14
    const v0, 0x7f0d02ff

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3749
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 3750
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3752
    :cond_15
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 3756
    :cond_16
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_19

    .line 3758
    if-ne v5, v9, :cond_17

    .line 3759
    const v0, 0x7f0d02e7

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3760
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 3763
    :cond_17
    const v0, 0x7f0d0302

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3764
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 3765
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3767
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 3771
    :cond_19
    iget-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    if-nez v6, :cond_1c

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_1c

    .line 3774
    if-ne v5, v9, :cond_1a

    .line 3775
    const v0, 0x7f0d02e9

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3776
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 3778
    :cond_1a
    const v0, 0x7f0d02ff

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3779
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 3780
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3782
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 3786
    :cond_1c
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_1d

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_1d

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_1d

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_20

    .line 3791
    :cond_1d
    const-string v0, "onDisconnect: Call failed Voice call dialog shown"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3792
    if-ne v5, v9, :cond_1e

    .line 3793
    const v0, 0x7f0d02e9

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3794
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 3796
    :cond_1e
    const v0, 0x7f0d02ff

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 3797
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    .line 3798
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3800
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 3806
    :cond_20
    const-string v5, "onDisconnect: do normal operation."

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3807
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_21

    .line 3808
    const v0, 0x7f0d001a

    invoke-direct {p0, v0, v8}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 3810
    :cond_21
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_22

    .line 3811
    const v0, 0x7f0d0019

    invoke-direct {p0, v0, v8}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 3813
    :cond_22
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_23

    .line 3814
    const v0, 0x7f0d001b

    invoke-direct {p0, v0, v8}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 3817
    :cond_23
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_24

    .line 3818
    const v0, 0x7f0d001c

    invoke-direct {p0, v0, v8}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 3821
    :cond_24
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_25

    .line 3822
    const v0, 0x7f0d001d

    invoke-direct {p0, v0, v8}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 3827
    :cond_25
    if-eqz v1, :cond_26

    .line 3828
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3830
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_2d

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_2d

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_2d

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_2d

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_2d

    .line 3835
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 3865
    :cond_26
    :goto_5
    if-eqz v4, :cond_27

    .line 3866
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getPreviousGsmCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3868
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_31

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_31

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_31

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_31

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_31

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_31

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_31

    .line 3875
    const v1, 0x7f0d0029

    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3927
    :cond_27
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 3928
    if-eqz v4, :cond_2a

    .line 3937
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 3938
    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_29

    .line 3939
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3940
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v6, :cond_28

    .line 3951
    const-string v1, "- Still-active conf call; clearing DISCONNECTED..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3963
    :cond_29
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->stopFakeCallVoice(Lcom/android/internal/telephony/Call;)V

    .line 3968
    :cond_2a
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "emergency_call_retry_count"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3979
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v9

    :goto_7
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mShowCallLogAfterDisconnect:Z

    .line 3985
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v0, :cond_2b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v0, :cond_2b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v0, :cond_38

    if-lez v1, :cond_38

    :cond_2b
    if-eqz v3, :cond_38

    move v0, v9

    .line 3989
    :goto_8
    if-eqz v0, :cond_39

    .line 3991
    const-string v0, "- onDisconnect: bailOutImmediately..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3996
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    .line 4000
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v0, :cond_2c

    if-lez v1, :cond_2c

    .line 4002
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4112
    :cond_2c
    :goto_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_4

    .line 3836
    :cond_2d
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v5, :cond_2e

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_26

    :cond_2e
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_26

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_26

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_26

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_26

    .line 3842
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v1, :cond_2f

    .line 3846
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 3847
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    .line 3849
    :cond_2f
    if-nez v8, :cond_30

    .line 3853
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 3854
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    .line 3860
    :cond_30
    iput-boolean v9, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    .line 3878
    :cond_31
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v4, :cond_32

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_35

    :cond_32
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_35

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_35

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_35

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_35

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_35

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_35

    .line 3886
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v1, :cond_33

    .line 3890
    const v1, 0x7f0d0029

    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3892
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    .line 3894
    :cond_33
    if-nez v8, :cond_34

    .line 3898
    const v1, 0x7f0d0029

    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3900
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    .line 3906
    :cond_34
    iput-boolean v9, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    .line 3909
    :cond_35
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v1, :cond_36

    .line 3910
    const v1, 0x7f0d000c

    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 3912
    :cond_36
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v1, :cond_27

    .line 3913
    const v1, 0x7f0d000d

    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_37
    move v0, v8

    .line 3979
    goto/16 :goto_7

    :cond_38
    move v0, v8

    .line 3985
    goto/16 :goto_8

    .line 4007
    :cond_39
    const-string v0, "- onDisconnect: delayed bailout..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4015
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4019
    if-eqz v3, :cond_3b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_3a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3b

    .line 4023
    :cond_3a
    const-string v0, "- onDisconnect: switching to \'Call ended\' state..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4024
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 4029
    :cond_3b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_3f

    move v0, v9

    .line 4030
    :goto_a
    if-nez v0, :cond_3e

    .line 4032
    const-string v0, "- onDisconnect: cleaning up after FG call disconnect..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4036
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3c

    .line 4038
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4039
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4043
    :cond_3c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3d

    .line 4045
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4046
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 4050
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3e

    .line 4052
    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4053
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 4078
    :cond_3e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    .line 4079
    if-nez v3, :cond_40

    .line 4086
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 4091
    const-string v0, "onDisconnect: Call Collision case - staying on InVTCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4093
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_3

    :cond_3f
    move v0, v8

    .line 4029
    goto :goto_a

    .line 4102
    :cond_40
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v0, :cond_41

    const/16 v0, 0xdac

    .line 4104
    :goto_b
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 4105
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9

    .line 4102
    :cond_41
    const/16 v0, 0xdac

    goto :goto_b
.end method

.method private onMMICancel()V
    .locals 1

    .prologue
    .line 4159
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4162
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 4174
    const-string v0, "onMMICancel: finishing InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4175
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 4177
    return-void
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter

    .prologue
    .line 4122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMMIInitiate()...  AsyncResult r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4129
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_0

    .line 4131
    const-string v0, "Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4148
    :goto_0
    return-void

    .line 4139
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 4141
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 4143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - MmiCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4145
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 4146
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v0, v1, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onMuteClick()V
    .locals 2

    .prologue
    .line 5297
    const-string v1, "onMuteClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5298
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 5299
    .local v0, newMuteState:Z
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 5300
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 5301
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 5303
    :cond_0
    return-void

    .line 5298
    .end local v0           #newMuteState:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x1

    .line 3473
    const-string v0, "onPhoneStateChanged()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3478
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_0

    .line 3479
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 3485
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 3486
    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    .line 3488
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 3495
    return-void
.end method

.method private onShowHideDialpad()V
    .locals 1

    .prologue
    .line 5349
    const-string v0, "onShowHideDialpad()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5355
    return-void
.end method

.method private onSpeakerClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5269
    const-string v1, "onSpeakerClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5274
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 5275
    .local v0, newSpeakerState:Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5277
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->disconnectBluetoothAudio()V

    .line 5279
    :cond_0
    invoke-static {p0, v0, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5280
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    .line 5281
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 5293
    :cond_1
    return-void

    .line 5274
    .end local v0           #newSpeakerState:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private performBatteryLowProcess()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "InVTCallScreen"

    .line 1239
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    if-eqz v0, :cond_0

    .line 1240
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and phone is in use"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->removesurfaceview()V

    .line 1243
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 1244
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 1245
    const v0, 0x7f0d030e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1250
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1252
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_1

    .line 1253
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and VT Already started, so calling stopVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 1255
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and VT not started so calling internal hangup "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1260
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1262
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and incomming call rejected so calling internal hangup "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 1266
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and during or MO call rejected  so calling internal hangup "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1270
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const-string v7, "\'."

    const-string v6, "InVTCallScreen"

    .line 4601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall()...  intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4607
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkIfOkToInitiateOutgoingCall()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    .line 4610
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4626
    if-nez v1, :cond_2

    .line 4627
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4630
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 4795
    :cond_0
    :goto_0
    return-object v0

    .line 4611
    :catch_0
    move-exception v1

    .line 4616
    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_1

    .line 4618
    const-string v1, "Voicemail number not reachable in current SIM card state."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4622
    :cond_1
    const-string v0, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4623
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 4633
    :cond_2
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 4634
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 4637
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 4638
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " attempted to call emergency number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 4641
    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 4642
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with non-emergency number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- failing call."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 4651
    :cond_4
    if-eqz v2, :cond_5

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v4, :cond_5

    .line 4653
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 4655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Emergency number detected, changing state to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4659
    :cond_5
    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v4, :cond_6

    .line 4665
    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v1, :cond_0

    .line 4667
    const-class v0, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4670
    const-string v0, "placeCall: starting EmergencyCallHandler, finishing InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4671
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 4672
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 4678
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4680
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v9, :cond_7

    .line 4683
    const-string v4, "placeCall: isOtaSpNumber() returns true"

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4684
    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 4685
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v4, :cond_7

    .line 4686
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v8, v4, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 4690
    :cond_7
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    .line 4697
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 4699
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v5, :cond_8

    if-nez v2, :cond_8

    if-nez v3, :cond_8

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4705
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {p0, v2, v1, v4, v3}, Lcom/android/phone/PhoneUtils;->placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v2

    .line 4720
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 4792
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall: unknown callStatus "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 4713
    :cond_8
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v1, v4}, Lcom/android/phone/PhoneUtils;->dialVideoCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    goto :goto_1

    .line 4723
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4726
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_9

    .line 4727
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 4728
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4749
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v9, :cond_a

    .line 4751
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_a

    .line 4753
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 4756
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x74

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 4758
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4762
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 4765
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4769
    :cond_a
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 4772
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4783
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 4785
    :pswitch_2
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 4720
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerBatteryListener()V
    .locals 2

    .prologue
    .line 1521
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1522
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1523
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1524
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1525
    return-void
.end method

.method private registerDevicePolicyManagerReceiver()V
    .locals 2

    .prologue
    .line 1528
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1529
    .local v0, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1530
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1531
    return-void
.end method

.method private registerForPhoneStates()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2454
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v1, :cond_1

    .line 2455
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2457
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2458
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2459
    .local v0, phoneType:I
    if-ne v0, v5, :cond_2

    .line 2460
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x33

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2468
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2482
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2484
    if-ne v0, v6, :cond_0

    .line 2485
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x75

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2488
    :cond_0
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    .line 2490
    .end local v0           #phoneType:I
    :cond_1
    return-void

    .line 2470
    .restart local v0       #phoneType:I
    :cond_2
    if-ne v0, v6, :cond_3

    .line 2472
    const-string v1, "Registering for Call Waiting."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2473
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x73

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 2476
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private releaseKeyGuardLock()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 2684
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2685
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    .line 2686
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value of KeyGuard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    if-eqz v0, :cond_0

    .line 2688
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Lcom/android/phone/InVTCallScreen$8;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$8;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 2700
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "Removing Keygard Lock Inside InVTCallscreen"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 2701
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 2703
    :cond_0
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value of KeyGuard before inflation is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    return-void
.end method

.method private removesurfaceview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, "InVTCallScreen"

    .line 9803
    const-string v0, "InVTCallScreen"

    const-string v0, "In removesurfaceview"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9805
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 9807
    const-string v0, "InVTCallScreen"

    const-string v0, "In  not null condition"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9808
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 9809
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 9810
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 9811
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 9812
    const-string v0, "InVTCallScreen"

    const-string v0, "Out not null condition"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9814
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v0, "Out removesurfaceview"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9815
    return-void
.end method

.method private selectImageFromMyFiles()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v1, "InVTCallScreen"

    .line 9256
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectImageFromMyFiles method"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9259
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 9260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 9265
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    .line 9266
    const-string v0, "InVTCallScreen"

    const-string v0, "External Media is present"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9267
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PickImageFromGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9268
    const-string v1, "senderIsVideoCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9269
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 9280
    return-void
.end method

.method private selectVideoFromMyFiles()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 9284
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectVideoFromMyFiles method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 9288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 9293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9294
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9295
    const-string v1, "vnd.android.cursor.dir/video"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 9296
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9298
    const-string v0, "InVTCallScreen"

    const-string v0, "Out selectMyVideofile method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9300
    return-void
.end method

.method private setHideOrShowMeState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8960
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 8961
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8964
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 8969
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 8971
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f0d02c4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 8978
    :cond_2
    :goto_0
    return-void

    .line 8973
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 8975
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f0d02c5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V
    .locals 2
    .parameter "newMode"

    .prologue
    .line 6009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInVTCallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6010
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    .line 6011
    sget-object v0, Lcom/android/phone/InVTCallScreen$47;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6144
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    .line 6145
    :pswitch_1
    return-void

    .line 6118
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 6122
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 6127
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6011
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setRingingCallFrameAni()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 9579
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 9580
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 9582
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 9584
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 9586
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 9588
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 9590
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 9592
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 9594
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 9596
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 9597
    return-void
.end method

.method private setupDTMFDialer()V
    .locals 4

    .prologue
    .line 1777
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1778
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    .line 1784
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Full touch device!  Found dialerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1785
    const/4 v0, 0x0

    .line 1798
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    if-nez v1, :cond_1

    .line 1799
    const-string v1, "InVTCallScreen"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1805
    :goto_1
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Landroid/widget/SlidingDrawer;)V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 1807
    return-void

    .line 1780
    :cond_0
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    goto :goto_0

    .line 1802
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    goto :goto_1
.end method

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 5619
    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5622
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_0

    .line 5624
    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5639
    :goto_0
    return-void

    .line 5629
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5631
    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5635
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 5638
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showEndCallScreen(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3355
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->closeOptionsMenu()V

    .line 3356
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissContextDailogBox()V

    .line 3358
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3359
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 3360
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    .line 3361
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3362
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    .line 3363
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3364
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    .line 3365
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3366
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAddButton:Landroid/widget/Button;

    .line 3367
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3369
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSaveButtonFrame:Landroid/view/View;

    .line 3370
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    .line 3371
    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 3372
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 3373
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    .line 3374
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V

    .line 3375
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 5562
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGenericErrorDialog(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5571
    if-eqz p2, :cond_0

    .line 5572
    new-instance v1, Lcom/android/phone/InVTCallScreen$14;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$14;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 5577
    new-instance v2, Lcom/android/phone/InVTCallScreen$15;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$15;-><init>(Lcom/android/phone/InVTCallScreen;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 5595
    :goto_0
    new-instance v3, Lcom/android/phone/InVTCallScreen$18;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$18;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 5604
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0d003d

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5607
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5611
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5614
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5615
    return-void

    .line 5583
    :cond_0
    new-instance v1, Lcom/android/phone/InVTCallScreen$16;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$16;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 5588
    new-instance v2, Lcom/android/phone/InVTCallScreen$17;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$17;-><init>(Lcom/android/phone/InVTCallScreen;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4253
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4255
    const v2, 0x7f0d0042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4256
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4258
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4260
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4261
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4265
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0044

    new-instance v2, Lcom/android/phone/InVTCallScreen$11;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$11;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$10;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InVTCallScreen$10;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4282
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4284
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4285
    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4297
    const v2, 0x7f0d0042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4298
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4300
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4302
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4303
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4307
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0045

    new-instance v2, Lcom/android/phone/InVTCallScreen$13;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$13;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/android/phone/InVTCallScreen$12;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$12;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4323
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4325
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4326
    return-void
.end method

.method private show_camera()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "Value of selectImg"

    const-string v5, "In selectVideo condition under show_camera"

    const-string v2, "InVTCallScreen"

    .line 9921
    const-string v0, "InVTCallScreen"

    const-string v0, "In show_camera method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9922
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of selectImg"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9923
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of selectImg"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9925
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    if-eqz v0, :cond_2

    .line 9926
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectImg condition under show_camera"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9933
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 9934
    iput-object v4, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 9935
    const-string v0, "InVTCallScreen"

    const-string v0, "Out selectImg condition under show_camera"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9949
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 9950
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 9952
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v0, "Out show_camera method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9953
    return-void

    .line 9936
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    if-eqz v0, :cond_0

    .line 9937
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectVideo condition under show_camera"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9944
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 9945
    iput-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 9947
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectVideo condition under show_camera"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startFakeCallVoice(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 6927
    return-void
.end method

.method private startRecordingFarEndView()V
    .locals 5

    .prologue
    const/16 v4, 0x7e

    const/4 v3, 0x1

    .line 9726
    .line 9727
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9728
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 9729
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUI()V

    .line 9730
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/MediaLowSpaceReceiver;->registerLowMemoryListner(Landroid/os/Handler;)V

    .line 9733
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9734
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    .line 9735
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 9736
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 9737
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const-string v1, "data/data/com.android.phone/files/video_call_recording_start.jpg"

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 9738
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9740
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 9741
    const/16 v0, 0xa

    .line 9742
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    .line 9748
    :cond_0
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Out start_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9749
    return-void

    .line 9745
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 9746
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private startRecordingNearEndView()V
    .locals 2

    .prologue
    .line 9778
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9782
    const-string v0, "InVTCallScreen"

    const-string v1, "Out start_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9783
    return-void
.end method

.method private startToast(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 5253
    if-eqz p1, :cond_0

    .line 5254
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5256
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5257
    const/16 v1, 0x10

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 5258
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5263
    :goto_0
    return-void

    .line 5260
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "startToast : msg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startVTCall()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 9503
    const-string v0, "InVTCallScreen"

    const-string v0, "Before-StartVTCall"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9504
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 9505
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-nez v0, :cond_0

    .line 9507
    const-string v0, "InVTCallScreen"

    const-string v0, "StartVTCall is called "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9508
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    .line 9509
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9510
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StartVTCall(Z)V

    .line 9515
    :cond_0
    return-void
.end method

.method private stopFakeCallVoice(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 6941
    return-void
.end method

.method private stopRecordingFarEndView()V
    .locals 3

    .prologue
    const/16 v2, 0x7e

    .line 9754
    const-string v0, "InVTCallScreen"

    const-string v1, "In stopRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9755
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9756
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StopRecording(Z)V

    .line 9758
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUI()V

    .line 9759
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9760
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9762
    return-void
.end method

.method private stopRecordingNearEndView()V
    .locals 2

    .prologue
    .line 9787
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9788
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9789
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StopRecording(Z)V

    .line 9790
    :cond_0
    const v0, 0x7f0d02de

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 9791
    const-string v0, "InVTCallScreen"

    const-string v1, "Out stop_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9792
    return-void
.end method

.method private stopVTCall()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 9518
    const-string v0, "InVTCallScreen"

    const-string v0, "Before-StopVTCall"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9519
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 9520
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_0

    .line 9521
    const-string v0, "InVTCallScreen"

    const-string v0, "StopVTCall is called"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 9523
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9524
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->StopVTCall()V

    .line 9527
    :cond_0
    return-void
.end method

.method private surfaceview_initialize()V
    .locals 5

    .prologue
    const v4, 0x7f0800f8

    const v3, 0x7f0800f7

    const/4 v2, 0x3

    .line 7512
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7513
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 7514
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 7515
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 7516
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 7517
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 7518
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 7796
    :cond_0
    :goto_0
    return-void

    .line 7520
    :cond_1
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7521
    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    goto :goto_0

    .line 7522
    :cond_2
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 7523
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->stopRecordingLayout:Landroid/widget/LinearLayout;

    .line 7524
    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    .line 7525
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 7528
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Lcom/android/phone/InVTCallScreen$22;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$22;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7538
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    .line 7539
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 7540
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 7541
    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    .line 7543
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 7547
    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 7548
    new-instance v1, Lcom/android/phone/InVTCallScreen$23;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$23;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7690
    new-instance v1, Lcom/android/phone/InVTCallScreen$24;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$24;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7777
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 7778
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 7779
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 7780
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 7781
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 7784
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Lcom/android/phone/InVTCallScreen$25;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$25;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method

.method private swipeSurfaceView()V
    .locals 2

    .prologue
    .line 9908
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 9909
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 9910
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9912
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    .line 9913
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    .line 9915
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 9916
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 9917
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9180
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside CallVtScreen switchCamera method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9181
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v0, :cond_1

    .line 9183
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9184
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v4, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 9185
    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    .line 9191
    :goto_0
    return-void

    .line 9187
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_2

    .line 9188
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v4, v3}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 9189
    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    goto :goto_0
.end method

.method private syncWithPhoneState()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 4526
    const/4 v1, 0x0

    .line 4528
    .local v1, updateSuccessful:Z
    const-string v2, "syncWithPhoneState()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4530
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    .line 4532
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dumpBluetoothState()V

    .line 4539
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 4541
    .local v0, phoneType:I
    if-ne v0, v4, :cond_1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v2, v3, :cond_1

    .line 4545
    :cond_0
    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 4559
    :goto_0
    return-object v2

    .line 4548
    :cond_1
    if-eq v0, v4, :cond_2

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4552
    :cond_2
    const-string v2, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4553
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4554
    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 4558
    :cond_3
    const-string v2, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4559
    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 2494
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 2495
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 2496
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2498
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 2499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    .line 2500
    return-void
.end method

.method private updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0d0007

    const-string v4, "InVTCallScreen"

    const-string v3, ""

    .line 7042
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 7043
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 7044
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_0

    .line 7046
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7047
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7048
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info Avialable"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7074
    :goto_0
    return-void

    .line 7049
    :cond_0
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7051
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7052
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7053
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_ALLOWED"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7054
    :cond_1
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v0, :cond_2

    .line 7055
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const v1, 0x7f0d0008

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7056
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7057
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_RESTRICTED"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7058
    :cond_2
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v1, v0, :cond_3

    .line 7059
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7060
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7061
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_UNKNOWN"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7062
    :cond_3
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v0, :cond_4

    .line 7063
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const v1, 0x7f0d0009

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7064
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7065
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_PAYPHONE"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7066
    :cond_4
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v0, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 7068
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7069
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 7071
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7072
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 2
    .parameter

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1831
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 1832
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_1

    .line 1839
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1840
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 1842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    .line 1844
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 1848
    :cond_1
    return-void

    .line 1834
    :cond_2
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 1835
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEndCallButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3333
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3334
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3335
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->showEndCallScreen(Z)V

    .line 3336
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 3352
    :cond_0
    :goto_0
    return-void

    .line 3342
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 3343
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3344
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 3346
    const-string v2, "updateEndCallButton : All calls are IDLE at updateEndCallButton()"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3347
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    goto :goto_0

    .line 3351
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->showEndCallScreen(Z)V

    goto :goto_0
.end method

.method private updateEndcallButtonState(Z)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3378
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAddButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3379
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3380
    const/4 v1, 0x0

    .line 3381
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3382
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3383
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3384
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    .line 3410
    :goto_0
    if-eqz p1, :cond_7

    .line 3411
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const v2, 0x7f0d018d

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3413
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 3414
    if-nez v1, :cond_6

    .line 3415
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3427
    :cond_0
    :goto_1
    if-eqz v0, :cond_12

    .line 3428
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 3430
    if-nez v1, :cond_8

    move v2, v8

    .line 3431
    :goto_2
    if-nez v1, :cond_9

    move v3, v8

    .line 3432
    :goto_3
    if-nez v1, :cond_a

    move v4, v8

    .line 3434
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    .line 3435
    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v5, v6, :cond_c

    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v5, v6, :cond_c

    .line 3437
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 3438
    instance-of v5, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_13

    .line 3439
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 3440
    if-nez v1, :cond_b

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_b

    move v0, v8

    :goto_5
    move v1, v4

    move v10, v3

    move v3, v2

    move v2, v10

    .line 3447
    :goto_6
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v4, :cond_d

    .line 3448
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3449
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3450
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3457
    :goto_7
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v1, :cond_10

    move v1, v8

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3458
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSaveButtonFrame:Landroid/view/View;

    if-eqz v0, :cond_11

    move v0, v7

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3466
    :cond_1
    :goto_a
    return-void

    .line 3385
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v8, :cond_5

    .line 3386
    if-eqz v0, :cond_14

    .line 3387
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3388
    if-eqz v0, :cond_3

    .line 3389
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3390
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3394
    :cond_3
    :goto_b
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 3395
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 3396
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const v5, 0x7f0200ca

    invoke-static {v2, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 3400
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3401
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3403
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3406
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: isContactExist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3417
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3419
    :catch_0
    move-exception v1

    .line 3420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error::PhoneUtils.VoiceMailNumberMissingException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3423
    :cond_7
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3424
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    move v2, v7

    .line 3430
    goto/16 :goto_2

    :cond_9
    move v3, v7

    .line 3431
    goto/16 :goto_3

    :cond_a
    move v4, v7

    .line 3432
    goto/16 :goto_4

    :cond_b
    move v0, v7

    .line 3440
    goto/16 :goto_5

    :cond_c
    move v0, v7

    move v1, v7

    move v2, v7

    move v3, v7

    .line 3445
    goto/16 :goto_6

    .line 3452
    :cond_d
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3453
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_e

    move v3, v8

    :goto_c
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3454
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_f

    move v2, v8

    :goto_d
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_e
    move v3, v7

    .line 3453
    goto :goto_c

    :cond_f
    move v2, v7

    .line 3454
    goto :goto_d

    :cond_10
    move v1, v7

    .line 3457
    goto/16 :goto_8

    :cond_11
    move v0, v9

    .line 3458
    goto/16 :goto_9

    .line 3463
    :cond_12
    const-string v0, "EndCallButtonsView : connection is NullPointer at updateState"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_13
    move v0, v7

    goto/16 :goto_5

    :cond_14
    move-object v0, v1

    goto/16 :goto_b
.end method

.method private updateInCallBackground()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "InVTCallScreen"

    .line 6718
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    .line 6719
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v5

    .line 6720
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v5

    .line 6721
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 6722
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v4

    .line 6733
    if-eqz v0, :cond_4

    .line 6735
    if-eqz v4, :cond_0

    .line 6873
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v6

    .line 6718
    goto :goto_0

    :cond_2
    move v1, v6

    .line 6719
    goto :goto_1

    :cond_3
    move v2, v6

    .line 6720
    goto :goto_2

    .line 6740
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v1, :cond_0

    .line 6746
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 6747
    sget-object v1, Lcom/android/phone/InVTCallScreen$47;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 6749
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkForCleanupState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6750
    const-string v0, "InVTCallScreen"

    const-string v0, "updateInCallBackground :ACTIVE"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6752
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v5, :cond_6

    .line 6753
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V

    .line 6755
    :cond_6
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6756
    const-string v0, "InVTCallScreen"

    const-string v0, "Durring Call EarPhone is connected and switching off the speaker. "

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6782
    :cond_7
    :goto_4
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    .line 6783
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 6784
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    .line 6785
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_b

    .line 6787
    const-string v0, "InitVtCallScreen started because Activity is in foreground"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6788
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    .line 6795
    :goto_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 6796
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 6797
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 6798
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6799
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    .line 6801
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 6802
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 6764
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v8, :cond_7

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-nez v0, :cond_7

    .line 6766
    const-string v0, "InVTCallScreen"

    const-string v0, "Durring Call Bluetooth is connected and switching off the speaker. "

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6769
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v8, :cond_a

    .line 6771
    invoke-static {p0, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_4

    .line 6773
    :cond_a
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v5, :cond_7

    .line 6774
    const-string v0, "InVTCallScreen"

    const-string v0, "Durring Call Bluetooth is not connected and switching on the speaker. in IncallScreen"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6778
    invoke-static {p0, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_4

    .line 6791
    :cond_b
    const-string v0, "InitVtCallScreen not started because Activity is not in foreground"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6792
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startVTCall()V

    goto :goto_5

    .line 6808
    :pswitch_1
    const-string v0, "InVTCallScreen"

    const-string v0, "updateInCallBackground :DISCONNECTING"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6809
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 6810
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 6811
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 6812
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    .line 6813
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 6814
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 6830
    :pswitch_2
    const-string v0, "InVTCallScreen"

    const-string v0, "updateInCallBackground :DISCONNECTED"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6831
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 6832
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 6833
    const-string v0, "InVTCallScreen"

    const-string v0, "updateInCallBackground :Timer Canceled"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6834
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_0

    .line 6835
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 6836
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 6844
    :pswitch_3
    const-string v0, "case dialing"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6845
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    if-nez v0, :cond_d

    .line 6846
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6847
    :cond_c
    const-string v0, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6848
    const v0, 0x7f0d02fd

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6850
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    .line 6854
    :cond_d
    :pswitch_4
    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 6747
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateInCallTouchUi()V
    .locals 0

    .prologue
    .line 6278
    return-void
.end method

.method private updateOwnImageStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4984
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "own_video_receivedcall"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4986
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4987
    :cond_1
    const-string v1, "updateOwnImageStatus:: Camera desabled due DPM  - INTENT_MSG_SECURITY"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4992
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preset_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4994
    .local v0, presetImageSrc:Ljava/lang/String;
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 4995
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 4996
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 4997
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 4998
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_3

    .line 4999
    if-eqz v0, :cond_4

    .line 5000
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v0}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 5006
    :cond_3
    :goto_0
    const-string v1, "UpdateOwnImageStatus : Setup Hide me image, as per settings"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5019
    .end local v0           #presetImageSrc:Ljava/lang/String;
    :goto_1
    return-void

    .line 5003
    .restart local v0       #presetImageSrc:Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const-string v2, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_0

    .line 5008
    .end local v0           #presetImageSrc:Ljava/lang/String;
    :cond_5
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 5009
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 5010
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 5011
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 5012
    const-string v1, "UpdateOwnImageStatus : Setup Show me image, as per settings"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4360
    const-string v0, "updateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4367
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_0

    .line 4369
    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4393
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4395
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_2

    .line 4397
    const-string v0, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4398
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 4400
    const-string v0, "- updateScreen: otaUtils is not null, call otaShowProperScreen"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4401
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    .line 4513
    :cond_1
    :goto_0
    return-void

    .line 4404
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_4

    .line 4406
    const-string v1, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4408
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 4409
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_3

    .line 4411
    const-string v0, "- updateScreen: OTA_STATUS_ACTIVATION"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4412
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 4414
    const-string v0, "- updateScreen: otaUtils is not null, call otaShowActivationScreen"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4416
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto :goto_0

    .line 4420
    :cond_3
    const-string v0, "- updateScreen: OTA Call end state for Dialogs"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4421
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 4423
    const-string v0, "- updateScreen: Show OTA Success Failure dialog"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4424
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto :goto_0

    .line 4428
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_5

    .line 4430
    const-string v0, "- updateScreen: manage conference mode (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4433
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_6

    .line 4435
    const-string v0, "- updateScreen: call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4437
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallBackground()V

    goto :goto_0

    .line 4439
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_7

    .line 4443
    const-string v0, "- updateScreen: error call state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4448
    :cond_7
    const-string v1, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4456
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-eq v1, v3, :cond_9

    .line 4457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside update screen phone state is still ringing mVtCallType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4458
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 4459
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 4460
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_8

    .line 4461
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 4463
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 4464
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 4465
    const v0, 0x7f0d0177

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4466
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    .line 4472
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4473
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    goto/16 :goto_0

    .line 4468
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallBackground()V

    goto :goto_1

    .line 4479
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 4480
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 4481
    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 4482
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 4484
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_c

    .line 4486
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Connection;

    .line 4487
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_b

    .line 4489
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_2

    .line 4492
    :cond_c
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v2, :cond_1

    .line 4495
    const-string v0, "show the Wait dialog for CDMA"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4496
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 4498
    invoke-direct {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4500
    :cond_d
    if-ne v1, v3, :cond_f

    .line 4501
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4502
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_e

    .line 4504
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 4505
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_3

    .line 4509
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSelectedImageFromGallery()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v7, "InVTCallScreen"

    .line 1313
    sget-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1314
    const-string v0, "InVTCallScreen"

    const-string v0, "Response from MediaStore"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1320
    if-eqz v0, :cond_6

    .line 1321
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1322
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1323
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1324
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 1325
    const-string v1, "mime_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1326
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1327
    const-string v2, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype of image selected : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1335
    const-string v2, "image/pipeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1337
    :cond_0
    const-string v1, "InVTCallScreen"

    const-string v1, "Selected File is Jpeg."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 1339
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 1340
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 1341
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_1

    .line 1342
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 1343
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1345
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1362
    :cond_2
    :goto_0
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of bitmap after decoding - VTPM_IMAGE_REQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1367
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1375
    :cond_4
    :goto_1
    return-void

    .line 1349
    :cond_5
    const-string v1, "InVTCallScreen"

    const-string v1, "Selected File is not Jpeg."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const v1, 0x7f0d0305

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1355
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1356
    sput-object v3, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 1357
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    goto :goto_0

    .line 1370
    :cond_6
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 1371
    sput-object v3, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 1372
    const v0, 0x7f0d02f1

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    goto :goto_1
.end method

.method private updateStartRecordingUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 8221
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8222
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->stopRecordingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8223
    const-string v0, "InVTCallScreen"

    const-string v1, "In startRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8224
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_0

    .line 8225
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8229
    :goto_0
    return-void

    .line 8227
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStopRecordingUI()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 8232
    iput-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 8234
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8236
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8238
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8239
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->stopRecordingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8240
    return-void
.end method


# virtual methods
.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 6586
    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6587
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 6588
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 6598
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    .line 6599
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionRequestTime:J

    .line 6600
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 6604
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6605
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 6606
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 6608
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    .line 6609
    return-void
.end method

.method dismissMenu(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x6f

    .line 6384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissMenu(immediate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6386
    if-eqz p1, :cond_0

    .line 6387
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->closeOptionsMenu()V

    .line 6393
    :goto_0
    return-void

    .line 6389
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6390
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 3081
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3105
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3096
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 3097
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0

    .line 3081
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endInVTCallScreenSession()V
    .locals 1

    .prologue
    .line 2434
    const-string v0, "endInVTCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2435
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 2436
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 2437
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    .line 2439
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 2416
    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2418
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 2419
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    if-eqz v0, :cond_0

    .line 2420
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->moveTaskToBack(Z)Z

    .line 2424
    :goto_0
    return-void

    .line 2422
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getNetworkType()V
    .locals 2

    .prologue
    .line 3498
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 3499
    .local v0, radiotech:I
    packed-switch v0, :pswitch_data_0

    .line 3544
    const-string v1, "GetNetworkType :NETWORK_TYPE_UNKNOWN"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3548
    :goto_0
    return-void

    .line 3501
    :pswitch_0
    const-string v1, "GetNetworkType :NETWORK_TYPE_GPRS"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3505
    :pswitch_1
    const-string v1, "GetNetworkType :NETWORK_TYPE_EDGE"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3509
    :pswitch_2
    const-string v1, "GetNetworkType :NETWORK_TYPE_UMTS"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3513
    :pswitch_3
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSDPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3517
    :pswitch_4
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSUPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3521
    :pswitch_5
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3525
    :pswitch_6
    const-string v1, "GetNetworkType :RADIO_TECHNOLOGY_IS95A"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3528
    :pswitch_7
    const-string v1, "GetNetworkType :NETWORK_TYPE_CDMA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3532
    :pswitch_8
    const-string v1, "GetNetworkType :NETWORK_TYPE_1xRTT"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3536
    :pswitch_9
    const-string v1, "GetNetworkType :NETWORK_TYPE_EVDO_0"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3540
    :pswitch_a
    const-string v1, "GetNetworkType :NETWORK_TYPE_EVDO_A"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method handleOnscreenButtonClick(I)V
    .locals 3
    .parameter

    .prologue
    .line 5362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnscreenButtonClick(id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5364
    sparse-switch p1, :sswitch_data_0

    .line 5421
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5439
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    .line 5440
    return-void

    .line 5372
    :sswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    .line 5373
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->releaseKeyGuardLock()V

    .line 5374
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 5378
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 5390
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    .line 5392
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangup()V

    goto :goto_0

    .line 5395
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onShowHideDialpad()V

    goto :goto_0

    .line 5398
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 5401
    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMuteClick()V

    goto :goto_0

    .line 5404
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onSpeakerClick()V

    goto :goto_0

    .line 5407
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 5411
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 5412
    const-string v0, "Merged"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->startToast(Ljava/lang/String;)V

    goto :goto_0

    .line 5364
    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_1
        0x7f080018 -> :sswitch_2
        0x7f080077 -> :sswitch_0
        0x7f080079 -> :sswitch_8
        0x7f08007b -> :sswitch_4
        0x7f08007c -> :sswitch_3
        0x7f08007d -> :sswitch_3
        0x7f08007f -> :sswitch_7
        0x7f080080 -> :sswitch_6
        0x7f080081 -> :sswitch_5
        0x7f0800a3 -> :sswitch_0
        0x7f0800a4 -> :sswitch_9
    .end sparse-switch
.end method

.method internalAnswerCall()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5741
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v5

    .line 5743
    .local v2, hasRingingCall:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 5744
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 5745
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 5747
    const-string v4, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5750
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 5792
    .end local v3           #phoneType:I
    :cond_0
    :goto_1
    return-void

    .end local v2           #hasRingingCall:Z
    :cond_1
    move v2, v6

    .line 5741
    goto :goto_0

    .line 5753
    .restart local v2       #hasRingingCall:Z
    .restart local v3       #phoneType:I
    :cond_2
    if-ne v3, v5, :cond_7

    .line 5766
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v5

    .line 5767
    .local v0, hasActiveCall:Z
    :goto_2
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v5

    .line 5769
    .local v1, hasHoldingCall:Z
    :goto_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 5771
    const-string v4, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5775
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    .line 5786
    :goto_4
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->startFakeCallVoice(Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_3
    move v0, v6

    .line 5766
    goto :goto_2

    .restart local v0       #hasActiveCall:Z
    :cond_4
    move v1, v6

    .line 5767
    goto :goto_3

    .line 5776
    .restart local v1       #hasHoldingCall:Z
    :cond_5
    if-eqz v0, :cond_6

    .line 5777
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_4

    .line 5780
    :cond_6
    const-string v4, "internalAnswerCall: answering..."

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5781
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_4

    .line 5788
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_7
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method internalHangup()V
    .locals 1

    .prologue
    .line 5968
    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5969
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 5978
    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    .prologue
    .line 5957
    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5958
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 5961
    return-void
.end method

.method internalPhoneHangup()V
    .locals 1

    .prologue
    .line 5995
    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5996
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 5997
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 5998
    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "com.android.phone.ShowDialpad"

    .line 2557
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2558
    :cond_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2663
    :cond_1
    :goto_0
    return-object v0

    .line 2563
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2572
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2576
    const-string v2, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2578
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 2579
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v0, :cond_3

    .line 2581
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v5, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 2582
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 2584
    :cond_3
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 2585
    :cond_4
    const-string v2, "android.intent.action.ANSWER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2586
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    .line 2587
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2588
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 2589
    :cond_5
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2599
    :cond_6
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2604
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2605
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 2606
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 2607
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 2608
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 2610
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    .line 2612
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProviderAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2615
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->clearProvider()V

    .line 2620
    :cond_8
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    .line 2621
    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v2, :cond_1

    .line 2624
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto/16 :goto_0

    .line 2618
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->clearProvider()V

    goto :goto_1

    .line 2629
    :cond_a
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2637
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_c

    .line 2640
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 2641
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 2643
    :cond_c
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2644
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2655
    :cond_d
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 2656
    :cond_e
    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2657
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 2659
    :cond_f
    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 3

    .prologue
    .line 6489
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_0

    .line 6491
    const-string v1, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHandsfree)"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6492
    const/4 v1, 0x0

    .line 6497
    :goto_0
    return v1

    .line 6494
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 6496
    .local v0, isAudioOn:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v1, v0

    .line 6497
    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, " msec ago)"

    .line 6511
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6513
    const-string v0, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v5

    .line 6540
    :goto_0
    return v0

    .line 6521
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v0, :cond_2

    .line 6522
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long/2addr v0, v2

    .line 6524
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 6526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnectedOrPending: ==> TRUE (requested "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec ago)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v5

    .line 6528
    goto :goto_0

    .line 6531
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnectedOrPending: ==> FALSE (request too old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec ago)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6533
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    move v0, v4

    .line 6534
    goto :goto_0

    .line 6539
    :cond_2
    const-string v0, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v4

    .line 6540
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6442
    const-string v0, "isBluetoothAvailable()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6443
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v0, :cond_0

    .line 6446
    const-string v0, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v3

    .line 6481
    :goto_0
    return v0

    .line 6466
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 6469
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 6471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - headset address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6472
    if-eqz v0, :cond_1

    .line 6473
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 6475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6480
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 2442
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v6, "InVTCallScreen"

    .line 1389
    packed-switch p1, :pswitch_data_0

    .line 1499
    :goto_0
    :pswitch_0
    return-void

    .line 1457
    :pswitch_1
    const-string v0, "InVTCallScreen"

    const-string v0, "In VTPM_VIDEO_REQ condition"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1460
    const-string v0, "InVTCallScreen"

    const-string v0, "Response from MediaStore  VTPM_VIDEO_REQ"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1464
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1465
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of mGeturi  VTPM_VIDEO_REQ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->VideoProj:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1471
    if-eqz v0, :cond_2

    .line 1472
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1473
    const-string v1, "InVTCallScreen"

    const-string v1, "value of getcccount is not zero  VTPM_VIDEO_REQ"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->VideoProj:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1476
    const-string v2, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of colIndex  VTPM_VIDEO_REQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1479
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 1480
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of video filepath  VTPM_VIDEO_REQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 1485
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1490
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1495
    :cond_1
    :goto_2
    const-string v0, "InVTCallScreen"

    const-string v0, "out VTPM_VIDEO_REQ condition"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1487
    :cond_2
    const v0, 0x7f0d02f1

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    goto :goto_1

    .line 1493
    :cond_3
    const-string v0, "InVTCallScreen"

    const-string v0, "In result_ok NOT condition"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2874
    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2876
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2877
    const-string v0, "InVTCallScreen"

    const-string v1, "Dialer Pad Already open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2879
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2883
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2884
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2885
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 2886
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    .line 2887
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 2941
    :goto_1
    return-void

    .line 2881
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2890
    :cond_1
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 2897
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2901
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2904
    const-string v0, "BACK key while ringing: reject the call"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2905
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    .line 2910
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 2917
    :cond_2
    const-string v0, "BACK key while ringing: ignored"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2932
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_4

    .line 2934
    const-string v0, "BACK key: InVTCallScreenMode.MANAGE_CONFERENCE"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2935
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_1

    .line 2940
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "InVTCallScreen"

    .line 5025
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 5027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5031
    sparse-switch v0, :sswitch_data_0

    .line 5248
    :cond_0
    :goto_0
    return-void

    .line 5053
    :sswitch_0
    const-string v0, "InVTCallScreen"

    const-string v0, "on Stop Recording Clicked"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5054
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto :goto_0

    .line 5057
    :sswitch_1
    const-string v0, "InVTCallScreen"

    const-string v0, "on Cancel Recording Clicked"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    goto :goto_0

    .line 5061
    :sswitch_2
    const-string v0, "InVTCallScreen"

    const-string v0, "Hide Dialer Pad"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5062
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5063
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialer Pad Already open"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5064
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_1

    .line 5065
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 5069
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5070
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5071
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v5}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 5072
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    .line 5073
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v6}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    goto :goto_0

    .line 5067
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 5077
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5078
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClick:: Voice call Phone number to call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5080
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5086
    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5087
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClick:: Video call Phone number to call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5088
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.videocall"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5090
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5091
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5097
    :sswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5098
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5100
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5105
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5107
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5108
    const-string v1, "phone_type"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5110
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5111
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5138
    :sswitch_7
    const-string v0, "onClick: Endcall..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5141
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->removesurfaceview()V

    .line 5142
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 5143
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 5146
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 5147
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 5149
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    goto/16 :goto_0

    .line 5152
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 5157
    :sswitch_8
    const-string v0, "InVTCallScreen"

    const-string v0, "In speaker click condition"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5158
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onSpeakerClick()V

    goto/16 :goto_0

    .line 5162
    :sswitch_9
    const-string v0, "InVTCallScreen"

    const-string v0, "In mute click condition"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5163
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMuteClick()V

    goto/16 :goto_0

    .line 5167
    :sswitch_a
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_5

    .line 5168
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preset_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5170
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 5171
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 5172
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 5175
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 5176
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_3

    .line 5177
    if-eqz v0, :cond_4

    .line 5178
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v0}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 5183
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f0d02c5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 5181
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const-string v1, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_2

    .line 5186
    :cond_5
    const-string v0, "InVTCallScreen"

    const-string v0, "Show me Text is being clicked"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5188
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5189
    :cond_6
    const v0, 0x7f0d02fd

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 5195
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    .line 5196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f0d02c4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 5197
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 5198
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 5199
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    goto/16 :goto_0

    .line 5228
    :sswitch_b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 5229
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 5242
    :sswitch_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5243
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 5031
    :sswitch_data_0
    .sparse-switch
        0x7f08001a -> :sswitch_b
        0x7f08001c -> :sswitch_c
        0x7f08006a -> :sswitch_6
        0x7f08006b -> :sswitch_3
        0x7f08006c -> :sswitch_5
        0x7f08006d -> :sswitch_4
        0x7f0800fc -> :sswitch_2
        0x7f0800fe -> :sswitch_8
        0x7f0800ff -> :sswitch_9
        0x7f080100 -> :sswitch_7
        0x7f080102 -> :sswitch_0
        0x7f080103 -> :sswitch_1
        0x7f080111 -> :sswitch_a
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 9616
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9617
    const-string v0, "InVTCallScreen"

    const-string v1, "onConfigurationChanged event get called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9618
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9619
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->stopCamera()V

    .line 9620
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    .line 9621
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const-string v4, "InVTCallScreen"

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1640
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 1642
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1643
    const v0, 0x1030006

    invoke-super {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 1644
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1646
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getMiscPolicy()Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    .line 1648
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->createDefaultImages()V

    .line 1649
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1650
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1651
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V

    .line 1653
    const/high16 v1, 0x8

    .line 1654
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    .line 1660
    const/high16 v2, 0x40

    or-int/2addr v1, v2

    .line 1662
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1664
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->fillMenuArrayList()V

    .line 1665
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1667
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerBatteryListener()V

    .line 1668
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerDevicePolicyManagerReceiver()V

    .line 1669
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 1671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- mBluetoothHandsfree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1674
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1678
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1680
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initvtstack()V

    .line 1698
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerForPhoneStates()V

    .line 1704
    if-nez p1, :cond_3

    .line 1706
    const-string v1, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 1713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): mInVTCallInitialStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1715
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v1, v2, :cond_2

    .line 1716
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from internalResolveIntent()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 1770
    const-string v0, "onCreate(): exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1771
    return-void

    .line 1720
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_1

    .line 1721
    new-instance v1, Landroid/bluetooth/BluetoothHeadset;

    new-instance v2, Lcom/android/phone/InVTCallScreen$6;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InVTCallScreen$6;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/PhoneApp;)V

    invoke-direct {v1, p0, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Got BluetoothHeadset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1751
    :cond_3
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 1752
    const-string v0, "InVTCallScreen"

    const-string v0, "Else condition in icicle == null "

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 7801
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 7831
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0d02eb

    const/4 v5, 0x0

    const v4, 0x1080027

    const/4 v3, 0x1

    const-string v2, "InVTCallScreen"

    .line 8252
    const-string v0, "InVTCallScreen"

    const-string v0, "In onCreateDialog"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8253
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 8254
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 8256
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 8575
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 8258
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/InVTCallScreen$28;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$28;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 8272
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8278
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$29;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$29;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8291
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    .line 8293
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto :goto_0

    .line 8299
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 8300
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 8301
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v2, :cond_1

    .line 8302
    aget-object v2, v0, v5

    aput-object v2, v1, v5

    .line 8303
    const/4 v2, 0x2

    aget-object v0, v0, v2

    aput-object v0, v1, v3

    .line 8309
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/phone/InVTCallScreen$30;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$30;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 8323
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8329
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$31;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$31;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8342
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    .line 8344
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto :goto_0

    .line 8305
    :cond_1
    aget-object v2, v0, v5

    aput-object v2, v1, v5

    .line 8306
    aget-object v0, v0, v3

    aput-object v0, v1, v3

    goto :goto_1

    .line 8347
    :pswitch_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8353
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$33;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$33;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02ec

    new-instance v2, Lcom/android/phone/InVTCallScreen$32;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$32;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 8385
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d030d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0309

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$35;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$35;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01cc

    new-instance v2, Lcom/android/phone/InVTCallScreen$34;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$34;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 8443
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 8444
    if-nez v0, :cond_2

    .line 8445
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 8448
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 8449
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialog not created due to getAddress is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8450
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8452
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 8454
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 8456
    if-nez v0, :cond_4

    .line 8457
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialog not created due to number is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8458
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8460
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 8467
    :cond_4
    new-instance v1, Lcom/android/phone/InVTCallScreen$36;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$36;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 8475
    new-instance v2, Lcom/android/phone/InVTCallScreen$37;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InVTCallScreen$37;-><init>(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8489
    new-instance v0, Lcom/android/phone/InVTCallScreen$38;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$38;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 8499
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d02ec

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 8503
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 8519
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0304

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0303

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003d

    new-instance v2, Lcom/android/phone/InVTCallScreen$39;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$39;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 8532
    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0304

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003d

    new-instance v2, Lcom/android/phone/InVTCallScreen$40;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$40;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 8544
    :pswitch_8
    const-string v0, "InVTCallScreen"

    const-string v0, "In OUTGOING_NEAR_DIALOG_LIST condition"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8545
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/InVTCallScreen$41;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$41;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 8559
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8565
    new-instance v1, Lcom/android/phone/InVTCallScreen$42;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$42;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 8256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "InVTCallScreen"

    .line 8760
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 8761
    const-string v0, "InVTCallScreen"

    const-string v0, "In onCreateOptionsMenu method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8762
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of mMenuSelected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8767
    const/16 v0, 0x31

    const v1, 0x7f0d02c4

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    .line 8769
    const/16 v0, 0x32

    const v1, 0x7f0d02cd

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    .line 8771
    const/16 v0, 0x33

    const/4 v1, 0x3

    const v2, 0x7f0d019f

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    .line 8773
    const/16 v0, 0x34

    const/4 v1, 0x4

    const v2, 0x7f0d02cf

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    .line 8775
    const/16 v0, 0x46

    const/4 v1, 0x5

    const v2, 0x7f0d02d0

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    .line 8777
    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0d02d1

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchCAM:Landroid/view/MenuItem;

    .line 8787
    const/16 v0, 0x3b

    const/4 v1, 0x7

    const v2, 0x7f0d02e3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSettings:Landroid/view/MenuItem;

    .line 8789
    const/16 v0, 0x41

    const v1, 0x7f0d02e0

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCapture:Landroid/view/MenuItem;

    .line 8795
    return v4
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2331
    const-string v1, "onDestroy()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2332
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2334
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 2343
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2344
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 2347
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2349
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2350
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V

    .line 2365
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->unregisterForPhoneStates()V

    .line 2366
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2367
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2370
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2372
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2376
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_2

    .line 2377
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 2378
    iput-object v4, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2383
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 2386
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 2387
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 2390
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2394
    return-void
.end method

.method onDialerClose()V
    .locals 2

    .prologue
    .line 6198
    const-string v1, "onDialerClose()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6204
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6226
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6227
    return-void
.end method

.method onDialerOpen()V
    .locals 2

    .prologue
    .line 6162
    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6180
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6185
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 6187
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->hideOtaScreen()V

    .line 6189
    :cond_1
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0200ec

    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v8, "InVTCallScreen"

    .line 9824
    if-eqz p2, :cond_0

    .line 9825
    check-cast p2, Lcom/android/internal/telephony/Call;

    .line 9826
    const/4 v2, 0x0

    .line 9829
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 9830
    if-eqz v1, :cond_0

    .line 9831
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 9832
    instance-of v3, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_1

    .line 9833
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object p0, v0

    .line 9900
    :cond_0
    :goto_0
    return-void

    .line 9834
    :cond_1
    instance-of v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_2

    .line 9835
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 9836
    :cond_2
    if-eqz v2, :cond_0

    .line 9837
    throw v2

    if-eqz v1, :cond_5

    throw v2

    if-eqz v1, :cond_5

    .line 9838
    throw p0

    if-ne v1, v6, :cond_3

    .line 9839
    throw p0

    throw v2

    throw v1

    goto :goto_0

    .line 9859
    :cond_3
    throw p0

    if-ne v1, v5, :cond_4

    .line 9863
    throw p0

    throw v2

    throw v1

    goto :goto_0

    .line 9864
    :cond_4
    throw p0

    if-ne v1, v4, :cond_0

    .line 9865
    const-string v1, "InVTCallScreen"

    const-string v1, "Incoming Contact Image is Avialable in contacts "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9868
    throw p0

    throw v2

    throw v1

    goto :goto_0

    .line 9872
    :cond_5
    const-string v1, "InVTCallScreen"

    const-string v1, "Contact Image is Not Avialable in contacts "

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9878
    throw p0

    if-ne v1, v6, :cond_6

    .line 9879
    throw p0

    throw v1

    goto :goto_0

    .line 9887
    :cond_6
    throw p0

    if-ne v1, v5, :cond_7

    .line 9888
    throw p0

    throw v1

    goto :goto_0

    .line 9890
    :cond_7
    throw p0

    if-ne v1, v4, :cond_0

    .line 9891
    throw p0

    throw p0

    throw v1

    .line 9893
    throw p0

    throw v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v3, "InVTCallScreen"

    .line 3124
    sparse-switch p1, :sswitch_data_0

    .line 3265
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 3269
    :goto_0
    return v0

    .line 3126
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    move-result v0

    .line 3127
    if-nez v0, :cond_1

    .line 3128
    const-string v0, "InVTCallScreen"

    const-string v0, "InVTCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v2

    .line 3134
    goto :goto_0

    :sswitch_1
    move v0, v2

    .line 3146
    goto :goto_0

    .line 3150
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 3161
    const-string v0, "InVTCallScreen"

    const-string v0, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 3170
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3173
    const-string v1, "VOLUME key: silence ringer"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3174
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    :cond_2
    move v0, v2

    .line 3179
    goto :goto_0

    .line 3201
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3202
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3207
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3208
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    move v0, v2

    .line 3209
    goto :goto_0

    .line 3216
    :sswitch_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    move v0, v2

    .line 3217
    goto :goto_0

    .line 3216
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 3223
    :sswitch_5
    const-string v0, "----------- InVTCallScreen View dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3225
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3226
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3227
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    move v0, v2

    .line 3228
    goto :goto_0

    .line 3233
    :sswitch_6
    const-string v0, "----------- InVTCallScreen call state dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3234
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    move v0, v2

    .line 3235
    goto/16 :goto_0

    .line 3241
    :sswitch_7
    const-string v0, "------------ Temp testing -----------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v2

    .line 3242
    goto/16 :goto_0

    .line 3248
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3250
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    :cond_4
    move v0, v2

    .line 3252
    goto/16 :goto_0

    .line 3258
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3259
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/android/phone/InVTCallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v2

    .line 3260
    goto/16 :goto_0

    .line 3269
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 3124
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_8
        0x5 -> :sswitch_0
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x4c -> :sswitch_5
        0x52 -> :sswitch_3
        0x5b -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3118
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v4, "InVTCallScreen"

    .line 6945
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside onLongClick condition"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6946
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 6947
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of widgetId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6948
    packed-switch v0, :pswitch_data_0

    .line 6984
    :goto_0
    return v3

    .line 6960
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->removesurfaceview()V

    .line 6963
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 6964
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 6965
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    goto :goto_0

    .line 6967
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto :goto_0

    .line 6948
    :pswitch_data_0
    .packed-switch 0x7f080100
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "InVTCallScreen"

    .line 2514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2515
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2516
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v0, "onNewIntent: Already Video Call is running, so cann\'t process for new call."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    :cond_1
    :goto_0
    return-void

    .line 2533
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/phone/InVTCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 2543
    invoke-virtual {p0, p1}, Lcom/android/phone/InVTCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2545
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2546
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initvtstack()V

    .line 2548
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_1

    .line 2549
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from internalResolveIntent()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "InVTCallScreen"

    .line 8983
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9176
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 8985
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 8988
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 8991
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.callsetting.VIDEOCALL_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8993
    const-string v1, "senderIsVideoCall"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8994
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 9007
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preset_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9009
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9010
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 9011
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 9012
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_1

    .line 9013
    if-eqz v0, :cond_2

    .line 9014
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v0}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 9019
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 9020
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 9021
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 9022
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    goto :goto_0

    .line 9017
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const-string v1, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_1

    .line 9034
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9035
    :cond_3
    const v0, 0x7f0d02fd

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 9041
    :cond_4
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 9042
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 9043
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 9044
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    .line 9045
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    goto/16 :goto_0

    .line 9049
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_5

    .line 9050
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 9058
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 9052
    :cond_5
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    if-nez v0, :cond_6

    .line 9053
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_2

    .line 9055
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_2

    .line 9061
    :pswitch_7
    const-string v0, "InVTCallScreen"

    const-string v0, "launchin Zoom Activity"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9062
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 9063
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto/16 :goto_0

    .line 9067
    :pswitch_8
    const-string v0, "InVTCallScreen"

    const-string v0, "launchin Brightness Activity"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9068
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 9069
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto/16 :goto_0

    .line 9072
    :pswitch_9
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9073
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9074
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9075
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 9078
    :pswitch_a
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9079
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9080
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9081
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v2, v3}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 9084
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    .line 9085
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9086
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialer Pad Already open"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9087
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_7

    .line 9088
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 9092
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9093
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9094
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 9095
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 9096
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    goto/16 :goto_0

    .line 9090
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 9098
    :cond_8
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialer Pad Already Not open"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9099
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_9

    .line 9100
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 9104
    :goto_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 9105
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9106
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 9107
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->openDialer(Z)V

    .line 9108
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    goto/16 :goto_0

    .line 9102
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 9114
    :pswitch_c
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->switchCamera()V

    goto/16 :goto_0

    .line 9121
    :pswitch_d
    const-string v0, "InVTCallScreen"

    const-string v0, "START_RECORDING_FAR_END is being clicked"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9122
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9123
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9124
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 9127
    :pswitch_e
    const-string v0, "InVTCallScreen"

    const-string v0, "STOP_RECORDING_FAR_END is being clicked"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9128
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9130
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9131
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto/16 :goto_0

    .line 9135
    :pswitch_f
    const-string v0, "InVTCallScreen"

    const-string v0, "Cancel Recording is being clicked"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9137
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9138
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9139
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    goto/16 :goto_0

    .line 9142
    :pswitch_10
    const-string v0, "InVTCallScreen"

    const-string v0, "START_RECORDING_NEAR_END is being clicked"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9143
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9144
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9145
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    .line 9148
    :pswitch_11
    const-string v0, "InVTCallScreen"

    const-string v0, "STOP_RECORDING_NEAR_END is being clicked"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9149
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9151
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9152
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView()V

    goto/16 :goto_0

    .line 9155
    :pswitch_12
    const-string v0, "InVTCallScreen"

    const-string v0, "Cancel Recording is being clicked"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9157
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9158
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9159
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingNearEndView()V

    goto/16 :goto_0

    .line 8983
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_6
        :pswitch_b
        :pswitch_1
        :pswitch_c
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_a
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_12
        :pswitch_11
        :pswitch_2
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanelClosed(featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6406
    if-nez p1, :cond_0

    .line 6411
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 6412
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2144
    const-string v2, "onPause()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2145
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2147
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 2157
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2161
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 2194
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_0

    .line 2197
    const-string v2, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 2209
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/phone/InVTCallScreen;->dismissMenu(Z)V

    .line 2216
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 2217
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 2229
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/InVTCallScreen$7;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InVTCallScreen$7;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2238
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_1

    .line 2239
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 2240
    .local v1, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->showCallView()V

    .line 2246
    .end local v1           #statusBar:Landroid/app/StatusBarManager;
    :cond_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 2252
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableKeyGuardLock()V

    .line 2253
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_2

    .line 2254
    invoke-virtual {p0, v7}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    .line 2259
    :goto_0
    return-void

    .line 2256
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f0d02e2

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "InVTCallScreen"

    .line 8799
    const-string v0, "InVTCallScreen"

    const-string v0, "In onPrepareOptionsMenu "

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8801
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    if-eqz v0, :cond_a

    .line 8802
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    packed-switch v0, :pswitch_data_0

    .line 8954
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 8805
    :pswitch_0
    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 8807
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 8814
    const/16 v0, 0x33

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8815
    const/16 v0, 0x33

    const/4 v1, 0x3

    const v2, 0x7f0d019f

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    .line 8817
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    .line 8818
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8819
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 8825
    :cond_0
    :goto_1
    const/16 v0, 0x32

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8826
    const/16 v0, 0x32

    const v1, 0x7f0d02cd

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    .line 8828
    const/16 v0, 0x35

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8829
    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0d02d1

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchCAM:Landroid/view/MenuItem;

    .line 8831
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    if-eqz v0, :cond_4

    .line 8832
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 8836
    :goto_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_5

    .line 8837
    const-string v0, "InVTCallScreen"

    const-string v0, "Adding HIDE Me to Menu"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8838
    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8839
    const/16 v0, 0x31

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8840
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchCAM:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 8841
    const/16 v0, 0x31

    const v1, 0x7f0d02c4

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    .line 8842
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8844
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchCAM:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 8845
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 8855
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8856
    const/16 v0, 0x46

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8857
    const/16 v0, 0x34

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8858
    const/16 v0, 0x46

    const/4 v1, 0x5

    const v2, 0x7f0d02d0

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    .line 8881
    :goto_4
    const/16 v0, 0x3b

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8882
    const/16 v0, 0x3b

    const/4 v1, 0x7

    const v2, 0x7f0d02e3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSettings:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 8821
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 8834
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 8848
    :cond_5
    const-string v0, "InVTCallScreen"

    const-string v0, "Adding SHOW Me to Menu"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8849
    const/16 v0, 0x31

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8850
    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8851
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchCAM:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 8852
    const/16 v0, 0x3c

    const v1, 0x7f0d02c5

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mShowMe:Landroid/view/MenuItem;

    goto :goto_3

    .line 8861
    :cond_6
    const/16 v0, 0x46

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8862
    const/16 v0, 0x34

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8863
    const/16 v0, 0x34

    const/4 v1, 0x4

    const v2, 0x7f0d02cf

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    goto :goto_4

    .line 8888
    :pswitch_1
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 8890
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 8891
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In onPrepareOptionsMenu MENUREC_GROUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8894
    const/16 v0, 0x43

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8895
    const/16 v0, 0x45

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8896
    const/16 v0, 0x44

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8897
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8898
    const/16 v0, 0x40

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 8899
    const/16 v0, 0x3f

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8905
    :goto_5
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_8

    .line 8909
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    if-eqz v0, :cond_7

    .line 8910
    const/16 v0, 0x40

    const v1, 0x7f0d02df

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStop:Landroid/view/MenuItem;

    .line 8912
    const/16 v0, 0x3f

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 8900
    :catch_0
    move-exception v0

    .line 8901
    const-string v0, "InVTCallScreen"

    const-string v0, "In onPrepareOptionsMenu error in removing record options"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8916
    :cond_7
    const/16 v0, 0x3e

    const v1, 0x7f0d02dd

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecording:Landroid/view/MenuItem;

    .line 8918
    const/16 v0, 0x3f

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 8923
    :cond_8
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    if-eqz v0, :cond_9

    .line 8924
    const/16 v0, 0x45

    const v1, 0x7f0d02df

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStop:Landroid/view/MenuItem;

    .line 8926
    const/16 v0, 0x44

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 8930
    :cond_9
    const/16 v0, 0x43

    const v1, 0x7f0d02dd

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecording:Landroid/view/MenuItem;

    .line 8932
    const/16 v0, 0x44

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 8951
    :cond_a
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 8952
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto/16 :goto_0

    .line 8802
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x70

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1928
    const-string v0, "onResume()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1929
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1931
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 1932
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 1935
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1938
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    .line 1940
    sget-boolean v2, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v2, :cond_5

    .line 1941
    const-string v2, "onResume(): Dock Station is connected, UI set to Landscape "

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1942
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    .line 1948
    :goto_0
    if-eqz v1, :cond_6

    .line 1949
    const-string v1, "onResume(): Bluetooth is connected "

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1950
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->setVolumeControlStream(I)V

    .line 1961
    :goto_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableStatusBar()V

    .line 1971
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onResume: initial status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1986
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v1, v2, :cond_7

    .line 1988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onResume: failure during startup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1994
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->handleStartupError(Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;)V

    .line 2000
    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2013
    :goto_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v1, v2, :cond_0

    .line 2017
    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 2024
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2026
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->syncWithPhoneState()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v1

    .line 2027
    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v1, v2, :cond_1

    .line 2029
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- syncWithPhoneState failed! status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2055
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_8

    .line 2072
    const-string v0, "- posting ALLOW_SCREEN_ON message..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2073
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2074
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2104
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-class v1, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 2108
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2109
    :cond_2
    const-string v0, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2113
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preset_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2115
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 2116
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 2117
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 2118
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 2119
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_3

    .line 2120
    if-eqz v0, :cond_9

    .line 2121
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v1, v0}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 2130
    :cond_3
    :goto_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 2131
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_4

    .line 2132
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 2133
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->hideCallView()V

    .line 2137
    :cond_4
    return-void

    .line 1944
    :cond_5
    const-string v2, "onResume(): Dock Station is connected, UI set to Portrait"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1952
    :cond_6
    const-string v1, "onResume(): Bluetooth is Not connected "

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1953
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_1

    .line 2002
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    goto/16 :goto_2

    .line 2086
    :cond_8
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto :goto_3

    .line 2124
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const-string v1, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2263
    const-string v0, "onStop()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2264
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2266
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 2268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2270
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v1, :cond_0

    .line 2271
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v1}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 2274
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 2275
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2281
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_1

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_1

    .line 2313
    const-string v0, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->moveTaskToBack(Z)Z

    .line 2316
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 2317
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 2327
    :cond_1
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3277
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    .line 3279
    const-string v0, "onSuppServiceFailed: while not in foreground, so return without doing anything."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3329
    :cond_0
    :goto_0
    return-void

    .line 3282
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 3284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppServiceFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3286
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3290
    sget-object v1, Lcom/android/phone/InVTCallScreen$47;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3306
    const v0, 0x7f0d0190

    .line 3314
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 3316
    const-string v1, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3317
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3320
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3323
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3326
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3328
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 3294
    :pswitch_0
    const v0, 0x7f0d0195

    .line 3295
    goto :goto_1

    .line 3299
    :pswitch_1
    const v0, 0x7f0d0196

    .line 3300
    goto :goto_1

    .line 3290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 4
    .parameter "timeElapsed"

    .prologue
    const-wide/16 v2, 0x0

    .line 1815
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3c

    rem-long v0, p1, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1818
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->playMinuteMinder()V

    .line 1820
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->updateElapsedTimeWidget(J)V

    .line 1821
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 6670
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3075
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x72

    .line 6549
    const-string v0, "requestUpdateBluetoothIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6553
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6554
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6555
    return-void
.end method

.method requestUpdateDockUi()V
    .locals 2

    .prologue
    .line 6294
    const-string v0, "requestUpdateDockUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6297
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 6298
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 6300
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v0, :cond_1

    .line 6302
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    .line 6309
    :goto_0
    return-void

    .line 6305
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1861
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 1862
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 1863
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 1864
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x40

    .line 2446
    if-eqz p1, :cond_0

    .line 2447
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2451
    :goto_0
    return-void

    .line 2449
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
