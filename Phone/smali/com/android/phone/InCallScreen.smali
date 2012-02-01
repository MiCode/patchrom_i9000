.class public Lcom/android/phone/InCallScreen;
.super Landroid/app/Activity;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen$26;,
        Lcom/android/phone/InCallScreen$InCallInitStatus;,
        Lcom/android/phone/InCallScreen$InCallScreenMode;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mAnswerCallAfterThisDisconnect:I

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mEmailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mInCallControlState:Lcom/android/phone/InCallControlState;

.field private mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field private mInCallMenu:Lcom/android/phone/InCallMenu;

.field private mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mMainFrame:Landroid/view/ViewGroup;

.field private mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mNeedShowCallLostDialog:Z

.field private mOrientation:I

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field public mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mPreviousCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private mProviderAddress:Ljava/lang/String;

.field private mProviderGatewayUri:Landroid/net/Uri;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderLabel:Ljava/lang/CharSequence;

.field private mProviderOverlayVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredForPhoneStates:Z

.field private mSlidingDrawerTouchID:I

.field private mSlidingTabTouchID:I

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mTouchLockFadeIn:Landroid/view/animation/Animation;

.field private mTouchLockIcon:Landroid/view/View;

.field private mTouchLockLastTouchTime:J

.field private mTouchLockOverlay:Landroid/view/View;

.field private mUseTouchLockOverlay:Z

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWaitingCallDialog:Landroid/app/AlertDialog;

.field private mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;

.field public otaUtils:Lcom/android/phone/OtaUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 218
    iput v2, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 219
    iput v2, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    .line 250
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 305
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 345
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 346
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 350
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 359
    iput v2, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    .line 361
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 362
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 367
    new-instance v0, Lcom/android/phone/InCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$1;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    .line 587
    new-instance v0, Lcom/android/phone/InCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$2;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const-string v8, " "

    .line 4433
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen: Waiting Call Dialog 1"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4435
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4437
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

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

    .line 4444
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4445
    new-array v2, v7, [Ljava/lang/String;

    .line 4446
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4447
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    aput-object v0, v2, v3

    .line 4448
    new-instance v0, Lcom/android/phone/InCallScreen$23;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$23;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4460
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 4461
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 4462
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4463
    return-void

    .line 4442
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 13

    .prologue
    const v10, 0x7f0d02a6

    const/4 v9, 0x2

    const-string v8, ")"

    const-string v7, "("

    const-string v11, " "

    .line 4467
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen: Waiting Call Dialog 2"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4470
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4471
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4472
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4474
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 4475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4476
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    .line 4489
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4490
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 4491
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    .line 4492
    const/4 v3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 4493
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    .line 4494
    new-instance v2, Lcom/android/phone/InCallScreen$24;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/phone/InCallScreen$24;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4539
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4540
    const v0, 0x7f080114

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4541
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4542
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4543
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 4544
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->addFlags(I)V

    .line 4545
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4546
    return-void

    .line 4478
    :cond_1
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4480
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4481
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 4482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    .line 4484
    goto/16 :goto_0

    .line 4486
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4487
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissMmiStartedDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->touchLockTimerExpired()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/phone/InCallScreen;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/phone/InCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .locals 2

    .prologue
    .line 3361
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3362
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3365
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "addVoiceMailNumberPanel: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3366
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3368
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "show vm setting"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3371
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3372
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3373
    return-void
.end method

.method private bailOutAfterErrorDialog()V
    .locals 2

    .prologue
    .line 4281
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 4282
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4283
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 4286
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "bailOutAfterErrorDialog(): end InCallScreen session..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4287
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 4294
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 4296
    :cond_3
    return-void
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 3
    .parameter

    .prologue
    .line 3288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIfOkToInitiateOutgoingCall: ServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3290
    packed-switch p1, :pswitch_data_0

    .line 3315
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3293
    :pswitch_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3312
    :goto_0
    return-object v0

    .line 3297
    :pswitch_1
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 3308
    :pswitch_2
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 3312
    :pswitch_3
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 3290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkIsOtaCall(Landroid/content/Intent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5785
    const-string v0, "checkIsOtaCall..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5787
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    .line 5855
    :goto_0
    return v0

    .line 5791
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    .line 5792
    goto :goto_0

    .line 5795
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5797
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v1, :cond_5

    .line 5799
    :cond_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "checkIsOtaCall: OtaUtils.CdmaOtaScreenState not initialized"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_4
    move v0, v3

    .line 5800
    goto :goto_0

    .line 5803
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5805
    const-string v2, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5806
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "checkIsOtaCall action = ACTION_SHOW_ACTIVATION"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5807
    :cond_6
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v1, :cond_8

    .line 5808
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "checkIsOtaCall: ACTION_SHOW_ACTIVATION is not handled before"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5809
    :cond_7
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 5810
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    :cond_8
    move v6, v4

    .line 5849
    :goto_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsOtaCall: isOtaCall ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5850
    :cond_9
    if-eqz v6, :cond_b

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_b

    .line 5851
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "checkIsOtaCall: creating OtaUtils..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5852
    :cond_a
    new-instance v0, Lcom/android/phone/OtaUtils;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    :cond_b
    move v0, v6

    .line 5855
    goto/16 :goto_0

    .line 5814
    :cond_c
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5818
    :cond_d
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5823
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5824
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "checkIsOtaCall action ACTION_CALL, it is valid OTA number"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_e
    move v0, v4

    :goto_2
    move v6, v0

    .line 5827
    goto :goto_1

    .line 5819
    :catch_0
    move-exception v0

    .line 5820
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "Error retrieving number using the api getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_f
    move v0, v3

    .line 5821
    goto/16 :goto_0

    .line 5827
    :cond_10
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5828
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "checkIsOtaCall action ACTION_MAIN"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5829
    :cond_11
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    .line 5830
    if-eqz v1, :cond_13

    .line 5831
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsOtaCall isRingingCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_12
    move v0, v3

    .line 5832
    goto/16 :goto_0

    .line 5833
    :cond_13
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v1, v2, :cond_14

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v2, :cond_16

    .line 5837
    :cond_14
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call already in progress"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_15
    move v6, v4

    .line 5838
    goto/16 :goto_1

    .line 5840
    :cond_16
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_18

    .line 5842
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call in progress with UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_17
    move v6, v4

    .line 5844
    goto/16 :goto_1

    :cond_18
    move v6, v3

    goto/16 :goto_1

    :cond_19
    move v0, v3

    goto :goto_2
.end method

.method private clearProvider()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5982
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 5983
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 5984
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 5985
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 5986
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 5987
    return-void
.end method

.method private createWildPromptView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x4160

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x5

    .line 2752
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2753
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2754
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2756
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2760
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2761
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2762
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2763
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2765
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2767
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    .line 2768
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 2769
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2770
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 2771
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2772
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 2773
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const v2, 0x1080018

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2775
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2778
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2780
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2782
    return-object v0
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 2

    .prologue
    .line 3401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3413
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 3415
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3417
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3421
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_3

    .line 3422
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- delayedCleanupAfterDisconnect: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3439
    :cond_1
    const-string v0, "- Post-call behavior:"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mLastDisconnectCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - isPhoneStateRestricted() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3453
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3465
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3473
    :cond_3
    :goto_0
    return-void

    .line 3470
    :cond_4
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3471
    :cond_5
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto :goto_0
.end method

.method private dismissAllDialogs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4305
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4312
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 4313
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4314
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4315
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 4317
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 4318
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4319
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4320
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 4322
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 4323
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4324
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4325
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 4327
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 4328
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4329
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4330
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 4332
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 4333
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4334
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4335
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4337
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 4338
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4339
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4340
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 4342
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 4343
    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4344
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4345
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 4347
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_9

    .line 4350
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 4352
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    .line 4353
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4354
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4355
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 4357
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 4358
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4359
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4360
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 4362
    :cond_d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    .line 4363
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "- DISMISSING mWaitingCallDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4364
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4365
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 4367
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    .line 4368
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "- DISMISSING mWebExEmailSelectionDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4369
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4370
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    .line 4372
    :cond_11
    return-void
.end method

.method private dismissMmiStartedDialog()V
    .locals 1

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2563
    const-string v0, "dismissMmiStartedDialog().."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2564
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 2567
    :cond_0
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 1

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3377
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3380
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "dontAddVoiceMailNumber: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3381
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3382
    return-void
.end method

.method private dumpBluetoothState()V
    .locals 3

    .prologue
    .line 5398
    const-string v0, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAudioConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5402
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

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5404
    const-string v0, "="

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5405
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_2

    .line 5406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5407
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 5408
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 5409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.getCurrentHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5410
    if-eqz v0, :cond_0

    .line 5411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5420
    :cond_0
    :goto_0
    return-void

    .line 5415
    :cond_1
    const-string v0, "= mBluetoothHeadset is null"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5418
    :cond_2
    const-string v0, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableTouchLock(Z)V
    .locals 2
    .parameter

    .prologue
    .line 5522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTouchLock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5523
    if-eqz p1, :cond_5

    .line 5526
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v0, :cond_1

    .line 5527
    const-string v0, "InCallScreen"

    const-string v1, "enableTouchLock: touch lock isn\'t used on this device!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5568
    :cond_0
    :goto_0
    return-void

    .line 5533
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5534
    const-string v0, "enableTouchLock: dialpad isn\'t up, no need to lock screen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5539
    :cond_2
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5540
    const-string v0, "enableTouchLock: speaker is on, no need to lock screen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5545
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-nez v0, :cond_4

    .line 5546
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initTouchLock()V

    .line 5552
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 5555
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5556
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mTouchLockFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 5566
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private endInCallScreenSession(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1321
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1322
    :cond_0
    if-eqz p1, :cond_1

    .line 1323
    const-string v0, "InCallScreen"

    const-string v1, "endInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1329
    :goto_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1330
    return-void

    .line 1327
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method private getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    .line 3026
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3028
    if-nez v0, :cond_0

    .line 3029
    const/4 v0, 0x0

    .line 3037
    :goto_0
    return-object v0

    .line 3032
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3034
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3037
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleCallKey()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1662
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 1663
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 1664
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 1666
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1667
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1671
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 1672
    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 1674
    if-eqz v0, :cond_2

    .line 1676
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1677
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1737
    :cond_1
    :goto_0
    return v5

    .line 1679
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_4

    if-eqz v1, :cond_4

    .line 1682
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1684
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 1685
    :cond_4
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_1

    .line 1688
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1689
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 1691
    :cond_6
    if-eq v3, v5, :cond_7

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    .line 1693
    :cond_7
    if-eqz v0, :cond_8

    .line 1704
    const-string v0, "InCallScreen"

    const-string v1, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 1711
    :cond_8
    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 1713
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1714
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 1715
    :cond_a
    if-eqz v2, :cond_c

    .line 1718
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1719
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1728
    :cond_c
    const-string v0, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1732
    :cond_d
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
    .line 1571
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

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1577
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 5

    .prologue
    .line 3320
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3322
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 3323
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3325
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3326
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3328
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0048

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0049

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d003d

    new-instance v4, Lcom/android/phone/InCallScreen$12;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/InCallScreen$12;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d004a

    new-instance v4, Lcom/android/phone/InCallScreen$11;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/InCallScreen$11;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallScreen$10;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InCallScreen$10;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3354
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3357
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3358
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 2579
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2581
    if-eqz v0, :cond_0

    .line 2582
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 2585
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

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2588
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2589
    sget-object v3, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 2644
    :cond_0
    :goto_0
    return-void

    .line 2591
    :pswitch_0
    if-ne v2, v4, :cond_0

    .line 2592
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 2593
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    if-eqz v1, :cond_1

    .line 2594
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 2596
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 2597
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneCdma(C)V

    goto :goto_0

    .line 2607
    :pswitch_1
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2608
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 2609
    if-ne v2, v4, :cond_3

    .line 2610
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 2611
    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 2612
    :cond_3
    if-ne v2, v5, :cond_4

    .line 2613
    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 2614
    :cond_4
    const/4 v0, 0x3

    if-ne v2, v0, :cond_5

    .line 2615
    const-string v0, "InCallScreen"

    const-string v1, "SipPhone doesn\'t support post dial yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2617
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2622
    :pswitch_2
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "handlePostOnDialChars: show WILD prompt"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2623
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 2627
    :pswitch_3
    if-ne v2, v4, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    goto :goto_0

    .line 2633
    :pswitch_4
    if-ne v2, v4, :cond_0

    .line 2634
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 2635
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 2636
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    goto :goto_0

    .line 2589
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V
    .locals 5
    .parameter

    .prologue
    const v3, 0x7f0d018d

    const/4 v2, 0x1

    const-string v4, "InCallScreen"

    .line 4001
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4003
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4007
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "handleStartupError(): update blank screen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4008
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 4009
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4010
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    .line 4013
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 4027
    :cond_3
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4097
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError: unexpected status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    invoke-direct {p0, v3, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 4101
    :cond_4
    :goto_0
    return-void

    .line 4033
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_0

    .line 4044
    :pswitch_1
    const v0, 0x7f0d0189

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4051
    :pswitch_2
    const v0, 0x7f0d018a

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4056
    :pswitch_3
    const v0, 0x7f0d018b

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4062
    :pswitch_4
    const-string v0, "InCallScreen"

    const-string v0, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4070
    :pswitch_5
    const v0, 0x7f0d018c

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4082
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_4

    .line 4083
    const v0, 0x7f0d018e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4093
    :pswitch_7
    invoke-direct {p0, v3, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private initInCallScreen()V
    .locals 2

    .prologue
    .line 1530
    const-string v0, "initInCallScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1533
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    .line 1536
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1541
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 1543
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    .line 1544
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    .line 1547
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCard;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCallCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1549
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1552
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallTouchUi()V

    .line 1555
    new-instance v0, Lcom/android/phone/InCallControlState;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    .line 1559
    return-void
.end method

.method private initInCallTouchUi()V
    .locals 1

    .prologue
    .line 5079
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "initInCallTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5084
    :cond_0
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallTouchUi;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    .line 5085
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0, p0}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 5086
    return-void
.end method

.method private initOtaState()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5872
    const/4 v2, 0x0

    .line 5874
    .local v2, inOtaCall:Z
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5875
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5877
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v3, :cond_2

    .line 5878
    :cond_0
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "initOtaState func - All CdmaOTA utility classes not initialized"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    move v3, v4

    .line 5907
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :goto_0
    return v3

    .line 5882
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    move-result v2

    .line 5883
    if-eqz v2, :cond_b

    .line 5884
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v1

    .line 5886
    .local v1, cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v3, :cond_5

    .line 5887
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "initOtaState - in OTA Normal mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5888
    :cond_3
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_4
    :goto_1
    move v3, v2

    .line 5907
    goto :goto_0

    .line 5889
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_5
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v3, :cond_7

    .line 5891
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "initOtaState - in OTA END mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5892
    :cond_6
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 5893
    :cond_7
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v3, v4, :cond_9

    .line 5895
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "initOtaState - set OTA END Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5896
    :cond_8
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 5898
    :cond_9
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "initOtaState - Set OTA NORMAL Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5899
    :cond_a
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 5902
    .end local v1           #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_b
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_4

    .line 5903
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v4}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_1
.end method

.method private initTouchLock()V
    .locals 2

    .prologue
    const-string v1, "InCallScreen"

    .line 5474
    const-string v0, "initTouchLock()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5475
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5476
    const-string v0, "InCallScreen"

    const-string v0, "initTouchLock: already initialized!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5496
    :goto_0
    return-void

    .line 5480
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v0, :cond_1

    .line 5481
    const-string v0, "InCallScreen"

    const-string v0, "initTouchLock: touch lock isn\'t used on this device!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5485
    :cond_1
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    .line 5487
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    .line 5492
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5493
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5495
    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockFadeIn:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private internalSwapCalls()V
    .locals 3

    .prologue
    .line 4638
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "internalSwapCalls()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4643
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4650
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 4655
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 4660
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4661
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 4662
    .local v0, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_1

    .line 4663
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    .line 4667
    .end local v0           #bthf:Lcom/android/phone/BluetoothHandsfree;
    :cond_1
    return-void
.end method

.method private isTouchLocked()Z
    .locals 1

    .prologue
    .line 5499
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 6096
    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6097
    return-void
.end method

.method private okToDialDTMFTones()Z
    .locals 5

    .prologue
    .line 5037
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 5038
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 5049
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    .line 5054
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[okToDialDTMFTones] foreground state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ringing state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", call screen mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5059
    return v2

    .line 5049
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onBluetoothClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3709
    const-string v0, "onBluetoothClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3711
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3713
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3714
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 3738
    :goto_0
    return-void

    .line 3722
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3723
    const/4 v0, 0x0

    invoke-static {p0, v0, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3726
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 3731
    :cond_2
    const-string v0, "InCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3733
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3734
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3735
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3736
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "InCallScreen"

    .line 2209
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2210
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 2211
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2214
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2216
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2217
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onDisconnect : Video call is activing. should not be updated"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2498
    :cond_1
    :goto_0
    return-void

    .line 2221
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v10

    .line 2223
    :goto_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    move v4, v10

    .line 2224
    :goto_2
    if-eqz v4, :cond_23

    .line 2227
    if-eqz v3, :cond_23

    .line 2228
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_auto_retry"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2234
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    .line 2235
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v7, v8, :cond_5

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v7, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v7, :cond_5

    .line 2238
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2239
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto :goto_0

    :cond_3
    move v3, v9

    .line 2221
    goto :goto_1

    :cond_4
    move v4, v9

    .line 2223
    goto :goto_2

    .line 2241
    :cond_5
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v7, v8, :cond_6

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v7, :cond_7

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v7, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v7, :cond_7

    .line 2243
    :cond_6
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onDisconnect: OTA Call end already handled"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2250
    :cond_7
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 2255
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v7, :cond_8

    .line 2256
    const v0, 0x7f0d001a

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2258
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v7, :cond_9

    .line 2259
    const v0, 0x7f0d0019

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2261
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v7, :cond_a

    .line 2262
    const v0, 0x7f0d001b

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2264
    :cond_a
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v7, :cond_b

    .line 2265
    const v0, 0x7f0d001c

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2267
    :cond_b
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v7, :cond_c

    .line 2268
    const v0, 0x7f0d001d

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2277
    :cond_c
    if-eqz v4, :cond_d

    .line 2278
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 2279
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v7, :cond_13

    .line 2284
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2318
    :cond_d
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2319
    if-eqz v0, :cond_10

    .line 2328
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 2329
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v10, :cond_f

    .line 2330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2331
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_e

    .line 2340
    const-string v0, "- Still-active conf call; clearing DISCONNECTED..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2341
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2348
    :cond_f
    iget v0, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    if-lez v0, :cond_10

    .line 2349
    iget v0, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    sub-int/2addr v0, v10

    iput v0, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    .line 2351
    iget v0, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    if-nez v0, :cond_10

    .line 2352
    iput v13, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    .line 2353
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2360
    :cond_10
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "emergency_call_retry_count"

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2376
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 2382
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_11

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_11

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v4, :cond_17

    if-lez v0, :cond_17

    :cond_11
    if-eqz v3, :cond_17

    move v4, v10

    .line 2389
    :goto_5
    if-eqz v4, :cond_18

    .line 2390
    const-string v3, "- onDisconnect: bailOutImmediately..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2394
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v3, :cond_12

    if-lez v0, :cond_12

    .line 2396
    const-string v1, "InCallScreen"

    const-string v1, "onDisconnect: OUT_OF_SERVICE; need to retry emergency call!"

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    const-string v1, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- emergencyCallRetryCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    const-class v0, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2401
    const-string v1, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- launching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2409
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    .line 2497
    :goto_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2285
    :cond_13
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v7, :cond_14

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_d

    :cond_14
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_d

    .line 2291
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v4, :cond_15

    .line 2293
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2294
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 2296
    :cond_15
    if-nez v5, :cond_16

    .line 2298
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2299
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 2303
    :cond_16
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    :cond_17
    move v4, v9

    .line 2382
    goto/16 :goto_5

    .line 2411
    :cond_18
    const-string v0, "- onDisconnect: delayed bailout..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2419
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2423
    if-eqz v3, :cond_1a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2425
    :cond_19
    const-string v0, "- onDisconnect: switching to \'Call ended\' state..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2426
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2431
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 2432
    if-nez v0, :cond_1e

    .line 2433
    const-string v0, "- onDisconnect: cleaning up after FG call disconnect..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2437
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1b

    .line 2438
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2439
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2440
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2442
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    .line 2443
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2444
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2445
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2447
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1e

    .line 2448
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2449
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2450
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2453
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1f

    .line 2454
    const-string v0, "- DISMISSING mWaitingCallDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2455
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2456
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 2469
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    .line 2470
    if-nez v3, :cond_21

    .line 2474
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2478
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_20

    const-string v0, "onDisconnect: Call Collision case - staying on InCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2479
    :cond_20
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto/16 :goto_0

    .line 2488
    :cond_21
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v0, :cond_22

    const/16 v0, 0x1194

    .line 2491
    :goto_7
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2492
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 2488
    :cond_22
    const/16 v0, 0x1194

    goto :goto_7

    :cond_23
    move v5, v9

    goto/16 :goto_3
.end method

.method private onHoldClick()V
    .locals 4

    .prologue
    .line 3640
    const-string v0, "onHoldClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3642
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 3643
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 3644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- hasActiveCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasHoldingCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3648
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 3650
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 3670
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 3671
    return-void

    .line 3653
    :cond_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 3655
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method private onMMICancel()V
    .locals 2

    .prologue
    .line 2537
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2540
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 2551
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onMMICancel: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2552
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissMmiStartedDialog()V

    .line 2554
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2555
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onMMICancel, but Call exist..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2559
    :cond_1
    :goto_0
    return-void

    .line 2558
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter

    .prologue
    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMMIInitiate()...  AsyncResult r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2511
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_0

    .line 2512
    const-string v0, "Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2528
    :goto_0
    return-void

    .line 2520
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 2522
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 2523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - MmiCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2525
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2526
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v0, v1, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onMuteClick()V
    .locals 2

    .prologue
    .line 3703
    const-string v1, "onMuteClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3704
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 3705
    .local v0, newMuteState:Z
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3706
    return-void

    .line 3704
    .end local v0           #newMuteState:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPhoneStateChanged()... InCallScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2133
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2134
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPhoneStateChanged : Video call is activing. should not be updated"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2190
    :cond_0
    :goto_0
    return-void

    .line 2140
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_8

    .line 2142
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "onPhoneStateChanged: Activity not in foreground! But update screen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2146
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 2147
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    .line 2148
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 2165
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2169
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    iget-boolean v1, v1, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->isRecordingCall(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2172
    :cond_3
    const-string v1, "onPhoneStateChanged : force stop recording"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2173
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 2176
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 2178
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviousCallState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2179
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 2180
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 2183
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_7

    .line 2184
    iput v3, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 2185
    iput v3, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    .line 2188
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 2189
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

    goto/16 :goto_0

    .line 2150
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_9

    .line 2151
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 2152
    :goto_2
    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2155
    :cond_9
    iget v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 2156
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setOrientation(I)V

    .line 2158
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2162
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_1

    :cond_b
    move v0, v4

    .line 2151
    goto :goto_2
.end method

.method private onShowHideDialpad()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3741
    const-string v0, "onShowHideDialpad()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3742
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3743
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 3747
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 3748
    return-void

    .line 3745
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto :goto_0
.end method

.method private onSpeakerClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3674
    const-string v1, "onSpeakerClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3680
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    .line 3681
    .local v0, newSpeakerState:Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3682
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 3684
    :cond_0
    invoke-static {p0, v0, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3686
    if-eqz v0, :cond_3

    .line 3688
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 3697
    :cond_1
    :goto_1
    return-void

    .end local v0           #newSpeakerState:Z
    :cond_2
    move v0, v2

    .line 3680
    goto :goto_0

    .line 3693
    .restart local v0       #newSpeakerState:Z
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3694
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    goto :goto_1
.end method

.method private onWebExClick()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 3751
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 3753
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_2

    .line 3754
    invoke-static {p0, v7}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 3755
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v6, :cond_5

    .line 3756
    iget-boolean v0, v6, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-ne v0, v10, :cond_5

    .line 3757
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 3758
    .local v1, EMAIL_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v6, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3760
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 3761
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3762
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3764
    :cond_0
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3765
    .local v9, email:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 3766
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3768
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3769
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3771
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_3

    .line 3772
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showEmailSelectDialog()V

    .line 3784
    .end local v1           #EMAIL_URI:Landroid/net/Uri;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #email:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 3774
    .restart local v1       #EMAIL_URI:Landroid/net/Uri;
    .restart local v6       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #email:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 3778
    .end local v9           #email:Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3782
    .end local v1           #EMAIL_URI:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

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

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const-string v9, "\'."

    const-string v7, "InCallScreen"

    .line 3049
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall()...  intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3060
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    .line 3064
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 3072
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 3073
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 3074
    :goto_0
    const-string v3, "android.phone.extra.SIP_PHONE_URI"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3076
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4, v2, v1, v3}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 3077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- got Phone instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", class = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3080
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3095
    if-nez v1, :cond_5

    .line 3096
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3271
    :cond_1
    :goto_1
    return-object v0

    .line 3073
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 3082
    :catch_0
    move-exception v1

    .line 3087
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v1, :cond_3

    .line 3088
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Voicemail number not reachable in current SIM card state."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3091
    :cond_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3092
    :cond_4
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_1

    .line 3100
    :cond_5
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 3101
    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3116
    if-eqz v3, :cond_6

    if-nez v4, :cond_6

    .line 3117
    const-string v0, "InCallScreen"

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

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_1

    .line 3121
    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    .line 3122
    const-string v0, "InCallScreen"

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

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3136
    :cond_7
    if-eqz v3, :cond_a

    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v5, :cond_8

    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v0, v5, :cond_a

    .line 3139
    :cond_8
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: Emergency number detected with status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3140
    :cond_9
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3141
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> UPDATING status to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3144
    :cond_a
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v5, :cond_c

    .line 3150
    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v0, v1, :cond_1

    .line 3151
    const-string v0, "InCallScreen"

    const-string v0, "placeCall: Trying to make emergency call while POWER_OFF!"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    const-string v0, "InCallScreen"

    const-string v0, "- starting EmergencyCallHandler, finishing InCallScreen..."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    const-class v0, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3154
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "placeCall: starting EmergencyCallHandler, finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3155
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3156
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3162
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3164
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v10, :cond_e

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3165
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_d

    const-string v5, "placeCall: isOtaSpNumber() returns true"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3166
    :cond_d
    sget-object v5, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 3167
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v5, :cond_e

    .line 3168
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v8, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 3172
    :cond_e
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    .line 3179
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 3181
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v6, :cond_f

    if-nez v3, :cond_f

    if-nez v4, :cond_f

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3185
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {p0, v2, v1, v5, v4}, Lcom/android/phone/PhoneUtils;->placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v4

    .line 3191
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 3269
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: unknown callStatus "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3188
    :cond_f
    invoke-static {v2, v1, v5}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v4

    goto :goto_2

    .line 3193
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3196
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v4, :cond_10

    .line 3197
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v4, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 3199
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3206
    :cond_10
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v8}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 3218
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 3225
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-nez v3, :cond_11

    .line 3226
    const-string v1, "InCallScreen"

    const-string v1, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showExitingECMDialog()V

    .line 3230
    :cond_11
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v10, :cond_12

    .line 3232
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_12

    .line 3235
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3238
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x74

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3239
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3242
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 3245
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3249
    :cond_12
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3251
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3261
    :cond_13
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3263
    :pswitch_2
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerForPhoneStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1345
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1347
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1348
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1354
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1355
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1356
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1357
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1358
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1361
    :cond_0
    return-void
.end method

.method private resetTouchLockTimer()V
    .locals 5

    .prologue
    const/16 v4, 0x71

    .line 5582
    const-string v1, "resetTouchLockTimer()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5586
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v1, :cond_1

    .line 5604
    :cond_0
    :goto_0
    return-void

    .line 5588
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5589
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5598
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "short_keylight_delay_ms"

    const/16 v3, 0x1770

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5602
    .local v0, touchLockDelay:I
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 4677
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInCallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4678
    :cond_0
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 4679
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4816
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4817
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "setInCallScreenMode : Video call is activing. should not be updated"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4830
    :cond_2
    :goto_1
    return-void

    .line 4740
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4741
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    if-eqz v0, :cond_1

    .line 4742
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    invoke-virtual {v0, v2}, Lcom/android/phone/ManageConferenceUi;->setVisibility(I)V

    goto :goto_0

    .line 4747
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4748
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    if-eqz v0, :cond_1

    .line 4749
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    invoke-virtual {v0, v2}, Lcom/android/phone/ManageConferenceUi;->setVisibility(I)V

    goto :goto_0

    .line 4755
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4756
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    if-nez v0, :cond_3

    .line 4757
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ManageConferenceUi;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    .line 4758
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    invoke-virtual {v0, p0}, Lcom/android/phone/ManageConferenceUi;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 4760
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/ManageConferenceUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 4761
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    invoke-virtual {v0, v3}, Lcom/android/phone/ManageConferenceUi;->setVisibility(I)V

    goto :goto_0

    .line 4765
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 4767
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 4771
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 4773
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 4799
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 4803
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_5

    .line 4804
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_4

    .line 4805
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 4811
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 4808
    :cond_5
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 4821
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    .line 4825
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 4829
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    goto/16 :goto_1

    .line 4679
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

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 4207
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4210
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 4211
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4226
    :cond_1
    :goto_0
    return-void

    .line 4216
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 4217
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4221
    :cond_3
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

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 4225
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showEmailSelectDialog()V
    .locals 4

    .prologue
    .line 3787
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3788
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3789
    const v2, 0x7f0d025e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$13;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$13;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3795
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    .line 3796
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3797
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3798
    return-void
.end method

.method private showExitingECMDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4261
    const-string v0, "InCallScreen"

    const-string v1, "showExitingECMDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 4264
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4265
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4266
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 4270
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 4275
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4277
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4278
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0d003d

    const/4 v6, 0x2

    .line 4108
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4109
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

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

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4111
    :cond_0
    const v1, 0x7f0d0189

    if-ne p1, v1, :cond_1

    .line 4117
    new-instance v1, Lcom/android/phone/InCallScreen$14;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$14;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4127
    new-instance v2, Lcom/android/phone/InCallScreen$15;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$15;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4133
    new-instance v3, Lcom/android/phone/InCallScreen$16;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$16;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4139
    new-instance v4, Lcom/android/phone/InCallScreen$17;

    invoke-direct {v4, p0}, Lcom/android/phone/InCallScreen$17;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4145
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d002f

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 4151
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 4152
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4153
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d028d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 4154
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4204
    :goto_0
    return-void

    .line 4162
    :cond_1
    if-eqz p2, :cond_2

    .line 4163
    new-instance v1, Lcom/android/phone/InCallScreen$18;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$18;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4167
    new-instance v2, Lcom/android/phone/InCallScreen$19;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$19;-><init>(Lcom/android/phone/InCallScreen;)V

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 4181
    :goto_1
    new-instance v3, Lcom/android/phone/InCallScreen$22;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$22;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4192
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 4197
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4200
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 4203
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 4172
    :cond_2
    new-instance v1, Lcom/android/phone/InCallScreen$20;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$20;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4176
    new-instance v2, Lcom/android/phone/InCallScreen$21;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$21;-><init>(Lcom/android/phone/InCallScreen;)V

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1
.end method

.method private showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2731
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2733
    const v2, 0x7f0d0043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2734
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2736
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2737
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2738
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2742
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2745
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2747
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2748
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2749
    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2691
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitPromptDialogCDMA: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2693
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2695
    const v2, 0x7f0d0042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2696
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 2700
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2701
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2705
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0045

    new-instance v2, Lcom/android/phone/InCallScreen$7;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$7;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/android/phone/InCallScreen$6;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$6;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2721
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2723
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2724
    return-void
.end method

.method private showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2647
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitPromptDialogGSM: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2649
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2651
    const v2, 0x7f0d0042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2652
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2655
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 2656
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2657
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2661
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0044

    new-instance v2, Lcom/android/phone/InCallScreen$5;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$5;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InCallScreen$4;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InCallScreen$4;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2678
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2680
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2681
    return-void
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter

    .prologue
    .line 2786
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 2788
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2789
    const-string v1, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2790
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2791
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2794
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0044

    new-instance v2, Lcom/android/phone/InCallScreen$9;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$9;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InCallScreen$8;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InCallScreen$8;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2819
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2821
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2823
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2824
    return-void
.end method

.method private startWebExActivity(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startWebExActivity()... email : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3802
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3803
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3804
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3805
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3807
    if-eqz p1, :cond_0

    .line 3808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wbx://instant?attendees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&nativecall=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3812
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3813
    return-void

    .line 3810
    :cond_0
    const-string v1, "wbx://instant?attendees=&nativecall=true"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->stopTimer()V

    .line 1527
    :cond_0
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2974
    const/4 v2, 0x0

    .line 2975
    .local v2, updateSuccessful:Z
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "syncWithPhoneState()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2976
    :cond_0
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 2977
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dumpBluetoothState()V

    .line 2982
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2984
    .local v1, phoneType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v3, v4, :cond_3

    .line 2989
    :cond_2
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3005
    :goto_0
    return-object v3

    .line 2994
    :cond_3
    if-ne v1, v5, :cond_5

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v5

    .line 2997
    .local v0, hasPendingMmiCodes:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_6

    .line 2999
    :cond_4
    const-string v3, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3000
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3001
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 2994
    .end local v0           #hasPendingMmiCodes:Z
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 3004
    .restart local v0       #hasPendingMmiCodes:Z
    :cond_6
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_7

    const-string v3, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3005
    :cond_7
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0
.end method

.method private touchLockTimerExpired()V
    .locals 1

    .prologue
    .line 5614
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 5615
    return-void
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1365
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1366
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1367
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1368
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1369
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1370
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 1371
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1373
    return-void
.end method

.method private updateDialpadVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4905
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 4906
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4916
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 4925
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 4937
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->usingSlidingDrawer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4938
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_1

    .line 4944
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4945
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4955
    :cond_2
    :goto_0
    return-void

    .line 4949
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_2

    .line 4951
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateInCallBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5941
    .line 5942
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 5943
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 5970
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 5971
    return-void

    .line 5951
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 5952
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 5953
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 5954
    :cond_1
    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    if-ne v1, v4, :cond_2

    move v1, v4

    .line 5955
    :goto_1
    sget-object v2, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move v0, v3

    .line 5966
    goto :goto_0

    :cond_2
    move v1, v3

    .line 5954
    goto :goto_1

    .line 5958
    :pswitch_0
    if-eqz v1, :cond_3

    const v0, 0x7f0200b9

    goto :goto_0

    :cond_3
    const v0, 0x7f0200ba

    goto :goto_0

    .line 5962
    :pswitch_1
    if-eqz v1, :cond_4

    const v0, 0x7f0200bb

    goto :goto_0

    :cond_4
    const v0, 0x7f0200bc

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0

    .line 5955
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateInCallTouchUi()V
    .locals 2

    .prologue
    .line 5092
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 5093
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 5095
    :cond_0
    return-void
.end method

.method private updateProviderOverlay()V
    .locals 8

    .prologue
    const/16 v7, 0x79

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProviderOverlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3917
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3919
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    if-eqz v1, :cond_0

    .line 3920
    const v1, 0x7f0d01e0

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3921
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3924
    const v1, 0x7f08008d

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3925
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3926
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3928
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3932
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3933
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3934
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3938
    :goto_0
    return-void

    .line 3936
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2831
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2838
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 2839
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2960
    :cond_1
    :goto_0
    return-void

    .line 2842
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2843
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "updateScreen : Video call is activing. should not be updated"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2848
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v0, :cond_6

    .line 2850
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "- updateScreen: updating menu items..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2852
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    .line 2853
    if-nez v0, :cond_6

    .line 2861
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "- updateScreen: Tried to update menu; now need to dismiss!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2863
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 2867
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2869
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_9

    .line 2870
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2871
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 2872
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "- updateScreen: otaUtils is not null, call otaShowProperScreen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2873
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    goto :goto_0

    .line 2876
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_10

    .line 2877
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2879
    :cond_a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2880
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_d

    .line 2882
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "- updateScreen: OTA_STATUS_ACTIVATION"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2883
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 2884
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "- updateScreen: otaUtils is not null, call otaShowActivationScreen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2886
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto/16 :goto_0

    .line 2889
    :cond_d
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "- updateScreen: OTA Call end state for Dialogs"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2890
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 2891
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "- updateScreen: Show OTA Success Failure dialog"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2892
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto/16 :goto_0

    .line 2900
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_12

    .line 2901
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "- updateScreen: call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2903
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    goto/16 :goto_0

    .line 2905
    :cond_12
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_13

    .line 2906
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- updateScreen: undefined state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2911
    :cond_13
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2912
    :cond_14
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 2913
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 2914
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 2915
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 2917
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    .line 2918
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_15

    .line 2919
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/ManageConferenceUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 2923
    :cond_15
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2924
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    goto/16 :goto_0

    .line 2930
    :cond_16
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 2931
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2932
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 2933
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2934
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_18

    .line 2936
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Connection;

    .line 2937
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_17

    .line 2939
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_1

    .line 2942
    :cond_18
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v2, :cond_1

    .line 2944
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_19

    const-string v0, "show the Wait dialog for CDMA"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2945
    :cond_19
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 2946
    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2948
    :cond_1a
    if-eq v1, v3, :cond_1b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    .line 2950
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2951
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_1c

    .line 2952
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 2953
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_2

    .line 2957
    :cond_1d
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


# virtual methods
.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 5423
    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5424
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 5425
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 5435
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 5436
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    .line 5437
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 5440
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5441
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 5442
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 5444
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 5445
    return-void
.end method

.method dismissMenu(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x6f

    .line 5235
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

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5237
    if-eqz p1, :cond_0

    .line 5238
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->closeOptionsMenu()V

    .line 5244
    :goto_0
    return-void

    .line 5240
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5241
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 1884
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1903
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1893
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- ignoring DPAD event while touch-locked..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1895
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1884
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 6033
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6034
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6035
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    const v8, 0xff00

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1773
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_12

    .line 1775
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-nez v1, :cond_1

    .line 1776
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1876
    :goto_0
    return v0

    .line 1778
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, v1, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1779
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1782
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1786
    new-array v3, v12, [I

    .line 1787
    new-array v4, v12, [I

    .line 1789
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1791
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v6, v6, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v6, v6, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v6, v3}, Lcom/android/phone/PhoneSlidingTab;->getLocationOnScreen([I)V

    .line 1792
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v6, v6, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v6, v6, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v6, v4}, Landroid/widget/SlidingDrawer;->getLocationOnScreen([I)V

    .line 1794
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "y: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pointer Count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneApp Dispatch Touch Action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MASK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int v2, v0, v8

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1800
    and-int v1, v0, v8

    shr-int/lit8 v1, v1, 0x8

    .line 1801
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1802
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1803
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFocusX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1804
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFocusY: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1805
    if-eqz v0, :cond_3

    const/4 v7, 0x5

    if-eq v0, v7, :cond_3

    const/16 v7, 0x105

    if-ne v0, v7, :cond_a

    .line 1808
    :cond_3
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v7, v7, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v7, v7, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v7, v5}, Lcom/android/phone/PhoneSlidingTab;->getHitRect(Landroid/graphics/Rect;)V

    .line 1809
    float-to-int v7, v2

    float-to-int v8, v6

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget v7, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    if-eq v7, v11, :cond_8

    .line 1823
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v3, v3, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v3, v3, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3, v5}, Landroid/widget/SlidingDrawer;->getHitRect(Landroid/graphics/Rect;)V

    .line 1824
    float-to-int v3, v2

    float-to-int v7, v6

    invoke-virtual {v5, v3, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    if-eq v0, v11, :cond_9

    :cond_7
    :goto_2
    move v0, v9

    .line 1873
    goto/16 :goto_0

    .line 1811
    :cond_8
    iget v7, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    if-ne v7, v11, :cond_5

    .line 1814
    aget v7, v3, v10

    int-to-float v7, v7

    sub-float v7, v2, v7

    aget v3, v3, v9

    int-to-float v3, v3

    sub-float v3, v6, v3

    invoke-virtual {p1, v7, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1815
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1817
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v3, v3, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v3, v3, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneSlidingTab;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1818
    iput v1, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 1819
    iput v11, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    goto :goto_1

    .line 1826
    :cond_9
    iget v0, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    if-ne v0, v11, :cond_7

    .line 1829
    aget v0, v4, v10

    int-to-float v0, v0

    sub-float v0, v2, v0

    aget v2, v4, v9

    int-to-float v2, v2

    sub-float v2, v6, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1830
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1832
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1833
    iput v11, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 1834
    iput v1, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    goto :goto_2

    .line 1837
    :cond_a
    if-ne v0, v12, :cond_d

    move v0, v10

    .line 1838
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1839
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1840
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1841
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    if-ne v5, v6, :cond_b

    .line 1842
    aget v5, v3, v10

    int-to-float v5, v5

    sub-float v5, v1, v5

    aget v6, v3, v9

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1843
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v5, v5, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v5, v5, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v5, p1}, Lcom/android/phone/PhoneSlidingTab;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1845
    :cond_b
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    if-ne v5, v6, :cond_c

    .line 1846
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v1, v5

    aget v5, v4, v9

    int-to-float v5, v5

    sub-float/2addr v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1847
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, v1, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, p1}, Landroid/widget/SlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1838
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1850
    :cond_d
    if-eq v0, v9, :cond_e

    const/4 v5, 0x6

    if-eq v0, v5, :cond_e

    const/16 v5, 0x106

    if-ne v0, v5, :cond_7

    .line 1851
    :cond_e
    iget v5, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    if-eq v5, v1, :cond_11

    if-eq v0, v9, :cond_11

    .line 1862
    :cond_f
    :goto_4
    iget v3, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    if-eq v3, v1, :cond_10

    if-ne v0, v9, :cond_7

    .line 1864
    :cond_10
    iget v0, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    if-eq v0, v1, :cond_7

    .line 1867
    iput v11, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    .line 1868
    aget v0, v4, v10

    int-to-float v0, v0

    sub-float v0, v2, v0

    aget v1, v4, v9

    int-to-float v1, v1

    sub-float v1, v6, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1869
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1870
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p1}, Landroid/widget/SlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_2

    .line 1853
    :cond_11
    iget v5, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    if-eq v5, v1, :cond_f

    .line 1856
    iput v11, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 1857
    aget v5, v3, v10

    int-to-float v5, v5

    sub-float v5, v2, v5

    aget v3, v3, v9

    int-to-float v3, v3

    sub-float v3, v6, v3

    invoke-virtual {p1, v5, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1858
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1859
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v3, v3, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v3, v3, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneSlidingTab;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_4

    .line 1876
    :cond_12
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public endInCallScreenSession()V
    .locals 1

    .prologue
    .line 1309
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "endInCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1310
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 1311
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1297
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1298
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1299
    return-void
.end method

.method getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;
    .locals 1

    .prologue
    .line 6039
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    return-object v0
.end method

.method public getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;
    .locals 1

    .prologue
    .line 5932
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    return-object v0
.end method

.method getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 4570
    .line 4572
    instance-of v0, p1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_1

    .line 4573
    check-cast p1, Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p1

    .line 4577
    :goto_0
    if-eqz v0, :cond_7

    .line 4580
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4581
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 4600
    :cond_0
    :goto_1
    if-eqz v0, :cond_6

    .line 4601
    :goto_2
    return-object v0

    .line 4574
    :cond_1
    instance-of v0, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_8

    .line 4575
    check-cast p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 4582
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4583
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 4585
    :cond_3
    iget v1, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 4587
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_4

    .line 4589
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_1

    .line 4591
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v2, 0x7f0d0007

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4592
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_5

    .line 4593
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4594
    :cond_5
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v2, :cond_0

    .line 4595
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v3

    .line 4601
    goto :goto_2

    :cond_7
    move-object v0, v3

    goto :goto_1

    :cond_8
    move-object v0, v3

    goto :goto_0
.end method

.method public getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .locals 1

    .prologue
    .line 5923
    const-string v0, "getUpdatedInCallControlState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5924
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    invoke-virtual {v0}, Lcom/android/phone/InCallControlState;->update()V

    .line 5925
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    return-object v0
.end method

.method handleOnscreenButtonClick(I)V
    .locals 3
    .parameter

    .prologue
    .line 3819
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

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

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3821
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3885
    const-string v0, "InCallScreen"

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

    .line 3903
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 3904
    return-void

    .line 3829
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 3832
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 3837
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    goto :goto_0

    .line 3840
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 3844
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto :goto_0

    .line 3847
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onShowHideDialpad()V

    goto :goto_0

    .line 3850
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getDialnumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3851
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->getDialnumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto :goto_0

    .line 3854
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 3857
    :sswitch_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 3860
    :sswitch_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onSpeakerClick()V

    goto :goto_0

    .line 3863
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3867
    :sswitch_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3874
    :sswitch_c
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 3877
    :sswitch_d
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 3878
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3881
    :sswitch_e
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onWebExClick()V

    goto :goto_0

    .line 3821
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_0
        0x7f080018 -> :sswitch_1
        0x7f080054 -> :sswitch_6
        0x7f080077 -> :sswitch_2
        0x7f080079 -> :sswitch_a
        0x7f08007a -> :sswitch_e
        0x7f08007b -> :sswitch_5
        0x7f08007c -> :sswitch_4
        0x7f08007d -> :sswitch_4
        0x7f08007f -> :sswitch_9
        0x7f080080 -> :sswitch_8
        0x7f080081 -> :sswitch_7
        0x7f080095 -> :sswitch_c
        0x7f080097 -> :sswitch_d
        0x7f0800a3 -> :sswitch_3
        0x7f0800a4 -> :sswitch_b
    .end sparse-switch
.end method

.method public handleOtaCallEnd()V
    .locals 3

    .prologue
    .line 5758
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5760
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleOtaCallEnd entering"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5761
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_3

    .line 5767
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5768
    :cond_2
    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 5769
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 5771
    :cond_3
    return-void
.end method

.method internalAnswerAndEnd()V
    .locals 2

    .prologue
    .line 4608
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerAndEnd()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4609
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 4612
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 4613
    return-void
.end method

.method internalAnswerCall()V
    .locals 4

    .prologue
    .line 4387
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 4389
    if-eqz v0, :cond_1

    .line 4390
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4391
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4392
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 4393
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 4394
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4396
    :cond_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 4429
    :cond_1
    :goto_0
    return-void

    .line 4398
    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 4404
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 4405
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 4407
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 4408
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4417
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    goto :goto_0

    .line 4418
    :cond_5
    if-eqz v0, :cond_6

    .line 4419
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_0

    .line 4421
    :cond_6
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "internalAnswerCall: answering..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4422
    :cond_7
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 4426
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method internalHangup()V
    .locals 1

    .prologue
    .line 4630
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4631
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 4632
    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    .prologue
    .line 4619
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4620
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 4623
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 4624
    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "com.android.phone.ShowDialpad"

    .line 1423
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1424
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1521
    :cond_1
    :goto_0
    return-object v0

    .line 1427
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    .line 1429
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1430
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1437
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 1441
    const-string v2, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 1443
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1444
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v0, :cond_4

    .line 1446
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v5, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1447
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1450
    :cond_4
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 1451
    :cond_5
    const-string v2, "android.intent.action.ANSWER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1452
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1453
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1454
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 1455
    :cond_6
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1457
    :cond_7
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1462
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1463
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 1464
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 1465
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 1466
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 1467
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 1469
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1471
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    .line 1476
    :cond_9
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    .line 1477
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v0, v2, :cond_1

    .line 1482
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1486
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1488
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto/16 :goto_0

    .line 1474
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    goto :goto_1

    .line 1491
    :cond_b
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1499
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_d

    .line 1502
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1503
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1505
    :cond_d
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1506
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1508
    if-eqz v0, :cond_f

    .line 1509
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 1514
    :cond_e
    :goto_2
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1511
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_2

    .line 1515
    :cond_10
    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1516
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1518
    :cond_11
    const-string v1, "InCallScreen"

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

    .line 1521
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 3

    .prologue
    .line 5334
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_0

    .line 5335
    const-string v1, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHandsfree)"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5336
    const/4 v1, 0x0

    .line 5340
    :goto_0
    return v1

    .line 5338
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 5339
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

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v1, v0

    .line 5340
    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, " msec ago)"

    .line 5354
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5355
    const-string v0, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v5

    .line 5379
    :goto_0
    return v0

    .line 5363
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v0, :cond_2

    .line 5364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long/2addr v0, v2

    .line 5366
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 5367
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

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v5

    .line 5369
    goto :goto_0

    .line 5371
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

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5373
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    move v0, v4

    .line 5374
    goto :goto_0

    .line 5378
    :cond_2
    const-string v0, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v4

    .line 5379
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5292
    const-string v0, "isBluetoothAvailable()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5293
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v0, :cond_0

    .line 5295
    const-string v0, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v3

    .line 5327
    :goto_0
    return v0

    .line 5315
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 5316
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 5317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - headset state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - headset address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5320
    if-eqz v0, :cond_1

    .line 5321
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 5322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5326
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

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method isCallEndedScreen()Z
    .locals 2

    .prologue
    .line 5153
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 4961
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 1333
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method isKeyEventAcceptableDTMF(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isKeyEventAcceptable(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isManageConferenceMode()Z
    .locals 2

    .prologue
    .line 4836
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOtaCallInActiveState()Z
    .locals 3

    .prologue
    .line 5741
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5742
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v1, v2, :cond_1

    .line 5746
    :cond_0
    const/4 v1, 0x1

    .line 5748
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOtaCallInEndState()Z
    .locals 2

    .prologue
    .line 5774
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneStateRestricted()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5167
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    .line 5168
    .local v0, serviceState:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 5102
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->isTouchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method okToShowDialpad()Z
    .locals 1

    .prologue
    .line 5072
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method okToShowInCallTouchUi()Z
    .locals 2

    .prologue
    .line 5148
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1593
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1604
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1605
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BACK key while ringing: reject the call"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1606
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    .line 1611
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1651
    :cond_2
    :goto_0
    return-void

    .line 1617
    :cond_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "BACK key while ringing: ignored"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1625
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1628
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 1630
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    .line 1634
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_6

    .line 1636
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 1640
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_running_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_7

    .line 1641
    const-string v0, "mtp is runnging.. ignore back key"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1646
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 1650
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3481
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 3482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3483
    instance-of v1, p1, Lcom/android/phone/InCallMenuItemView;

    if-eqz v1, :cond_0

    .line 3484
    move-object v0, p1

    check-cast v0, Lcom/android/phone/InCallMenuItemView;

    move-object v1, v0

    .line 3485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> menu item! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3494
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 3581
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v3, :cond_6

    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_6

    .line 3584
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v2}, Lcom/android/phone/OtaUtils;->onClickHandler(I)V

    move v1, v6

    .line 3592
    :goto_0
    const v2, 0x1129f

    new-array v3, v6, [Ljava/lang/Object;

    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_7

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    aput-object v4, v3, v5

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3606
    if-nez v1, :cond_2

    .line 3611
    const-string v2, "- onClick: updating menu to show \'new\' current state..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3612
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    .line 3613
    if-nez v2, :cond_2

    .line 3621
    const-string v1, "onClick: Tried to update menu, but now need to take it down!"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v1, v6

    .line 3627
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3636
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 3637
    return-void

    .line 3496
    :sswitch_0
    const-string v1, "onClick: AnswerAndHold..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3497
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    move v1, v6

    .line 3498
    goto :goto_0

    .line 3501
    :sswitch_1
    const-string v1, "onClick: AnswerAndEnd..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3502
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    move v1, v6

    .line 3503
    goto :goto_0

    .line 3506
    :sswitch_2
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "onClick: Answer..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3507
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    move v1, v6

    .line 3508
    goto :goto_0

    .line 3511
    :sswitch_3
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "onClick: Ignore..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3512
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    move v1, v6

    .line 3513
    goto :goto_0

    .line 3516
    :sswitch_4
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "onClick: SwapCalls..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3517
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    move v1, v6

    .line 3518
    goto :goto_0

    .line 3521
    :sswitch_5
    const-string v1, "onClick: MergeCalls..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3522
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    move v1, v6

    .line 3523
    goto :goto_0

    .line 3526
    :sswitch_6
    const-string v1, "onClick: ManageConference..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3528
    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    move v1, v6

    .line 3529
    goto/16 :goto_0

    .line 3532
    :sswitch_7
    const-string v1, "onClick: Show/hide dialpad..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3533
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onShowHideDialpad()V

    move v1, v6

    .line 3534
    goto/16 :goto_0

    .line 3537
    :sswitch_8
    const-string v1, "onClick: mButtonManageConferenceDone..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3539
    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    move v1, v6

    .line 3540
    goto/16 :goto_0

    .line 3543
    :sswitch_9
    const-string v1, "onClick: Speaker..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3544
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onSpeakerClick()V

    move v1, v5

    .line 3547
    goto/16 :goto_0

    .line 3550
    :sswitch_a
    const-string v1, "onClick: Bluetooth..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3551
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onBluetoothClick()V

    move v1, v5

    .line 3554
    goto/16 :goto_0

    .line 3557
    :sswitch_b
    const-string v1, "onClick: Mute..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3558
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    move v1, v5

    .line 3561
    goto/16 :goto_0

    .line 3564
    :sswitch_c
    const-string v1, "onClick: Hold..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3565
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    move v1, v5

    .line 3568
    goto/16 :goto_0

    .line 3571
    :sswitch_d
    const-string v1, "onClick: AddCall..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3572
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    move v1, v6

    .line 3573
    goto/16 :goto_0

    .line 3576
    :sswitch_e
    const-string v1, "onClick: EndCall..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3577
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    move v1, v6

    .line 3578
    goto/16 :goto_0

    .line 3586
    :cond_6
    const-string v1, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got click from unexpected View ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (View = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    goto/16 :goto_0

    .line 3592
    :cond_7
    const-string v4, ""

    goto/16 :goto_1

    .line 3494
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_6
        0x7f08000a -> :sswitch_7
        0x7f08000b -> :sswitch_e
        0x7f08000c -> :sswitch_d
        0x7f08000d -> :sswitch_4
        0x7f08000e -> :sswitch_5
        0x7f08000f -> :sswitch_a
        0x7f080010 -> :sswitch_9
        0x7f080011 -> :sswitch_b
        0x7f080012 -> :sswitch_c
        0x7f080013 -> :sswitch_0
        0x7f080014 -> :sswitch_1
        0x7f080015 -> :sswitch_2
        0x7f080016 -> :sswitch_3
        0x7f080097 -> :sswitch_8
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 6053
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: newConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6063
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6064
    iget v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 6092
    :cond_1
    :goto_0
    return-void

    .line 6067
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v0, :cond_3

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6071
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6072
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    .line 6073
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setOrientation(I)V

    .line 6074
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->setOrientation(I)V

    .line 6075
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    .line 6076
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v5, "InCallScreen"

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 735
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 737
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 739
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 740
    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 743
    const/high16 v0, 0x8

    .line 744
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    .line 750
    const/high16 v2, 0x40

    or-int/2addr v0, v2

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 754
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 756
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 758
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- mBluetoothHandsfree: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    .line 765
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {v0, p0, v4}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Got BluetoothHeadset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 769
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 787
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isTouchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 789
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 790
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Full touch device!  Found dialerView: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    move-object v0, v4

    .line 801
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v2, :cond_a

    .line 802
    const-string v2, "InCallScreen"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    :goto_1
    new-instance v2, Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;Landroid/widget/SlidingDrawer;)V

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 809
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/phone/PhoneVoiceRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    .line 811
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    .line 822
    if-nez p1, :cond_b

    .line 823
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 828
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 829
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): mInCallInitialStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 830
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v2, :cond_6

    .line 831
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_6
    :goto_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 843
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 847
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    .line 849
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 850
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "onCreate(): exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 851
    :cond_7
    return-void

    .line 794
    :cond_8
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 795
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Using SlidingDrawer-based dialpad.  Found dialerView: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 796
    :cond_9
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    .line 797
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ...and the SlidingDrawer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    :cond_a
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    goto/16 :goto_1

    .line 836
    :cond_b
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_2

    .line 847
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 615
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 617
    const v0, 0x7f0d0254

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020137

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 618
    const v0, 0x7f0d01ab

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020133

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 619
    const v0, 0x7f0d0252

    invoke-interface {p1, v3, v5, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020146

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 620
    const v0, 0x7f0d025a

    invoke-interface {p1, v3, v6, v6, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020135

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 621
    const/4 v0, 0x5

    const/4 v1, 0x5

    const v2, 0x7f0d02bf

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020140

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 622
    const/4 v0, 0x6

    const/4 v1, 0x6

    const v2, 0x7f0d0259

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020143

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 623
    const/4 v0, 0x7

    const/4 v1, 0x7

    const v2, 0x7f0d0257

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020141

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 624
    const/16 v0, 0x8

    const/16 v1, 0x8

    const v2, 0x7f0d0258

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020144

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 627
    return v4
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 5193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreatePanelView(featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5197
    if-eqz p1, :cond_0

    move-object v0, v2

    .line 5222
    :goto_0
    return-object v0

    .line 5205
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isTouchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 5206
    goto :goto_0

    .line 5213
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5215
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-nez v0, :cond_2

    .line 5216
    const-string v0, "onCreatePanelView: creating mInCallMenu (first time)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5217
    new-instance v0, Lcom/android/phone/InCallMenu;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallMenu;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    .line 5218
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenu;->initMenu()V

    .line 5221
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    .line 5222
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenu;->getView()Lcom/android/phone/InCallMenuView;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1233
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onDestroy()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1234
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1238
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 1240
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1241
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1245
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v1, :cond_1

    .line 1246
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v1}, Lcom/android/phone/InCallMenu;->clearInCallScreenReference()V

    .line 1248
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v1, :cond_2

    .line 1249
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1251
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v1, :cond_3

    .line 1252
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1255
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    .line 1256
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1258
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1262
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_4

    .line 1263
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 1264
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1269
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1273
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1275
    return-void
.end method

.method onDialerClose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5001
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onDialerClose()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5003
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5006
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v1, v2, :cond_2

    .line 5011
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 5012
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_2

    .line 5013
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    .line 5019
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 5021
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    .line 5023
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 5027
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 5030
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 5031
    return-void
.end method

.method onDialerOpen()V
    .locals 2

    .prologue
    .line 4969
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4973
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 4975
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    .line 4978
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4981
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 4984
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4989
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_2

    .line 4992
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->hideOtaScreen()V

    .line 4994
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v3, "InCallScreen"

    .line 1924
    sparse-switch p1, :sswitch_data_0

    .line 2046
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 2050
    :goto_0
    return v0

    .line 1926
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    move-result v0

    .line 1927
    if-nez v0, :cond_1

    .line 1928
    const-string v0, "InCallScreen"

    const-string v0, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v2

    .line 1931
    goto :goto_0

    :sswitch_1
    move v0, v2

    .line 1943
    goto :goto_0

    .line 1947
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 1958
    const-string v0, "InCallScreen"

    const-string v0, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1964
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1966
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "VOLUME key: silence ringer"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1967
    :cond_2
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    :cond_3
    move v0, v2

    .line 1972
    goto :goto_0

    .line 1987
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1988
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1991
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1992
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    move v0, v2

    .line 1993
    goto :goto_0

    .line 1997
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1998
    const-string v0, "- allowing MENU to dismiss touch lock overlay..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2001
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 2002
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    move v0, v2

    .line 2003
    goto :goto_0

    .line 2008
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    move v0, v2

    .line 2009
    goto/16 :goto_0

    .line 2014
    :sswitch_5
    const-string v0, "----------- InCallScreen View dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2017
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2018
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    move v0, v2

    .line 2019
    goto/16 :goto_0

    .line 2024
    :sswitch_6
    const-string v0, "----------- InCallScreen call state dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2025
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 2026
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    move v0, v2

    .line 2027
    goto/16 :goto_0

    .line 2033
    :sswitch_7
    const-string v0, "------------ Temp testing -----------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v2

    .line 2034
    goto/16 :goto_0

    .line 2038
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2039
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    :cond_5
    move v0, v2

    .line 2041
    goto/16 :goto_0

    .line 2050
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 1924
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_8
        0x5 -> :sswitch_0
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
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1911
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1917
    :goto_0
    return v0

    .line 1913
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 1915
    goto :goto_0

    .line 1917
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1391
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1405
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 1414
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1415
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v1, :cond_1

    .line 1416
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 695
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 696
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 728
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 698
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V

    move v0, v4

    .line 699
    goto :goto_0

    .line 701
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 702
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 703
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 704
    goto :goto_0

    .line 706
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    move v0, v4

    .line 707
    goto :goto_0

    .line 709
    :pswitch_3
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    move v0, v4

    .line 710
    goto :goto_0

    .line 712
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEMO_CREATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 713
    goto :goto_0

    .line 715
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.start_main_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v4

    .line 716
    goto :goto_0

    .line 720
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneVoiceRecorder;->startRecord(Ljava/lang/String;)V

    .line 721
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    move v0, v4

    .line 722
    goto :goto_0

    .line 724
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 725
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    move v0, v4

    .line 726
    goto :goto_0

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5253
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

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5257
    if-nez p1, :cond_0

    .line 5262
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 5263
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1078
    const-string v0, "onPause()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1079
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1081
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1086
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 1087
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 1089
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1093
    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 1101
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1105
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 1131
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    .line 1133
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 1137
    :cond_1
    const v1, 0x1129e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1141
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 1145
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1146
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1161
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/InCallScreen$3;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InCallScreen$3;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1169
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_3

    .line 1170
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 1171
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->showCallView()V

    .line 1174
    :cond_3
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 1178
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1182
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1188
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 634
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 636
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 639
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v5

    .line 690
    :goto_0
    return v0

    .line 641
    :cond_1
    const-string v2, "gsm.STK_SETUP_MENU"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 642
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simService - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 643
    :cond_2
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v6

    :goto_1
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 644
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 645
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 646
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 648
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v6

    .line 649
    goto :goto_0

    :cond_3
    move v2, v5

    .line 643
    goto :goto_1

    .line 653
    :cond_4
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 654
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eq v2, v3, :cond_5

    .line 655
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 658
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_9

    .line 659
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 660
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_6

    .line 661
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 678
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_7

    .line 687
    :cond_7
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 688
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v6

    .line 690
    goto/16 :goto_0

    .line 663
    :cond_8
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 666
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/InCallControlState;->canTransfer:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 668
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_6

    .line 669
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 670
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_6

    .line 671
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/16 v8, 0x70

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 867
    const-string v0, "onResume()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 868
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 870
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 872
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 874
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->disableStatusBar()V

    .line 879
    invoke-virtual {v1, v6}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 883
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 885
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_0

    .line 886
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 887
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->hideCallView()V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 900
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onResume: initial status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v2, :cond_14

    .line 903
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onResume: failure during startup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V

    .line 915
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move v0, v6

    .line 919
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    .line 921
    if-eqz v2, :cond_a

    .line 922
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    .line 927
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->takeKeyEvents(Z)V

    .line 929
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    move v2, v6

    .line 932
    :goto_2
    if-eqz v2, :cond_13

    .line 933
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initOtaState()Z

    move-result v3

    .line 935
    :goto_3
    if-nez v3, :cond_3

    .line 937
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 944
    :cond_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 946
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v3

    .line 947
    sget-object v4, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v3, v4, :cond_e

    .line 948
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onResume: syncWithPhoneState failed! status = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 952
    :cond_4
    if-eqz v0, :cond_c

    .line 960
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 997
    :cond_5
    const v0, 0x1129d

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1004
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_11

    .line 1007
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1023
    const-string v0, "- posting ALLOW_SCREEN_ON message..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1025
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1039
    :goto_4
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1044
    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 1047
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 1051
    :cond_6
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1053
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 1054
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1057
    :cond_7
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-ne v0, v6, :cond_12

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v7, :cond_12

    .line 1058
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 1063
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 1064
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    .line 1065
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setOrientation(I)V

    .line 1066
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->setOrientation(I)V

    .line 1067
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    .line 1068
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1070
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-class v1, Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 1071
    const-string v0, "onResume() done."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1072
    :goto_6
    return-void

    .line 924
    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_1

    :cond_b
    move v2, v5

    .line 929
    goto/16 :goto_2

    .line 974
    :cond_c
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 975
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 983
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    goto :goto_6

    .line 986
    :cond_e
    if-eqz v2, :cond_5

    .line 987
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v2, :cond_5

    .line 989
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v5}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 990
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 991
    :cond_10
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto :goto_6

    .line 1037
    :cond_11
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_4

    .line 1059
    :cond_12
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v6, :cond_8

    .line 1060
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_5

    :cond_13
    move v3, v5

    goto/16 :goto_3

    :cond_14
    move v0, v5

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1192
    const-string v0, "onStop()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1193
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1195
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTimer()V

    .line 1197
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1198
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1200
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 1201
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1205
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_2

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_2

    .line 1213
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1214
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1215
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1221
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_3

    .line 1222
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->removeIncomingSlidingWidget()V

    .line 1225
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1229
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2058
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 2059
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppServiceFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2062
    :cond_0
    sget-object v1, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2103
    const v0, 0x7f0d0190

    .line 2111
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 2112
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2113
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2115
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2118
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

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2123
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2125
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2126
    return-void

    .line 2066
    :pswitch_0
    const v0, 0x7f0d0191

    .line 2067
    goto :goto_0

    .line 2072
    :pswitch_1
    const v0, 0x7f0d0192

    .line 2073
    goto :goto_0

    .line 2079
    :pswitch_2
    const v0, 0x7f0d0193

    .line 2080
    goto :goto_0

    .line 2085
    :pswitch_3
    const v0, 0x7f0d0194

    .line 2086
    goto :goto_0

    .line 2091
    :pswitch_4
    const v0, 0x7f0d0195

    .line 2092
    goto :goto_0

    .line 2096
    :pswitch_5
    const v0, 0x7f0d0196

    .line 2097
    goto :goto_0

    .line 2062
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

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch(View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5622
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 5630
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 5700
    :goto_0
    return v0

    .line 5641
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 5643
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 5644
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- touch lock icon: handling a DOWN event, t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5648
    iget-wide v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockLastTouchTime:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 5649
    const-string v0, "==> touch lock icon: DOUBLE-TAP!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5653
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 5654
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 5656
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    :cond_2
    :goto_1
    move v0, v7

    .line 5667
    goto :goto_0

    .line 5658
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 5662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockLastTouchTime:J

    goto :goto_1

    :cond_4
    move v0, v7

    .line 5696
    goto :goto_0

    .line 5699
    :cond_5
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch: event from unexpected View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 5700
    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 5708
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5709
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 5711
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1761
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

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1762
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 1763
    const-string v0, "- onWindowFocusChanged: faking onDialerKeyUp()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1764
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1766
    :cond_0
    return-void
.end method

.method requestCloseOtaFailureNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 5719
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseOtaFailureNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5720
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5728
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 5736
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseSpcErrorNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5737
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5738
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x72

    .line 5387
    const-string v0, "requestUpdateBluetoothIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 5393
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5394
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5395
    return-void
.end method

.method requestUpdateDockUi()V
    .locals 3

    .prologue
    const/16 v2, 0x7b

    .line 5128
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestUpdateDockUi()... PhoneApp.mIsDockConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5130
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5131
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5132
    return-void
.end method

.method requestUpdateTouchUi()V
    .locals 2

    .prologue
    const/16 v1, 0x7a

    .line 5121
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5123
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5124
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5125
    return-void
.end method

.method public resetInCallScreenMode()V
    .locals 1

    .prologue
    .line 5974
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetInCallScreenMode - InCallScreenMode set to UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5975
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 5976
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 863
    return-void
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 1376
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 1383
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1386
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 1387
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v1, 0x40

    .line 1337
    if-eqz p1, :cond_0

    .line 1338
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1342
    :goto_0
    return-void

    .line 1340
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateMenuItems()V
    .locals 3

    .prologue
    .line 5911
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v1, :cond_0

    .line 5912
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    .line 5913
    .local v0, okToShowMenu:Z
    if-nez v0, :cond_0

    .line 5914
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 5917
    .end local v0           #okToShowMenu:Z
    :cond_0
    return-void
.end method
