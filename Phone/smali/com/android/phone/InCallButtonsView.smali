.class public Lcom/android/phone/InCallButtonsView;
.super Landroid/widget/FrameLayout;
.source "InCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallButtonsView$SmallerHitTargetTouchListener;
    }
.end annotation


# instance fields
.field private inCallControlState:Lcom/android/phone/InCallControlState;

.field private mAddButton:Landroid/widget/Button;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEndButton:Landroid/widget/Button;

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mHoldButton:Landroid/widget/ImageButton;

.field private mHoldButtonContainer:Landroid/view/View;

.field private mHoldButtonLabel:Landroid/widget/TextView;

.field private mHoldIcon:Landroid/graphics/drawable/Drawable;

.field private mInCallSaveButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/InCallButtonsViewLand;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mUnholdIcon:Landroid/graphics/drawable/Drawable;

.field private mWebExButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    .line 79
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    .line 81
    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 84
    const v0, 0x7f080079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f08007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f08007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f08007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v0, 0x7f08007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f08007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f080081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 97
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f080080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    .line 99
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f08007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 101
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/phone/InCallButtonsView$SmallerHitTargetTouchListener;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallButtonsView$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallButtonsView;)V

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    const v0, 0x7f080076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    .line 118
    const v0, 0x7f080077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f080078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    .line 121
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 400
    const-string v0, "InCallButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method


# virtual methods
.method disableInCallControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 305
    return-void
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "inCallScreen"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 126
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03001f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 130
    const-string v1, "Inflate In call buttons view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mHoldIcon:Landroid/graphics/drawable/Drawable;

    .line 134
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mUnholdIcon:Landroid/graphics/drawable/Drawable;

    .line 135
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 136
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    .line 139
    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 140
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 141
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const-string v7, ", id "

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 264
    .local v1, id:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 266
    sparse-switch v1, :sswitch_data_0

    .line 291
    const-string v4, "InCallButtonsView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick: unexpected click: View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_0
    const v4, 0x7f080077

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 295
    :cond_1
    return-void

    .line 279
    :sswitch_0
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 282
    :sswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 283
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, phoneNumber:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 285
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 286
    .local v2, insertIntent:Landroid/content/Intent;
    const-string v4, "phone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 266
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080077 -> :sswitch_0
        0x7f080079 -> :sswitch_0
        0x7f08007a -> :sswitch_0
        0x7f08007b -> :sswitch_0
        0x7f08007c -> :sswitch_0
        0x7f08007d -> :sswitch_0
        0x7f08007e -> :sswitch_1
        0x7f08007f -> :sswitch_0
        0x7f080080 -> :sswitch_0
        0x7f080081 -> :sswitch_0
        0x7f0800a4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 146
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 12
    .parameter "cm"
    .parameter "orientation"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 149
    iget v6, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    if-eq v6, p2, :cond_0

    .line 150
    iput p2, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    .line 151
    iget v6, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    if-ne v6, v10, :cond_5

    move v5, v10

    .line 153
    .local v5, isPortrait:Z
    :goto_0
    if-eqz v5, :cond_6

    .line 154
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 155
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-virtual {v6, v9}, Lcom/android/phone/InCallButtonsViewLand;->setVisibility(I)V

    .line 169
    .end local v5           #isPortrait:Z
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 171
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 172
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 173
    .local v4, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 175
    .local v1, bgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v10, :cond_8

    .line 176
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    :goto_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 186
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    :goto_3
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v6, :cond_e

    .line 207
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0d01a7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 208
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v11, v7, v11, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 221
    :goto_4
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v7

    if-nez v7, :cond_f

    move v7, v10

    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 222
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 225
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canMute:Z

    if-eqz v7, :cond_10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v7

    if-nez v7, :cond_10

    move v7, v10

    :goto_6
    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 227
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 230
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 231
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 234
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v7, :cond_11

    move v7, v8

    :goto_7
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v6, :cond_1

    .line 238
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v6, :cond_12

    .line 239
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mUnholdIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    const v7, 0x7f0d01a4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 245
    :goto_8
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 250
    :cond_1
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v6, :cond_2

    .line 251
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v6, :cond_3

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_4

    .line 255
    :cond_3
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_4
    return-void

    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v1           #bgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v3           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v4           #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_5
    move v5, v8

    .line 151
    goto/16 :goto_0

    .line 158
    .restart local v5       #isPortrait:Z
    :cond_6
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-nez v6, :cond_7

    .line 159
    const v6, 0x7f080082

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/phone/InCallButtonsViewLand;

    iput-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    .line 160
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-virtual {v6}, Lcom/android/phone/InCallButtonsViewLand;->initialize()V

    .line 162
    :cond_7
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-eqz v6, :cond_0

    .line 163
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-direct {p0, v6}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 164
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-virtual {v6, v8}, Lcom/android/phone/InCallButtonsViewLand;->setVisibility(I)V

    goto/16 :goto_1

    .line 179
    .end local v5           #isPortrait:Z
    .restart local v0       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v1       #bgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v3       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v4       #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_8
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v7, :cond_9

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v10

    :goto_9
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    move v7, v8

    .line 180
    goto :goto_9

    .line 190
    :cond_a
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_d

    .line 191
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, canSaveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    if-eqz v2, :cond_b

    move v7, v9

    :goto_a
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    if-eqz v2, :cond_c

    move v7, v8

    :goto_b
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    :cond_b
    move v7, v8

    .line 193
    goto :goto_a

    :cond_c
    move v7, v9

    .line 195
    goto :goto_b

    .line 197
    .end local v2           #canSaveCall:Z
    :cond_d
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 212
    :cond_e
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0d01a6

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 213
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v11, v7, v11, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_f
    move v7, v8

    .line 221
    goto/16 :goto_5

    :cond_10
    move v7, v8

    .line 225
    goto/16 :goto_6

    :cond_11
    move v7, v9

    .line 234
    goto/16 :goto_7

    .line 242
    :cond_12
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHoldIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    const v7, 0x7f0d01a3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8
.end method
