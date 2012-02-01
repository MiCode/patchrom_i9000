.class public Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/KeyguardViewBase;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DEBUG:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field static final PACKAGE_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone"

.field private static final TAG:Ljava/lang/String; = "LockPatternKeyguardView"

.field private static mIntent:Landroid/content/Intent;

.field private static mKeyguardShow:Z

.field private static mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

.field private static mPrevBattAction:I

.field private static recoveryScreen:Z


# instance fields
.field private final MISSED_MSG_CHECK:I

.field private final SUPPORT_MINI_MEDIA_PLAYER:Z

.field private final SUPPORT_PATTERN_LOCK_PRIVACY_MODE:Z

.field private final SUPPORT_PHONELOCK:Z

.field private final SUPPORT_SMART_LOCK:Z

.field private final SUPPORT_TOUCHWIZ_LOCK:Z

.field private final VIBRATION_DURATION:I

.field private lastAttemptDialog:Landroid/app/AlertDialog;

.field private mBatteryDialog:Landroid/app/AlertDialog;

.field private mBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mBatteryWarningTextView:Landroid/widget/TextView;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCurrentUnlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field private mEnableFallback:Z

.field private mEvtSequence:I

.field private mForgotPattern:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsVerifyUnlockOnly:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreen:Landroid/view/View;

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mMissedCall:I

.field private mMissedMsg:I

.field private mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

.field private mRecoverScreen:Landroid/view/View;

.field private mRequiresSim:Z

.field private mScreenOn:Z

.field private mUnlockScreen:Landroid/view/View;

.field private mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

.field private wipeDataDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardShow:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recoveryScreen:Z

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;->TapLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .locals 5
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->SUPPORT_TOUCHWIZ_LOCK:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->SUPPORT_MINI_MEDIA_PLAYER:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->SUPPORT_PATTERN_LOCK_PRIVACY_MODE:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->SUPPORT_PHONELOCK:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->SUPPORT_SMART_LOCK:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mCurrentUnlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    iput v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->VIBRATION_DURATION:I


    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1


    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    iput v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MISSED_MSG_CHECK:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMissedMsg:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMissedCall:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    new-instance v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    const-string v1, "keyguard.no_require_sim"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    new-instance v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setFocusableInTouchMode(Z)V

    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setDescendantFocusability(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMissedMsg:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMissedCall:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getLockScreenMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    .local v0, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeEnableFallback(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateScreens()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryWarningTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showTimeoutDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showLastAttemptDialog(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showRecovery()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPrevBattAction:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lastAttemptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->handleCheckMissedMessage(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->wipeDataDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardShow:Z

    return p0
.end method

.method private batteryRinger(I)V
    .locals 5
    .parameter "id"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v1, v3

    .local v1, isRingerMode:Z
    :goto_0
    if-nez v1, :cond_1

    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    .local v2, vibrator:Landroid/os/Vibrator;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .end local v2           #vibrator:Landroid/os/Vibrator;
    :goto_1
    return-void

    .end local v1           #isRingerMode:Z
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .restart local v1       #isRingerMode:Z
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setSoundEffect(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->playSoundEffect(I)V

    goto :goto_1
.end method

.method private getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 4

    .prologue
    const-string v1, "ram"

    const-string v2, "encryption.bootmode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0


    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_0
.end method

.method private getLockScreenMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isMissedEventsArrived()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;->PuzzleLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;->GlassLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    goto :goto_0
.end method

.method private getLockScreenWithMissedEvent()Landroid/view/View;
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getLockScreenMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    move-result-object v0

    .local v0, lockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMissedMsg:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMissedCall:I

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    goto :goto_0
.end method

.method private getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .local v2, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .local v0, currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :goto_0
    return-object v0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_1

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .local v1, mode:I
    sparse-switch v1, :sswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unlock mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :sswitch_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPhoneLock()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->PhonelockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPatternLockActivated()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_5
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleCheckMissedMessage(I)V
    .locals 9
    .parameter "sequence"

    .prologue
    const/16 v8, 0x3e8

    const-string v7, "LockPatternKeyguardView"

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v1

    .local v1, curMsg:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v0

    .local v0, curCall:I
    iget v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    if-eq p1, v5, :cond_1

    .end local v0           #curCall:I
    .end local v1           #curMsg:I
    :cond_0
    :goto_0
    return-void

    .restart local v0       #curCall:I
    .restart local v1       #curMsg:I
    :cond_1
    const/4 v4, 0x0

    .local v4, phoneOffhook:Z
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    :goto_1
    if-nez v4, :cond_4

    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;->GlassLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    if-ne v5, v6, :cond_6

    if-gtz v1, :cond_3

    if-lez v0, :cond_6

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getLockScreenWithMissedEvent()Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v5, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "LockPatternKeyguardView"

    const-string v5, "Phone is boot completed. so can send broadcast message for music player"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_2
    iget v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    const/4 v7, 0x0

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v2           #msg:Landroid/os/Message;
    :cond_5
    const-string v5, "LockPatternKeyguardView"

    const-string v5, "Phone is not boot completed. so can\'t send broadcast message for music player"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;->PuzzleLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMissedMsg:I

    if-ne v5, v1, :cond_7

    iget v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMissedCall:I

    if-eq v5, v0, :cond_4

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v5, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMissedMsg:I

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMissedCall:I

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private isMissedEventsArrived()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isMissedEventRemained()Z

    move-result v0

    return v0
.end method

.method private isSecure()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .local v1, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    const/4 v0, 0x0

    .local v0, secure:Z
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->$SwitchMap$com$android$internal$policy$impl$LockPatternKeyguardView$UnlockMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPhoneLock()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_0

    move v0, v5

    :goto_1
    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_1

    move v0, v5

    :goto_2
    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    goto :goto_0

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

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;)V

    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->start()V

    return-void
.end method

.method private recreateLockScreen()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private recreateScreens()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateLockScreen()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    return-void
.end method

.method private recreateUnlockScreen()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    .local v0, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/16 v2, 0x1e

    .local v2, timeoutInSeconds:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x1040337

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showLastAttemptDialog(Z)V
    .locals 4
    .parameter "recovery"

    .prologue
    const/4 v3, 0x4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, lastAttempt:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    const v1, 0x104047b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x1040477

    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lastAttemptDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lastAttemptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lastAttemptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lastAttemptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const v1, 0x104047c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showRecovery()V
    .locals 6

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    new-instance v0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .local v0, recoveryView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showTimeoutDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/16 v2, 0x1e

    .local v2, timeoutInSeconds:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x1040336

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWipeDialog(I)V
    .locals 4
    .parameter "call"

    .prologue
    const/4 v3, 0x4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, wipeData:Landroid/app/AlertDialog$Builder;
    const v1, 0x1040476

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    const v1, 0x1040478

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x1040477

    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->wipeDataDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->wipeDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->wipeDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->wipeDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    if-nez p1, :cond_0

    const v1, 0x104047a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method stuckOnLockScreenBecauseSimMissing()Z
    .locals 3

    .prologue
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRequiresSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUpdateMonitor.isDeviceProvisioned() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUpdateMonitor.getSimState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V
    .locals 6
    .parameter "mode"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mCurrentUnlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v4

    if-eq v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen()V

    :cond_0
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    move-object v1, v3

    .local v1, goneScreen:Landroid/view/View;
    :goto_0
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    move-object v2, v3

    .local v2, visibleScreen:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreen;->needsInput()Z

    move-result v3

    invoke-interface {v4, v3}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setNeedsInput(Z)V

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->requestLayout()V

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguard screen must be able to take focus when shown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1           #goneScreen:Landroid/view/View;
    .end local v2           #visibleScreen:Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    move-object v1, v3

    goto :goto_0

    .restart local v1       #goneScreen:Landroid/view/View;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .restart local v2       #visibleScreen:Landroid/view/View;
    :cond_5
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    iget-object p0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {p0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    return-void
.end method

.method createLockScreen()Landroid/view/View;
    .locals 6

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;->PuzzleLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;->GlassLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlassLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    goto :goto_0
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 8
    .parameter "unlockMode"

    .prologue
    const/4 v1, 0x0

    .local v1, unlockView:Landroid/view/View;
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V

    .local v0, view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableFallback(Z)V

    move-object v1, v0

    .end local v0           #view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    .restart local v1       #unlockView:Landroid/view/View;
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mCurrentUnlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    return-object v1

    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->PhonelockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_1

    new-instance v1, Lcom/android/internal/policy/impl/PhoneLockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_2

    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_3

    new-instance v1, Lcom/android/internal/policy/impl/PukUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_4

    :try_start_0
    new-instance v1, Lcom/android/internal/policy/impl/AccountUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .end local v1           #unlockView:Landroid/view/View;
    :catch_0
    move-exception v2

    move-object v7, v2

    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v2, "LockPatternKeyguardView"

    const-string v3, "Couldn\'t instantiate AccountUnlockScreen (IAccountsService isn\'t available)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v1

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_5

    new-instance v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isPlayOwnSound()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->$SwitchMap$com$android$internal$policy$impl$LockPatternKeyguardView$LockScreenMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    move v0, v3

    goto :goto_0

    :pswitch_1
    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSecureLockMode()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBatteryLowWarn(I)V
    .locals 11
    .parameter "level"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "SHOULD_SHUT_DOWN"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .local v9, value:I
    if-ne v9, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->batteryRinger(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onBatteryStatusHide()V

    const/4 v3, 0x5

    if-ge p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x104043b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, levelText:Ljava/lang/CharSequence;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryWarningTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v8           #levelText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x104043a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #levelText:Ljava/lang/CharSequence;
    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x109001f

    invoke-static {v3, v4, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, v:Landroid/view/View;
    const v3, 0x10201a6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryWarningTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x10400d6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    invoke-virtual {v0, v2, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    const v2, 0x10400d9

    new-instance v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;

    invoke-direct {v3, p0, v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .local v6, d:Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onBatteryStatusHide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLowBatteryDialog:Landroid/app/AlertDialog;

    :cond_1
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryWarningTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPrevBattAction:I

    return-void
.end method

.method public onBatteryStatusInform(I)V
    .locals 7
    .parameter "action"

    .prologue
    const/16 v6, 0x66

    const/16 v5, 0x65

    sget v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPrevBattAction:I

    if-ne p1, v4, :cond_2

    sget v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPrevBattAction:I

    if-eq v4, v5, :cond_0

    sget v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPrevBattAction:I

    if-ne v4, v6, :cond_2

    :cond_0
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->batteryRinger(I)V

    :goto_0
    sget v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPrevBattAction:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->batteryRinger(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onBatteryStatusHide()V

    const/16 v4, 0x64

    if-ne p1, v4, :cond_4

    const v2, 0x1040439

    .local v2, textId:I
    :goto_2
    sput p1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPrevBattAction:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryWarningTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .end local v2           #textId:I
    :cond_4
    if-ne p1, v5, :cond_5

    const v2, 0x1040438

    .restart local v2       #textId:I
    goto :goto_2

    .end local v2           #textId:I
    :cond_5
    if-ne p1, v6, :cond_1

    const v2, 0x1040438

    .restart local v2       #textId:I
    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x1090077

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .local v3, v:Landroid/view/View;
    const v4, 0x1020253

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryWarningTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v4, 0x1040437

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x1080027

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    new-instance v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, d:Landroid/app/AlertDialog;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBatteryDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public onScreenTurnedOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;->GlassLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getLockScreenMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getLockScreenWithMissedEvent()Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    :cond_0
    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    iget-object p0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {p0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 7

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x1

    const-string v6, "LockPatternKeyguardView"

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    sget-boolean v1, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;->GlassLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getLockScreenMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockScreenMode;

    move-result-object v2

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getLockScreenWithMissedEvent()Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    sget-boolean v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardShow:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "LockPatternKeyguardView"

    const-string v1, "Phone is boot completed. so can send broadcast message for music player"

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    sput-boolean v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardShow:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    goto :goto_1

    :cond_4
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "Phone is not boot completed. so can\'t send broadcast message for music player"

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public removeMessageHander()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    return-void
.end method

.method public verifyUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEvtSequence:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->PhonelockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_0
.end method

.method protected createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1

    .prologue

    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    return-object v0
.end method

.method getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method getUpdateMonitor()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1

    .prologue

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

