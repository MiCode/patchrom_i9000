.class public Lcom/android/phone/MultiCallView;
.super Landroid/widget/LinearLayout;
.source "MultiCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mFirstCallImageInfo:Landroid/widget/ImageView;

.field private mFirstCallInfo:Landroid/view/View;

.field private mFirstCallNameInfo:Landroid/widget/TextView;

.field private mFirstCallNumberInfo:Landroid/widget/TextView;

.field private mFirstCallTimeInfo:Landroid/widget/TextView;

.field private mFirstInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIsFirstCallInfoForeground:Z

.field private mListBackgroundDisable:I

.field private mListBackgroundNormal:I

.field private mMergeButton:Landroid/widget/Button;

.field private mSecondCallImageInfo:Landroid/widget/ImageView;

.field private mSecondCallInfo:Landroid/view/View;

.field private mSecondCallNameInfo:Landroid/widget/TextView;

.field private mSecondCallNumberInfo:Landroid/widget/TextView;

.field private mSecondCallTimeInfo:Landroid/widget/TextView;

.field private mSwapButton:Landroid/widget/Button;

.field private mTextColorGray:I

.field private mTextColorWhite:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private fillCallerInfo(ZLcom/android/internal/telephony/Call;)V
    .locals 13
    .parameter "isFirst"
    .parameter "call"

    .prologue
    const v7, 0x7f0d0028

    const v12, 0x7f0200cb

    const/4 v11, 0x1

    const v10, 0x7f0200f2

    const/4 v9, 0x0

    .line 160
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/MultiCallView;->getCallerInfo(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 161
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 162
    .local v4, presentation:I
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 163
    .local v1, isConf:Z
    if-eqz v0, :cond_e

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 166
    .local v3, number:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 167
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v4, v5, :cond_0

    .line 168
    invoke-direct {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    .line 180
    :goto_0
    if-eqz p1, :cond_8

    .line 181
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    const v8, 0x7f0d02b4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    if-eqz v1, :cond_5

    move v6, v11

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 184
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :goto_4
    return-void

    .line 170
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 171
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_1
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v4, v5, :cond_2

    .line 175
    invoke-direct {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 177
    :cond_2
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v6, v2

    .line 181
    goto :goto_1

    :cond_4
    move-object v6, v3

    .line 182
    goto :goto_2

    :cond_5
    move v6, v9

    .line 183
    goto :goto_3

    .line 185
    :cond_6
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 186
    :cond_7
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 188
    :cond_8
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    const v8, 0x7f0d02b4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    if-eqz v1, :cond_b

    move v6, v11

    :goto_7
    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 191
    if-eqz v1, :cond_c

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_9
    move-object v6, v2

    .line 188
    goto :goto_5

    :cond_a
    move-object v6, v3

    .line 189
    goto :goto_6

    :cond_b
    move v6, v9

    .line 190
    goto :goto_7

    .line 192
    :cond_c
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 193
    :cond_d
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 196
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_e
    if-eqz p1, :cond_f

    .line 197
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_4

    .line 201
    :cond_f
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_4
.end method

.method private getCallerInfo(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "obj"

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, p1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    .line 211
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    .line 215
    .end local p1
    :cond_0
    :goto_0
    return-object v1

    .line 212
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_0

    .line 213
    check-cast p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p1
    iget-object v1, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 3
    .parameter "presentation"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 256
    const-string v0, "MultiCAllView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method


# virtual methods
.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 4
    .parameter "inCallScreen"

    .prologue
    const/4 v3, 0x1

    .line 82
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030025

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    const-string v1, "Inflate multi call view"

    invoke-direct {p0, v1}, Lcom/android/phone/MultiCallView;->log(Ljava/lang/String;)V

    .line 88
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f08009e

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    .line 93
    const v1, 0x7f08009f

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    .line 94
    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0800a0

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f08009c

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f0800a1

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f0800a2

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f0800a3

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    .line 101
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v1, 0x7f0800a4

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    .line 103
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    .line 107
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    .line 109
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 113
    iput-boolean v3, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    .line 115
    const v1, 0x7f0200d3

    iput v1, p0, Lcom/android/phone/MultiCallView;->mListBackgroundNormal:I

    .line 116
    const v1, 0x7f0200d2

    iput v1, p0, Lcom/android/phone/MultiCallView;->mListBackgroundDisable:I

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    .line 119
    return-void
.end method

.method isFirstCallInfoForground()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const-string v5, ", id "

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 233
    .local v0, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/MultiCallView;->log(Ljava/lang/String;)V

    .line 235
    sparse-switch v0, :sswitch_data_0

    .line 247
    const-string v1, "MultiCAllView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 252
    :goto_1
    return-void

    .line 238
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080095

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 241
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 244
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x7f080099 -> :sswitch_0
        0x7f08009e -> :sswitch_0
        0x7f0800a3 -> :sswitch_1
        0x7f0800a4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 127
    return-void
.end method

.method resetOriginalState()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 8
    .parameter "cm"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 135
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 137
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 138
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 139
    .local v1, c:Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    .line 144
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/phone/MultiCallView;->mListBackgroundNormal:I

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 145
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/phone/MultiCallView;->mListBackgroundNormal:I

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v5, :cond_5

    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_6
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v5, :cond_7

    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_7
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    invoke-direct {p0, v4, v2}, Lcom/android/phone/MultiCallView;->fillCallerInfo(ZLcom/android/internal/telephony/Call;)V

    .line 151
    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v4, :cond_8

    move v4, v6

    :goto_8
    invoke-direct {p0, v4, v0}, Lcom/android/phone/MultiCallView;->fillCallerInfo(ZLcom/android/internal/telephony/Call;)V

    .line 153
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 157
    return-void

    :cond_1
    move v4, v7

    .line 142
    goto :goto_1

    .line 144
    :cond_2
    iget v5, p0, Lcom/android/phone/MultiCallView;->mListBackgroundDisable:I

    goto :goto_2

    .line 145
    :cond_3
    iget v5, p0, Lcom/android/phone/MultiCallView;->mListBackgroundDisable:I

    goto :goto_3

    .line 146
    :cond_4
    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_4

    .line 147
    :cond_5
    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_5

    .line 148
    :cond_6
    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_6

    .line 149
    :cond_7
    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_7

    :cond_8
    move v4, v7

    .line 151
    goto :goto_8
.end method
