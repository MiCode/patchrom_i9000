.class public Lcom/android/phone/FdnSetting;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private mAttempt:I

.field private mButtonChangePin2:Lcom/android/phone/EditPinPreference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private mButtonFDNList:Landroid/preference/PreferenceScreen;

.field private mFDNHandler:Landroid/os/Handler;

.field private mLeftTime:[I

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinChangeState:I

.field private mPuk2:Ljava/lang/String;

.field private mSkipOldPin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/FdnSetting;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 258
    new-instance v0, Lcom/android/phone/FdnSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FdnSetting$1;-><init>(Lcom/android/phone/FdnSetting;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    .line 441
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x89t 0x2t 0xdt 0x7ft
        0x8at 0x2t 0xdt 0x7ft
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/phone/FdnSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/FdnSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/FdnSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/FdnSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/FdnSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    return-void
.end method

.method private final displayMessage(I)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 436
    return-void
.end method

.method private final displayPinChangeDialog()V
    .locals 2

    .prologue
    .line 450
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 452
    return-void
.end method

.method private final displayPinChangeDialog(IZ)V
    .locals 8
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "\n"

    .line 455
    const-string v3, "FdnSetting"

    const-string v4, "displayPinChangeDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v3, :pswitch_data_0

    .line 471
    const v1, 0x7f0d0162

    .line 476
    .local v1, msgId:I
    :goto_0
    if-ne p1, v5, :cond_2

    .line 479
    iget v3, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    if-ne v3, v5, :cond_1

    .line 482
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 490
    .local v0, attemptString:Ljava/lang/CharSequence;
    :goto_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 520
    .end local v0           #attemptString:Ljava/lang/CharSequence;
    :goto_2
    if-eqz p2, :cond_0

    .line 521
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 523
    :cond_0
    return-void

    .line 459
    .end local v1           #msgId:I
    :pswitch_0
    const v1, 0x7f0d0162

    .line 460
    .restart local v1       #msgId:I
    goto :goto_0

    .line 462
    .end local v1           #msgId:I
    :pswitch_1
    const v1, 0x7f0d0159

    .line 463
    .restart local v1       #msgId:I
    goto :goto_0

    .line 465
    .end local v1           #msgId:I
    :pswitch_2
    const v1, 0x7f0d015a

    .line 466
    .restart local v1       #msgId:I
    goto :goto_0

    .line 468
    .end local v1           #msgId:I
    :pswitch_3
    const v1, 0x7f0d015b

    .line 469
    .restart local v1       #msgId:I
    goto :goto_0

    .line 487
    :cond_1
    new-array v2, v5, [Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 488
    .local v2, values:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/android/phone/FdnSetting;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #attemptString:Ljava/lang/CharSequence;
    goto :goto_1

    .line 492
    .end local v0           #attemptString:Ljava/lang/CharSequence;
    .end local v2           #values:[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 494
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    goto :goto_2

    .line 496
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    .line 500
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPUK2retry()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 503
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 512
    .restart local v0       #attemptString:Ljava/lang/CharSequence;
    :goto_3
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 508
    .end local v0           #attemptString:Ljava/lang/CharSequence;
    :cond_4
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPUK2retry()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 509
    .restart local v2       #values:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/android/phone/FdnSetting;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #attemptString:Ljava/lang/CharSequence;
    goto :goto_3

    .line 515
    .end local v0           #attemptString:Ljava/lang/CharSequence;
    .end local v2           #values:[Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final resetPinChangeState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 529
    const-string v0, "FdnSetting"

    const-string v1, "resetPinChangeState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 532
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 533
    return-void
.end method

.method private final resetPinChangeStateForPUK2()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 549
    const-string v0, "FdnSetting"

    const-string v1, "resetPinChangeStateForPUK2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 552
    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 553
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 554
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0d028b

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 556
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0d028c

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 558
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 560
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "puk2_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 562
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 563
    iput-boolean v3, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 564
    return-void
.end method

.method private toggleFDNEnable(Z)V
    .locals 10
    .parameter "positiveResult"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 114
    const-string v6, "FdnSetting"

    const-string v7, "toggleFDNEnable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v6}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, password:Ljava/lang/String;
    invoke-direct {p0, v4, v8}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 124
    .local v1, isEnabled:Z
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 127
    .local v3, onComplete:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    if-nez v1, :cond_1

    move v7, v9

    :goto_1
    invoke-virtual {v6, v7, v4, v3}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 136
    .end local v1           #isEnabled:Z
    .end local v3           #onComplete:Landroid/os/Message;
    :goto_2
    new-array v5, v9, [Ljava/lang/String;

    iget v6, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 137
    .local v5, values:[Ljava/lang/String;
    iget v6, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    if-ne v6, v9, :cond_3

    .line 139
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v6, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 145
    .local v0, attemptString:Ljava/lang/CharSequence;
    :goto_3
    const v2, 0x7f0d0134

    .line 146
    .local v2, msgId:I
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #attemptString:Ljava/lang/CharSequence;
    .end local v2           #msgId:I
    .end local v5           #values:[Ljava/lang/String;
    .restart local v1       #isEnabled:Z
    .restart local v3       #onComplete:Landroid/os/Message;
    :cond_1
    move v7, v8

    .line 127
    goto :goto_1

    .line 130
    .end local v1           #isEnabled:Z
    .end local v3           #onComplete:Landroid/os/Message;
    :cond_2
    const v6, 0x7f0d015f

    invoke-direct {p0, v6}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_2

    .line 143
    .restart local v5       #values:[Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v6, v6, v9

    invoke-virtual {p0, v6}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v7, Lcom/android/phone/FdnSetting;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #attemptString:Ljava/lang/CharSequence;
    goto :goto_3
.end method

.method private updateEnableFDN()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "fdn_internet"

    .line 591
    const-string v3, "FdnSetting"

    const-string v4, "updateEnableFDN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-array v2, v5, [Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 596
    .local v2, values:[Ljava/lang/String;
    iget v3, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    if-ne v3, v5, :cond_0

    .line 598
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 605
    .local v0, attemptString:Ljava/lang/CharSequence;
    :goto_0
    const v1, 0x7f0d0134

    .line 606
    .local v1, msgId:I
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v4, 0x7f0d0124

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 611
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v4, 0x7f0d011f

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 612
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v4, 0x7f0d0122

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 613
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 615
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fdn_internet"

    const-string v4, "on"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 625
    :goto_1
    return-void

    .line 603
    .end local v0           #attemptString:Ljava/lang/CharSequence;
    .end local v1           #msgId:I
    :cond_0
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mLeftTime:[I

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/android/phone/FdnSetting;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #attemptString:Ljava/lang/CharSequence;
    goto :goto_0

    .line 618
    .restart local v1       #msgId:I
    :cond_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v4, 0x7f0d0125

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 619
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v4, 0x7f0d0120

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 620
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v4, 0x7f0d0121

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 621
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 623
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fdn_internet"

    const-string v4, "off"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private updatePINChangeState(Z)V
    .locals 8
    .parameter "positiveResult"

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v5, ""

    .line 154
    const-string v1, "FdnSetting"

    const-string v2, "updatePINChangeState"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-nez p1, :cond_1

    .line 157
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 159
    iput v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 253
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_0

    .line 175
    :cond_1
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 225
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v1, :cond_7

    .line 227
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "puk2_state"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 177
    .end local v0           #onComplete:Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 182
    invoke-direct {p0, v4, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_0

    .line 184
    :cond_2
    const v1, 0x7f0d015f

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 193
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto/16 :goto_0

    .line 195
    :cond_3
    const v1, 0x7f0d015f

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_0

    .line 200
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 201
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 202
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 203
    const v1, 0x7f0d015e

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_0

    .line 207
    :cond_4
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 208
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v1, :cond_5

    .line 209
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 210
    .restart local v0       #onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 212
    .end local v0           #onComplete:Landroid/os/Message;
    :cond_5
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 213
    .restart local v0       #onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "puk2_state"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    goto/16 :goto_0

    .line 234
    .end local v0           #onComplete:Landroid/os/Message;
    :cond_6
    const v1, 0x7f0d0160

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_0

    .line 239
    :cond_7
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 240
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 241
    invoke-direct {p0, v4, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_0

    .line 244
    :cond_8
    const v1, 0x7f0d0160

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v2, 0x8

    .line 576
    if-eqz p2, :cond_1

    move v0, v2

    .line 579
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 580
    :cond_0
    const/4 v1, 0x0

    .line 582
    :goto_1
    return v1

    .line 576
    .end local v0           #pinMinimum:I
    :cond_1
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 582
    .restart local v0       #pinMinimum:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getPIN2retry()I
    .locals 2

    .prologue
    .line 536
    const-string v0, "FdnSetting"

    const-string v1, "getPIN2retry()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPin2Retry()I

    move-result v0

    return v0
.end method

.method public getPUK2retry()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPuk2Retry()I

    move-result v0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 423
    const-string v0, "FdnSetting"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 428
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 629
    const-string v1, "FdnSetting"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 633
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->addPreferencesFromResource(I)V

    .line 635
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 638
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 639
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_fdn_enable_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 640
    const-string v1, "button_change_pin2_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    .line 641
    const-string v1, "button_fdn_list_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;

    .line 647
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 649
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 652
    if-nez p1, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 663
    :goto_0
    return-void

    .line 656
    :cond_0
    const-string v1, "skip_old_pin_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 657
    const-string v1, "pin_change_state_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 658
    const-string v1, "old_pin_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 659
    const-string v1, "new_pin_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 660
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, "dialog_message_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, "dialog_pin_entry_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 1
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_1

    .line 104
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_0

    .line 106
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->updatePINChangeState(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 667
    const-string v0, "FdnSetting"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 671
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v0

    iput v0, p0, Lcom/android/phone/FdnSetting;->mAttempt:I

    .line 672
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 673
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 676
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoRefresh()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockKey()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 679
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    .line 683
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 690
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 691
    const-string v0, "skip_old_pin_key"

    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 692
    const-string v0, "pin_change_state_key"

    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 693
    const-string v0, "old_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v0, "new_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v0, "dialog_message_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v0, "dialog_pin_entry_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method
