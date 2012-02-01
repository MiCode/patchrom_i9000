.class public Lcom/android/phone/IncomingSlidingWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingSlidingWidget.java"

# interfaces
.implements Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field public mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

.field private mLastIncomingCallActionTime:J

.field private mOrientation:I

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/Button;

.field private mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 65
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingSlidingWidget;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    return-object v0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v1}, Lcom/android/phone/PhoneSlidingTab;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v1}, Lcom/android/phone/PhoneSlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 135
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 136
    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$3;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$3;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 145
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneSlidingTab;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private linkControls()V
    .locals 5

    .prologue
    .line 71
    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneSlidingTab;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    .line 72
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    const v1, 0x7f02012f

    const v2, 0x7f02017b

    const v3, 0x7f02016b

    const v4, 0x7f020173

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneSlidingTab;->setLeftTabResources(IIII)V

    .line 78
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    const v1, 0x7f020130

    const v2, 0x7f02017c

    const v3, 0x7f02016f

    const v4, 0x7f020178

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneSlidingTab;->setRightTabResources(IIII)V

    .line 84
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    const v1, 0x7f0d02a5

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneSlidingTab;->setLeftHintText(I)V

    .line 85
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    const v1, 0x7f0d02a3

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneSlidingTab;->setRightHintText(I)V

    .line 86
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneSlidingTab;->setOnTriggerListener(Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;)V

    .line 87
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 88
    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$1;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$1;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$2;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 99
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RejectCallWithMsgLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    .line 100
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 274
    const-string v0, "IncomingSlidingWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method private showIncomingCallWidget()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v1}, Lcom/android/phone/PhoneSlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 153
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 155
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v1}, Lcom/android/phone/PhoneSlidingTab;->clearAnimation()V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneSlidingTab;->setVisibility(I)V

    .line 158
    return-void
.end method


# virtual methods
.method initialize(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030023

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    const-string v1, "Inflate Incoming widget view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->linkControls()V

    .line 111
    instance-of v1, p1, Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_1

    .line 112
    check-cast p1, Lcom/android/phone/InCallScreen;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/android/phone/InVTCallScreen;

    if-eqz v1, :cond_0

    .line 114
    check-cast p1, Lcom/android/phone/InVTCallScreen;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 122
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 235
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 6
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const v4, 0x7f080018

    const v3, 0x7f080017

    const-string v5, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    const-string v2, "IncomingSlidingWidget"

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 179
    packed-switch p2, :pswitch_data_0

    .line 224
    const-string v0, "IncomingSlidingWidget"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return-void

    .line 181
    :pswitch_0
    const-string v0, "LEFT_HANDLE: answer!"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    .line 190
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 197
    :cond_1
    const-string v0, "IncomingSlidingWidget"

    const-string v0, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :pswitch_1
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    .line 211
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 218
    :cond_3
    const-string v0, "IncomingSlidingWidget"

    const-string v0, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/16 v2, 0x8

    .line 239
    if-nez p1, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->showIncomingCallWidget()V

    .line 241
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 242
    .local v0, presentation:I
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v0, v1, :cond_1

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 246
    :goto_0
    const-string v1, "IncomingSlidingWidget show"

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 253
    .end local v0           #presentation:I
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    return-void

    .line 245
    .restart local v0       #presentation:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    .line 248
    .end local v0           #presentation:I
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 249
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->toggle()V

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 251
    const-string v1, "IncomingSlidingWidget gone"

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 3
    .parameter "cm"
    .parameter "orientation"

    .prologue
    .line 257
    iget v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    if-eq v2, p2, :cond_0

    .line 258
    iput p2, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 261
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 262
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, phoneNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2, v1}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhoneNumber(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2, p1}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhone(Lcom/android/internal/telephony/CallManager;)V

    .line 265
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2}, Lcom/android/phone/RejectCallWithMsgLayout;->updateItemList()V

    .line 266
    return-void
.end method
