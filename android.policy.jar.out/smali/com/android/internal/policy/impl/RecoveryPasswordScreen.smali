.class public Lcom/android/internal/policy/impl/RecoveryPasswordScreen;
.super Landroid/widget/LinearLayout;
.source "RecoveryPasswordScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0x7d0L

.field public static recoveryScreen:Z


# instance fields
.field private final RECOVERY_PASSWORD_ATTEMPTS:I

.field private mButtonsHolder:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsRecoveryMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mRecoverButton:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field final quality:I

.field private r:Ljava/lang/Runnable;

.field private recoveryAttempt:I

.field private wipeDataDialog:Landroid/app/AlertDialog;

.field private wipeDataRecoveryWrong:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v5, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    iput v4, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->RECOVERY_PASSWORD_ATTEMPTS:I

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$1;-><init>(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->r:Ljava/lang/Runnable;

    iget v2, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationHardKeyboardHidden:I

    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationOrientation:I

    iput-object p4, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const v2, 0x1090058

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    const/high16 v2, 0x4

    iget v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    if-eq v2, v3, :cond_0

    const/high16 v2, 0x5

    iget v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v4

    .local v0, isAlpha:Z
    :goto_1
    sput-boolean v4, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    const v2, 0x102015a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const v2, 0x10201ed

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v2, 0x10201ec

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mTitle:Landroid/widget/TextView;

    const v2, 0x1020228

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mButtonsHolder:Landroid/widget/RelativeLayout;

    const v2, 0x1020229

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mRecoverButton:Landroid/widget/Button;

    const v2, 0x102022a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mRecoverButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$2;-><init>(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$3;-><init>(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-direct {v2, p1, v3, p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationHardKeyboardHidden:I

    if-ne v3, v4, :cond_3

    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x1070015

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    return-void

    .end local v0           #isAlpha:Z
    :cond_1
    const v2, 0x1090057

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    move v0, v5

    goto/16 :goto_1

    .restart local v0       #isAlpha:Z
    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->verifyRecoveryPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private verifyRecoveryPassword()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, ""

    sput-boolean v8, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, entry:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    .local v1, isConfirmed:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .local v5, minLength:I
    iget v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .local v4, maxLength:I
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, it:Landroid/content/Intent;
    const-string v6, "lockscreen.password_type"

    const/high16 v7, 0x5

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "lockscreen.password_min"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "lockscreen.password_max"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "lockscreen.password_old"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "confirm_credentials"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x40

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6, v9}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .end local v2           #it:Landroid/content/Intent;
    .end local v3           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #maxLength:I
    .end local v5           #minLength:I
    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    iget v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    rem-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6, v9}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportDeviceWipe(I)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mTitle:Landroid/widget/TextView;

    const v7, 0x1040326

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->r:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private wipeDevice()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "exception in wiping data"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->verifyRecoveryPassword()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "plugIn"

    .prologue
    return-void
.end method
