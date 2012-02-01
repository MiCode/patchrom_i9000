.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$3;,
        Lcom/android/phone/CallCard$CallCardScreenState;
    }
.end annotation


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mBirthIcon:Landroid/widget/ImageView;

.field private mCallALSIcon:Landroid/widget/ImageView;

.field private mCallEndTimeBlinkCount:I

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCardTitle:Ljava/lang/String;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private mFirstCallInfoTime:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/CallCardLand;

.field private mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

.field private mMultiCallInfo:Lcom/android/phone/MultiCallView;

.field private mName:Landroid/widget/TextView;

.field private mNoiseReductionIcon:Landroid/widget/ImageView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

.field private mPortrait:Landroid/view/View;

.field private mPrimaryCallInfo:Landroid/view/View;

.field private mRecInfo:Landroid/view/View;

.field private final mRingingCallAnimationDuration:I

.field private mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

.field private mSecondCallInfoTime:Landroid/widget/TextView;

.field private mSnsIcon:Landroid/widget/ImageView;

.field private mSnsInfo:Landroid/widget/LinearLayout;

.field private mSnsStatus:Landroid/widget/TextView;

.field private mTextColorConnected:I

.field private mTextColorConnectedBluetooth:I

.field private mTextColorEnded:I

.field private mTextColorGray:I

.field private mTextColorOnHold:I

.field private mTextColorPhoneNumber:I

.field private mTextColorWhite:I

.field private mUpperTitle:Landroid/view/View;

.field private mUpperTitleText:Landroid/widget/TextView;

.field private mUpperTitleTextLand:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 137
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/phone/CallCard;->mRingingCallAnimationDuration:I

    .line 142
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 144
    new-instance v1, Lcom/android/phone/CallCard$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 197
    const-string v1, "CallCard constructor..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 202
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 203
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 207
    const-string v1, "Inflate CallCard view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 210
    new-instance v1, Lcom/android/phone/CallTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 213
    new-instance v1, Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    .line 215
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallCard;->mDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 218
    sget-object v1, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 219
    return-void
.end method

.method private CallEndTimeBlink()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 159
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 160
    const-string v1, "- CallEndTimeBlink: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 164
    :cond_0
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    .line 165
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    move v0, v5

    .line 166
    .local v0, invisibleCallTime:Z
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v1}, Lcom/android/phone/MultiCallView;->isFirstCallInfoForground()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    iget-object v1, p0, Lcom/android/phone/CallCard;->mFirstCallInfoTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v5

    :goto_4
    or-int/2addr v0, v1

    .line 174
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v2, v4

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 176
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0           #invisibleCallTime:Z
    :cond_2
    move v0, v3

    .line 165
    goto :goto_1

    .restart local v0       #invisibleCallTime:Z
    :cond_3
    move v2, v3

    .line 168
    goto :goto_2

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondCallInfoTime:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    move v2, v4

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_6

    :cond_6
    move v1, v3

    .line 173
    goto :goto_4

    :cond_7
    move v2, v3

    .line 174
    goto :goto_5

    .line 179
    .end local v0           #invisibleCallTime:Z
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v1, :cond_9

    .line 180
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v1}, Lcom/android/phone/MultiCallView;->isFirstCallInfoForground()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 181
    iget-object v1, p0, Lcom/android/phone/CallCard;->mFirstCallInfoTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lcom/android/phone/CallCard;->mFirstCallInfoTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :cond_9
    :goto_7
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iput v3, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    goto/16 :goto_0

    .line 184
    :cond_a
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondCallInfoTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSecondCallInfoTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_b
    move v2, v4

    .line 188
    goto :goto_8
.end method

.method static synthetic access$000(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/CallCard;->CallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method private clearUpperTitle()V
    .locals 3

    .prologue
    .line 1582
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 1583
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 19
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 433
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "displayMainCallStatus(call "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")..."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 435
    if-nez p2, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 643
    :goto_0
    return-void

    .line 440
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    .line 443
    .local v13, state:Lcom/android/internal/telephony/Call$State;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  - call.state: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 445
    sget-object v16, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 500
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "displayMainCallStatus: unexpected call state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 504
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v16

    if-nez v16, :cond_4

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 507
    const v16, 0x7f08002a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/MultiCallView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/MultiCallView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    const v17, 0x7f08009d

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mFirstCallInfoTime:Landroid/widget/TextView;

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    const v17, 0x7f0800a2

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mSecondCallInfoTime:Landroid/widget/TextView;

    .line 512
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 627
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 449
    :pswitch_0
    const-string v16, "displayMainCallStatus: start periodicUpdateTimer"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->reset()V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    goto/16 :goto_1

    .line 460
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->reset()V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    goto/16 :goto_1

    .line 467
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 473
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 480
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 489
    :pswitch_5
    const-string v16, "CallCard"

    const-string v17, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 515
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v16

    if-nez v16, :cond_5

    .line 517
    invoke-direct/range {p0 .. p2}, Lcom/android/phone/CallCard;->updateDisplayForConferenceCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 521
    :cond_5
    const/4 v6, 0x0

    .line 522
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 523
    .local v10, phoneType:I
    const/16 v16, 0x2

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 524
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 532
    :goto_3
    if-nez v6, :cond_9

    .line 533
    const-string v16, "displayMainCallStatus: connection is null, using default values."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    .line 539
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 525
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_6
    const/16 v16, 0x1

    move v0, v10

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    const/16 v16, 0x3

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 527
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_3

    .line 529
    :cond_8
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unexpected phone type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 541
    :cond_9
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  - CONN: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", state = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v11

    .line 546
    .local v11, presentation:I
    const/4 v12, 0x1

    .line 547
    .local v12, runQuery:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v8

    .line 548
    .local v8, o:Ljava/lang/Object;
    move-object v0, v8

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_d

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    move-object v0, v8

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v9, v0

    move-object v0, v9

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v12

    .line 557
    :goto_4
    const/16 v16, 0x2

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 558
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v9

    .line 559
    .local v9, obj:Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 560
    .local v15, updatedNumber:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v14

    .line 561
    .local v14, updatedCnapName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 562
    .restart local v7       #info:Lcom/android/internal/telephony/CallerInfo;
    move-object v0, v9

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 563
    move-object v0, v8

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v9, v0

    .end local v9           #obj:Ljava/lang/Object;
    iget-object v7, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 568
    :cond_a
    :goto_5
    if-eqz v7, :cond_c

    .line 569
    if-eqz v15, :cond_b

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 570
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 572
    const/4 v12, 0x1

    .line 574
    :cond_b
    if-eqz v14, :cond_c

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 575
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: updatedCnapName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 577
    const/4 v12, 0x1

    .line 582
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v14           #updatedCnapName:Ljava/lang/String;
    .end local v15           #updatedNumber:Ljava/lang/String;
    :cond_c
    if-eqz v12, :cond_10

    .line 583
    const-string v16, "- displayMainCallStatus: starting CallerInfo query..."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v7

    .line 586
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object v0, v7

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v16, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move/from16 v17, v0

    if-nez v17, :cond_f

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v11

    move/from16 v3, v17

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 552
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v12

    goto/16 :goto_4

    .line 564
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v9       #obj:Ljava/lang/Object;
    .restart local v14       #updatedCnapName:Ljava/lang/String;
    .restart local v15       #updatedNumber:Ljava/lang/String;
    :cond_e
    move-object v0, v8

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 565
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    goto/16 :goto_5

    .line 586
    .end local v9           #obj:Ljava/lang/Object;
    .end local v14           #updatedCnapName:Ljava/lang/String;
    .end local v15           #updatedNumber:Ljava/lang/String;
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_f
    const/16 v17, 0x0

    goto :goto_6

    .line 591
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_10
    const-string v16, "- displayMainCallStatus: using data we already have..."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 592
    move-object v0, v8

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_11

    .line 593
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v5, v0

    .line 595
    .local v5, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 596
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 597
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 598
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Number/Name Presentation="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 601
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 602
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v11

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 603
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_11
    move-object v0, v8

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_12

    .line 604
    check-cast v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v8           #o:Ljava/lang/Object;
    iget-object v5, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 605
    .restart local v5       #ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v5, :cond_3

    .line 606
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Number/Name Presentation="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 609
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 610
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v11

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 613
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v8       #o:Ljava/lang/Object;
    :cond_12
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayOnHoldCallStatus(call ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1087
    return-void
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1090
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1093
    if-nez v0, :cond_0

    .line 1094
    const-string v0, "getCallFailedString: connection is null, using default values."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1097
    const v0, 0x7f0d0177

    .line 1101
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1099
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1106
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1112
    sget-object v1, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1172
    const v0, 0x7f0d0177

    .line 1175
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1114
    :pswitch_0
    const v0, 0x7f0d000c

    .line 1115
    goto :goto_0

    .line 1118
    :pswitch_1
    const v0, 0x7f0d000d

    .line 1119
    goto :goto_0

    .line 1122
    :pswitch_2
    const v0, 0x7f0d000e

    .line 1123
    goto :goto_0

    .line 1126
    :pswitch_3
    const v0, 0x7f0d000f

    .line 1127
    goto :goto_0

    .line 1130
    :pswitch_4
    const v0, 0x7f0d0010

    .line 1131
    goto :goto_0

    .line 1134
    :pswitch_5
    const v0, 0x7f0d0011

    .line 1135
    goto :goto_0

    .line 1138
    :pswitch_6
    const v0, 0x7f0d0013

    .line 1139
    goto :goto_0

    .line 1142
    :pswitch_7
    const v0, 0x7f0d0012

    .line 1143
    goto :goto_0

    .line 1147
    :pswitch_8
    const v0, 0x7f0d0014

    .line 1148
    goto :goto_0

    .line 1151
    :pswitch_9
    const v0, 0x7f0d0015

    .line 1152
    goto :goto_0

    .line 1155
    :pswitch_a
    const v0, 0x7f0d0016

    .line 1156
    goto :goto_0

    .line 1159
    :pswitch_b
    const v0, 0x7f0d0017

    .line 1160
    goto :goto_0

    .line 1163
    :pswitch_c
    const v0, 0x7f0d0018

    .line 1164
    goto :goto_0

    .line 1168
    :pswitch_d
    const v0, 0x7f0d0027

    .line 1169
    goto :goto_0

    .line 1112
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
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1590
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1592
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1593
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    :goto_0
    const v1, 0x7f0d017b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1598
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1595
    :cond_0
    const v0, 0x7f0d0007

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1322
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 1323
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1327
    :cond_0
    :goto_0
    return-object v0

    .line 1324
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 1325
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 8
    .parameter "call"

    .prologue
    const v7, 0x7f0d0173

    const v6, 0x7f0d0171

    .line 884
    const/4 v2, 0x0

    .line 885
    .local v2, retVal:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 886
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 888
    .local v0, context:Landroid/content/Context;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getTitleForCallCard(Call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 890
    sget-object v4, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 937
    :goto_0
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==> result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 938
    return-object v2

    .line 897
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 898
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 899
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 900
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 902
    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 904
    :cond_1
    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 906
    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 908
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 913
    .end local v1           #phoneType:I
    :pswitch_2
    const v4, 0x7f0d0178

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 916
    goto :goto_0

    .line 920
    :pswitch_3
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 921
    goto :goto_0

    .line 925
    :pswitch_4
    const v4, 0x7f0d02b1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 926
    goto :goto_0

    .line 929
    :pswitch_5
    const v4, 0x7f0d0179

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 930
    goto :goto_0

    .line 933
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 890
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 238
    const v0, 0x7f08002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f08002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mBirthIcon:Landroid/widget/ImageView;

    .line 240
    const v0, 0x7f08002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 241
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/CallCard$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$2;-><init>(Lcom/android/phone/CallCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v0, 0x7f08002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f080022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    .line 250
    const v0, 0x7f080023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    .line 251
    const v0, 0x7f080024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f080025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    .line 253
    const v0, 0x7f080026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mNoiseReductionIcon:Landroid/widget/ImageView;

    .line 254
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 255
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1696
    const-string v0, "CallCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    return-void
.end method

.method private setRingingCallFrameAni()V
    .locals 6

    .prologue
    const v5, 0x7f020033

    const/4 v4, 0x0

    const/16 v3, 0xc8

    .line 1672
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1673
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1674
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1675
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1676
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1677
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1678
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1679
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1680
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1681
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1682
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1683
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1684
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1685
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1686
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1687
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1688
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1689
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1690
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1691
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1692
    return-void
.end method

.method private setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "title"
    .parameter "color"
    .parameter "state"

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1561
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1575
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1507
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1508
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1513
    :goto_0
    const/4 v0, 0x1

    .line 1515
    :goto_1
    return v0

    .line 1511
    :cond_0
    const v0, 0x7f0200ca

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1515
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 1520
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1521
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1522
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1526
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1527
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1528
    return-void
.end method

.method private updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 18
    .parameter "phone"
    .parameter "call"

    .prologue
    .line 708
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateCardTitleWidgets(call "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    .line 710
    .local v13, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 711
    .local v7, context:Landroid/content/Context;
    invoke-static/range {p2 .. p2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v8

    .line 718
    .local v8, duration:J
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    .line 719
    .local v12, phoneType:I
    const/4 v14, 0x2

    if-ne v12, v14, :cond_3

    .line 720
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v14}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v14

    if-nez v14, :cond_2

    .line 721
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    .line 735
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateCardTitleWidgets: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 738
    sget-object v14, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    move v15, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    move-object v14, v0

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 840
    :cond_0
    :goto_1
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_e

    .line 841
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 842
    .local v5, callAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v14, v5}, Lcom/android/phone/PhoneVoiceRecorder;->isRecordingCall(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 845
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 849
    const/4 v10, 0x0

    .line 850
    .local v10, isNoiseReductionState:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mNoiseReductionIcon:Landroid/widget/ImageView;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 855
    .end local v5           #callAddress:Ljava/lang/String;
    .end local v10           #isNoiseReductionState:Z
    :goto_2
    return-void

    .line 723
    :cond_2
    const v14, 0x7f0d0172

    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 725
    :cond_3
    const/4 v14, 0x1

    if-eq v12, v14, :cond_4

    const/4 v14, 0x3

    if-ne v12, v14, :cond_6

    .line 727
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v14}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v14

    if-nez v14, :cond_5

    .line 728
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 730
    :cond_5
    const v14, 0x7f0d0172

    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 733
    :cond_6
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected phone type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 741
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v4

    .line 742
    .local v4, bluetoothActive:Z
    if-eqz v4, :cond_8

    const v14, 0x7f02012c

    move v11, v14

    .line 744
    .local v11, ongoingCallIcon:I
    :goto_3
    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    move v14, v0

    move v6, v14

    .line 747
    .local v6, connectedTextColor:I
    :goto_4
    const/4 v14, 0x2

    if-ne v12, v14, :cond_c

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v14}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    move v15, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 770
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    move-object v14, v0

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    move v15, v0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 773
    const-wide/16 v14, 0x3e8

    div-long v14, v8, v14

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_1

    .line 742
    .end local v6           #connectedTextColor:I
    .end local v11           #ongoingCallIcon:I
    :cond_8
    const v14, 0x7f02012b

    move v11, v14

    goto :goto_3

    .line 744
    .restart local v11       #ongoingCallIcon:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    move v14, v0

    move v6, v14

    goto :goto_4

    .line 754
    .restart local v6       #connectedTextColor:I
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 757
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    move v15, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    goto :goto_5

    .line 761
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    goto :goto_5

    .line 763
    :cond_c
    const/4 v14, 0x1

    if-eq v12, v14, :cond_d

    const/4 v14, 0x3

    if-ne v12, v14, :cond_7

    .line 766
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    goto :goto_5

    .line 786
    .end local v4           #bluetoothActive:Z
    .end local v6           #connectedTextColor:I
    .end local v11           #ongoingCallIcon:I
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    move-object v14, v0

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    move-object v14, v0

    const/16 v15, 0x64

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    move-object v14, v0

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 797
    const-wide/16 v14, 0x3e8

    div-long v14, v8, v14

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    const-string v15, ""

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 811
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    move-object v14, v0

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    move v15, v0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 819
    const-wide/16 v14, 0x3e8

    div-long v14, v8, v14

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_1

    .line 826
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    move v15, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 852
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mNoiseReductionIcon:Landroid/widget/ImageView;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 738
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateDisplayForConferenceCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1338
    const-string v0, "updateDisplayForConferenceCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    const v2, 0x7f0d0028

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    const v3, 0x7f0d02b4

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1342
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1343
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0}, Lcom/android/phone/MultiCallView;->resetOriginalState()V

    .line 1346
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1350
    return-void
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x8

    const/4 v1, 0x0

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDisplayForPerson("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")\npresentation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isTemporary:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1190
    if-nez p4, :cond_0

    .line 1191
    const-string v0, "CallCard.updateDisplayForPerson : call is null"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1318
    :goto_0
    return-void

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1196
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1201
    if-eqz p1, :cond_a

    .line 1215
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1216
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1217
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    .line 1242
    :goto_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object v6, v3

    move-object v8, v0

    move-object v0, v2

    .line 1247
    :goto_2
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1248
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f0d017a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1256
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1268
    if-eqz p3, :cond_d

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v0, :cond_d

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1280
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1284
    if-eqz v8, :cond_f

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1285
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorPhoneNumber:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1287
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1292
    :goto_5
    if-eqz p1, :cond_10

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1293
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    packed-switch v0, :pswitch_data_0

    .line 1301
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1303
    :goto_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1308
    :goto_7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mBirthIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1309
    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p2, v0, :cond_3

    .line 1310
    iget-object v0, p0, Lcom/android/phone/CallCard;->mBirthIcon:Landroid/widget/ImageView;

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->isBirthday:Z

    if-eqz v2, :cond_11

    move v2, v1

    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1312
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_4

    .line 1314
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0}, Lcom/android/phone/MultiCallView;->resetOriginalState()V

    .line 1315
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0, v9}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 1317
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1218
    :cond_5
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v0, :cond_6

    .line 1222
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_1

    .line 1223
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1224
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1225
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1226
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_1

    .line 1228
    :cond_7
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_1

    .line 1231
    :cond_8
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v0, :cond_9

    .line 1235
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_1

    .line 1237
    :cond_9
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1238
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_1

    .line 1244
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v3

    move-object v8, v3

    goto/16 :goto_2

    .line 1250
    :cond_b
    if-eqz p1, :cond_c

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-ne v2, v3, :cond_c

    .line 1251
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/phone/CallCard;->mTextColorGray:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1254
    :goto_9
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1253
    :cond_c
    iget-object v2, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 1270
    :cond_d
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_2

    .line 1272
    if-eqz p1, :cond_e

    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v0, :cond_e

    .line 1273
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v0, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_4

    .line 1274
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1277
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v7, 0x7f0200ca

    move-object v0, p1

    move-object v2, p0

    move-object v3, p4

    invoke-static/range {v0 .. v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_4

    .line 1289
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1295
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v2, 0x7f020153

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 1297
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v2, 0x7f020154

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 1299
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v2, 0x7f020155

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 1305
    :cond_10
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1306
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_11
    move v2, v9

    .line 1310
    goto/16 :goto_8

    .line 1293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 5
    .parameter "timeElapsed"

    .prologue
    .line 863
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 864
    iget-object v3, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, time:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v3, p0, Lcom/android/phone/CallCard;->mFirstCallInfoTime:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondCallInfoTime:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 869
    iget-object v3, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v3}, Lcom/android/phone/MultiCallView;->isFirstCallInfoForground()Z

    move-result v0

    .line 870
    .local v0, flag:Z
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0178

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, holdText:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallCard;->mFirstCallInfoTime:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move-object v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v3, p0, Lcom/android/phone/CallCard;->mSecondCallInfoTime:Landroid/widget/TextView;

    if-nez v0, :cond_3

    move-object v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 871
    goto :goto_1

    :cond_3
    move-object v4, v1

    .line 872
    goto :goto_2
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 352
    const-string v4, "updateForegroundCall()..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 355
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 357
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_0

    .line 358
    const-string v4, "updateForegroundCall: no active call, show holding call"

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 365
    move-object v1, v0

    .line 368
    const/4 v0, 0x0

    .line 371
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 373
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 375
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 376
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 377
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 384
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 386
    :cond_3
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 388
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    const/4 v1, 0x0

    .line 422
    const-string v0, "updateNoCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 424
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 425
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 426
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhotoForCallState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1368
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1369
    sget-object v0, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1411
    :pswitch_0
    const/4 v2, 0x0

    .line 1414
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1415
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 1416
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1424
    :goto_0
    if-eqz v0, :cond_f

    .line 1425
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1426
    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_9

    .line 1427
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 1434
    :goto_1
    if-eqz v0, :cond_e

    .line 1435
    iget v2, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1450
    :goto_2
    if-nez v2, :cond_c

    .line 1451
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_b

    .line 1453
    :cond_2
    if-eqz v0, :cond_a

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    .line 1455
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1499
    :cond_3
    :goto_3
    return-void

    .line 1374
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1377
    if-eqz v0, :cond_5

    .line 1378
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1379
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v1, :cond_10

    .line 1381
    :cond_4
    const v0, 0x7f02017f

    .line 1493
    :goto_4
    if-eqz v0, :cond_3

    .line 1494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- overrriding photo image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1495
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1497
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v6}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_3

    .line 1384
    :cond_5
    const-string v0, "updatePhotoForCallState: connection is null, ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move v0, v4

    .line 1388
    goto :goto_4

    :pswitch_2
    move v0, v4

    .line 1390
    goto :goto_4

    .line 1417
    :cond_6
    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 1419
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 1421
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

    .line 1428
    :cond_9
    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_f

    .line 1429
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_1

    .line 1459
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1461
    sget-object v0, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 1469
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1470
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_3

    .line 1464
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1465
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_3

    .line 1476
    :cond_b
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1477
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v1

    if-ne v1, v6, :cond_d

    .line 1479
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v4}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 1481
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v5}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    move v0, v2

    goto/16 :goto_4

    .line 1486
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1487
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v5}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_3

    :cond_d
    move v0, v2

    goto/16 :goto_4

    :cond_e
    move v2, v4

    goto/16 :goto_2

    :cond_f
    move-object v0, v2

    goto/16 :goto_1

    :cond_10
    move v0, v4

    goto/16 :goto_4

    .line 1369
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1461
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 397
    const-string v1, "updateRingingCall()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 404
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 410
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 411
    return-void
.end method


# virtual methods
.method public hideCallCardElements()V
    .locals 2

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallCard onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 263
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    .line 264
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    .line 267
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/view/View;

    .line 268
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallALSIcon:Landroid/widget/ImageView;

    .line 272
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    .line 273
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorGray:I

    .line 274
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    .line 275
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    .line 276
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    .line 277
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    .line 278
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorPhoneNumber:I

    .line 280
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 282
    invoke-direct {p0}, Lcom/android/phone/CallCard;->setRingingCallFrameAni()V

    .line 283
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 698
    if-eqz p2, :cond_0

    .line 699
    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 701
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v8, 0x0

    .line 650
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQueryComplete: token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cookie "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ci "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 652
    instance-of v6, p2, Lcom/android/internal/telephony/Call;

    if-eqz v6, :cond_6

    .line 656
    const-string v6, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 657
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Call;

    move-object v1, v0

    .line 658
    .local v1, call:Lcom/android/internal/telephony/Call;
    const/4 v3, 0x0

    .line 659
    .local v3, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 660
    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 661
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 668
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v3, p0, v7}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 671
    .local v2, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 672
    .local v5, presentation:I
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    .line 673
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onQueryComplete: presentation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", contactExists="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 679
    iget-boolean v6, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v6, :cond_5

    .line 680
    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    invoke-direct {p0, p3, v6, v8, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 684
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 690
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #phoneType:I
    .end local v5           #presentation:I
    .end local p2
    :cond_1
    :goto_2
    return-void

    .line 662
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v3       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v4       #phoneType:I
    .restart local p2
    :cond_2
    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 664
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 666
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 682
    .restart local v2       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v5       #presentation:I
    :cond_5
    iget-object v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v6, v5, v8, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 686
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #phoneType:I
    .end local v5           #presentation:I
    :cond_6
    instance-of v6, p2, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 687
    const-string v6, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 688
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v6, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v6}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 229
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 223
    return-void
.end method

.method setOrientation(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1619
    if-ne p1, v2, :cond_5

    move v1, v2

    .line 1620
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 1621
    :goto_1
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v3, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v2, v3, :cond_7

    .line 1622
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1623
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 1624
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1627
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLand;->setVisibility(I)V

    .line 1628
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1629
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLandIncoming;->setVisibility(I)V

    .line 1660
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v2, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    if-ne v0, v2, :cond_4

    .line 1661
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1662
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_f

    .line 1663
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1668
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/view/View;

    if-eqz v1, :cond_10

    move v1, v5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1669
    return-void

    :cond_5
    move v1, v5

    .line 1619
    goto :goto_0

    :cond_6
    move v0, v5

    .line 1620
    goto :goto_1

    .line 1631
    :cond_7
    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v3, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v2, v3, :cond_b

    .line 1632
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1633
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    if-nez v0, :cond_8

    .line 1634
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCardLandIncoming;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    .line 1635
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->initialize()V

    .line 1637
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 1638
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 1639
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 1641
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLand;->setVisibility(I)V

    .line 1642
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1643
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0, v5}, Lcom/android/phone/CallCardLandIncoming;->setVisibility(I)V

    goto/16 :goto_2

    .line 1645
    :cond_b
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v2, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v0, v2, :cond_2

    .line 1646
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1647
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    if-nez v0, :cond_c

    .line 1648
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCardLand;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    .line 1649
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->initialize()V

    .line 1650
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    .line 1652
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 1653
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 1654
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1655
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_e

    .line 1656
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0, v5}, Lcom/android/phone/CallCardLand;->setVisibility(I)V

    .line 1657
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1658
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLandIncoming;->setVisibility(I)V

    goto/16 :goto_2

    .line 1665
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_10
    move v1, v4

    .line 1668
    goto/16 :goto_4
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 234
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 5
    .parameter "cm"

    .prologue
    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 299
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    .line 302
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 346
    :goto_0
    return-void

    .line 303
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    .line 306
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 314
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 315
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_3

    .line 320
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    .line 344
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v3}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_5

    .line 325
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1

    .line 342
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1
.end method
