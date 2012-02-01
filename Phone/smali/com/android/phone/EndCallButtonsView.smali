.class public Lcom/android/phone/EndCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "EndCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAddButton:Landroid/widget/Button;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mSaveButtonFrame:Landroid/view/View;

.field private mSendMsgButton:Landroid/widget/Button;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 60
    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    .line 62
    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    const v0, 0x7f08006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f08006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f08006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mAddButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f080069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSaveButtonFrame:Landroid/view/View;

    .line 74
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 215
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method


# virtual methods
.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "inCallScreen"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03001a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    const-string v1, "Inflate End call buttons view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 84
    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    .line 85
    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 86
    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const-string v8, "tel"

    const-string v7, ", id "

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 163
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

    invoke-direct {p0, v4}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 164
    iget-object v4, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 165
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 167
    iget-object v4, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, phoneNumber:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 208
    const-string v4, "EndCallButtonsView"

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

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 172
    :pswitch_0
    if-eqz v3, :cond_1

    .line 173
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    const-string v5, "tel"

    invoke-static {v8, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 181
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    if-eqz v3, :cond_1

    .line 182
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.videocall"

    const-string v5, "tel"

    invoke-static {v8, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    .restart local v2       #intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    iget-object v4, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    if-eqz v3, :cond_1

    .line 191
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "sms"

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 196
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_3
    if-eqz v3, :cond_1

    .line 197
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "phone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v4, "phone_type"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string v4, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v4, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x7f08006a
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 92
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 17
    .parameter "cm"
    .parameter "orientation"

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    move v14, v0

    move v0, v14

    move/from16 v1, p2

    if-eq v0, v1, :cond_0

    .line 96
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    .line 97
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    move v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v14, 0x1

    move v10, v14

    .line 99
    .local v10, isPortrait:Z
    :goto_0
    if-eqz v10, :cond_3

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object v14, v0

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/phone/EndCallButtonsViewLand;->setVisibility(I)V

    .line 116
    .end local v10           #isPortrait:Z
    .end local p2
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 118
    .local v2, call:Lcom/android/internal/telephony/Call;
    const/4 v7, 0x0

    .line 119
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    .line 120
    .local v12, phoneType:I
    const/4 v14, 0x2

    if-ne v12, v14, :cond_5

    .line 121
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 128
    :goto_2
    if-eqz v7, :cond_11

    .line 129
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    .line 130
    .local v9, isEmergencyCall:Z
    if-nez v9, :cond_8

    const/4 v14, 0x1

    move v6, v14

    .line 131
    .local v6, canVoiceCall:Z
    :goto_3
    if-nez v9, :cond_9

    const/4 v14, 0x1

    move v5, v14

    .line 132
    .local v5, canVideoCall:Z
    :goto_4
    if-nez v9, :cond_a

    const/4 v14, 0x1

    move v4, v14

    .line 133
    .local v4, canSendMsgButton:Z
    :goto_5
    const/4 v3, 0x0

    .line 134
    .local v3, canSaveCall:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v13

    .line 135
    .local v13, presentation:I
    sget v14, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v13, v14, :cond_c

    sget v14, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v13, v14, :cond_c

    .line 137
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v11

    .line 138
    .local v11, o:Ljava/lang/Object;
    instance-of v14, v11, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v14, :cond_1

    .line 139
    move-object v0, v11

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v8, v0

    .line 140
    .local v8, info:Lcom/android/internal/telephony/CallerInfo;
    if-nez v9, :cond_b

    iget-boolean v14, v8, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v14, :cond_b

    const/4 v14, 0x1

    move v3, v14

    .line 147
    .end local v8           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v11           #o:Ljava/lang/Object;
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object v14, v0

    if-eqz v6, :cond_d

    const/4 v15, 0x1

    :goto_7
    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object v14, v0

    if-eqz v5, :cond_e

    const/4 v15, 0x1

    :goto_8
    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    move-object v14, v0

    if-eqz v4, :cond_f

    const/4 v15, 0x1

    :goto_9
    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSaveButtonFrame:Landroid/view/View;

    move-object v14, v0

    if-eqz v3, :cond_10

    const/4 v15, 0x0

    :goto_a
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    .end local v3           #canSaveCall:Z
    .end local v4           #canSendMsgButton:Z
    .end local v5           #canVideoCall:Z
    .end local v6           #canVoiceCall:Z
    .end local v9           #isEmergencyCall:Z
    .end local v13           #presentation:I
    :goto_b
    return-void

    .line 97
    .end local v2           #call:Lcom/android/internal/telephony/Call;
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    .end local v12           #phoneType:I
    .restart local p2
    :cond_2
    const/4 v14, 0x0

    move v10, v14

    goto/16 :goto_0

    .line 105
    .restart local v10       #isPortrait:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object v14, v0

    if-nez v14, :cond_4

    .line 106
    const v14, 0x7f08006e

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object v14, v0

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/phone/EndCallButtonsViewLand;->initialize()V

    .line 109
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object v14, v0

    if-eqz v14, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/phone/EndCallButtonsViewLand;->setVisibility(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 122
    .end local v10           #isPortrait:Z
    .restart local v2       #call:Lcom/android/internal/telephony/Call;
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v12       #phoneType:I
    :cond_5
    const/4 v14, 0x1

    if-eq v12, v14, :cond_6

    const/4 v14, 0x3

    if-ne v12, v14, :cond_7

    .line 124
    :cond_6
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto/16 :goto_2

    .line 126
    :cond_7
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected phone type: isContactExist: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 130
    .restart local v9       #isEmergencyCall:Z
    :cond_8
    const/4 v14, 0x0

    move v6, v14

    goto/16 :goto_3

    .line 131
    .restart local v6       #canVoiceCall:Z
    :cond_9
    const/4 v14, 0x0

    move v5, v14

    goto/16 :goto_4

    .line 132
    .restart local v5       #canVideoCall:Z
    :cond_a
    const/4 v14, 0x0

    move v4, v14

    goto/16 :goto_5

    .line 140
    .restart local v3       #canSaveCall:Z
    .restart local v4       #canSendMsgButton:Z
    .restart local v8       #info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v11       #o:Ljava/lang/Object;
    .restart local v13       #presentation:I
    :cond_b
    const/4 v14, 0x0

    move v3, v14

    goto/16 :goto_6

    .line 143
    .end local v8           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v11           #o:Ljava/lang/Object;
    :cond_c
    const/4 v6, 0x0

    .line 144
    const/4 v5, 0x0

    .line 145
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 147
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 148
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 149
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 150
    :cond_10
    const/4 v15, 0x4

    goto/16 :goto_a

    .line 153
    .end local v3           #canSaveCall:Z
    .end local v4           #canSendMsgButton:Z
    .end local v5           #canVideoCall:Z
    .end local v6           #canVoiceCall:Z
    .end local v9           #isEmergencyCall:Z
    .end local v13           #presentation:I
    :cond_11
    const-string v14, "EndCallButtonsView : connection is NullPointer at updateState"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    goto/16 :goto_b
.end method
