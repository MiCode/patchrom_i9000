.class public Lcom/android/phone/EmergencyDialer;
.super Landroid/app/Activity;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field mDigits:Landroid/widget/EditText;

.field private mDigitsBackground:Landroid/graphics/drawable/Drawable;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mLastNumber:Ljava/lang/String;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVoicemailDialAndDeleteRow:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 107
    new-instance v0, Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$1;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "number"

    .prologue
    .line 563
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    const v0, 0x7f0d019b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0d019c

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 321
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 322
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 323
    return-void
.end method

.method private setupKeypad()V
    .locals 2

    .prologue
    .line 279
    const v1, 0x7f080046

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v1, 0x7f080047

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v1, 0x7f080048

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    const v1, 0x7f080049

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v1, 0x7f08004c

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 294
    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-void
.end method

.method private updateDialAndDeleteButtonStateEnabledAttr()V
    .locals 2

    .prologue
    .line 600
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 603
    .local v0, notEmpty:Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 604
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 606
    .end local v0           #notEmpty:Z
    :cond_0
    return-void

    .line 601
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 142
    .local v0, notEmpty:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 150
    return-void

    .end local v0           #notEmpty:Z
    :cond_1
    move v0, v2

    .line 141
    goto :goto_0

    .line 146
    .restart local v0       #notEmpty:Z
    :cond_2
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 119
    return-void
.end method

.method protected maybeAddNumberFormatting()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v1, 0x1

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 340
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 341
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 345
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 346
    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 350
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 351
    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 355
    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 356
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 360
    :sswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 361
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 365
    :sswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 366
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 370
    :sswitch_6
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 371
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 375
    :sswitch_7
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 376
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 380
    :sswitch_8
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 381
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 385
    :sswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 386
    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 390
    :sswitch_a
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 391
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 395
    :sswitch_b
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 396
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 400
    :sswitch_c
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 404
    :sswitch_d
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 405
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_0

    .line 409
    :sswitch_e
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x7f080046 -> :sswitch_0
        0x7f080047 -> :sswitch_1
        0x7f080048 -> :sswitch_2
        0x7f080049 -> :sswitch_3
        0x7f08004a -> :sswitch_4
        0x7f08004b -> :sswitch_5
        0x7f08004c -> :sswitch_6
        0x7f08004d -> :sswitch_7
        0x7f08004e -> :sswitch_8
        0x7f08004f -> :sswitch_b
        0x7f080050 -> :sswitch_9
        0x7f080051 -> :sswitch_a
        0x7f080065 -> :sswitch_e
        0x7f0800ec -> :sswitch_d
        0x7f0800ed -> :sswitch_c
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v9, "EmergencyDialer"

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 160
    const v5, 0x7f030017

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 164
    .local v3, r:Landroid/content/res/Resources;
    const v5, 0x7f02001f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    .line 167
    const v5, 0x7f080065

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    .line 168
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 169
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 171
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    .line 175
    const v5, 0x7f080046

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 176
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    .line 180
    :cond_0
    const v5, 0x7f0800ea

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    .line 183
    const v5, 0x7f0a000c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v6, 0x7f0800eb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 191
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v6, 0x7f0800ec

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    .line 192
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v6, 0x7f0800ed

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    .line 195
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 203
    :goto_0
    if-eqz p1, :cond_1

    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 209
    :cond_1
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v5

    .line 210
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 215
    :try_start_1
    new-instance v6, Landroid/media/ToneGenerator;

    const/4 v7, 0x3

    const/16 v8, 0x50

    invoke-direct {v6, v7, v8}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v6, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 216
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->setVolumeControlStream(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/EmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    :try_start_3
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    const v6, 0x7f0a0005

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-virtual {v5, p0, v6}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 233
    :goto_2
    return-void

    .line 198
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iput-object v8, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    goto :goto_0

    .line 217
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 218
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v6, "EmergencyDialer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught while creating local tone generator: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 222
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 230
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 231
    .local v2, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "EmergencyDialer"

    const-string v5, "Vibrate control bool missing."

    invoke-static {v9, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, dialog:Landroid/app/AlertDialog;
    if-nez p1, :cond_0

    .line 575
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0198

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d003d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 584
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 243
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 334
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 328
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    .line 330
    const/4 v0, 0x1

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x7f080065
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 302
    packed-switch p1, :pswitch_data_0

    .line 316
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    .line 313
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_1

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 422
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 436
    :goto_0
    return v1

    .line 424
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 428
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    move v1, v3

    .line 429
    goto :goto_0

    .line 432
    :sswitch_1
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    move v1, v3

    .line 433
    goto :goto_0

    .line 422
    :sswitch_data_0
    .sparse-switch
        0x7f080050 -> :sswitch_1
        0x7f0800ed -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 482
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 483
    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 485
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 487
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v2, :cond_0

    .line 489
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    .line 490
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 492
    :cond_0
    monitor-exit v1

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 274
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 589
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 590
    if-nez p1, :cond_0

    .line 591
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 592
    .local v1, alert:Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 594
    .end local v1           #alert:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 249
    const-string v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 250
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 446
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    .line 450
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 454
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 455
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 457
    :try_start_1
    new-instance v3, Landroid/media/ToneGenerator;

    const/16 v4, 0x8

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 464
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 470
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableStatusBar()V

    .line 471
    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 473
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 474
    return-void

    .line 459
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 460
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating local tone generator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 464
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    const-string v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 123
    return-void
.end method

.method placeCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 499
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 500
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 506
    :cond_0
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 521
    :goto_0
    return-void

    .line 509
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 511
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 512
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_0

    .line 518
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 519
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->showDialog(I)V

    goto :goto_0
.end method

.method playTone(I)V
    .locals 6
    .parameter "tone"

    .prologue
    .line 535
    iget-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 545
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 546
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 551
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 552
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_2

    .line 553
    const-string v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    monitor-exit v2

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 558
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x96

    invoke-virtual {v3, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 559
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
