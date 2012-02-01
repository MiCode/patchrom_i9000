.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$4;,
        Lcom/android/internal/policy/impl/LockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static mBatteryInfoState:I

.field private static mPlugedState:I


# instance fields
.field private final BATTERY_INFO_CHARGING:I

.field private final BATTERY_INFO_DEAD:I

.field private final BATTERY_INFO_FULL:I

.field private final BATTERY_INFO_NOT_DISPLAY:I

.field private final BATTERY_INFO_OVERHEAT:I

.field private final PLUG_IN:I

.field private final PLUG_OUT:I

.field private mAlarmIcon:Landroid/graphics/drawable/Drawable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevel:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mCreationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallText:Landroid/widget/TextView;

.field private mEnableMenuKeyInLockScreen:Z

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextAlarm:Ljava/lang/String;

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mPluggedIn:Z

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSelector:Lcom/android/internal/widget/SlidingTab;

.field private mShowingBatteryInfo:Z

.field private mSilentMode:Z

.field private mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    iput v4, p0, Lcom/android/internal/policy/impl/LockScreen;->BATTERY_INFO_NOT_DISPLAY:I

    iput v3, p0, Lcom/android/internal/policy/impl/LockScreen;->BATTERY_INFO_CHARGING:I

    iput v5, p0, Lcom/android/internal/policy/impl/LockScreen;->BATTERY_INFO_FULL:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->BATTERY_INFO_OVERHEAT:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->BATTERY_INFO_DEAD:I

    iput v3, p0, Lcom/android/internal/policy/impl/LockScreen;->PLUG_IN:I

    iput v4, p0, Lcom/android/internal/policy/impl/LockScreen;->PLUG_OUT:I

    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v1, v5, :cond_0

    const v1, 0x109003b

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    const v1, 0x10201f0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x102005c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    const v1, 0x10201fb

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x10201fc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    const v1, 0x10201fd

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x10201fe

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SlidingTab;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x1040342

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    const v1, 0x10201f8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    const v1, 0x10201eb

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v2, 0x1040323

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x10801b2

    const v3, 0x1080225

    const v4, 0x1080206

    const v5, 0x1080219

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    return-void

    :cond_0
    const v1, 0x109003c

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    move-object v0, p1

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    :goto_1
    return-object v1

    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukBlocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

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

.method private isSilentMode()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshAlarmDisplay()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget v0, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    if-ne v0, v2, :cond_6

    sget v0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040329

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040438

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_5

    const/16 v0, 0x63

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040328

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    if-gtz v0, :cond_4

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104032b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter "updateMonitor"

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryInfoState()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryPlugedState()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshAlarmDisplay()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDateFormatString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method private toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 8
    .parameter "textView"
    .parameter "text"
    .parameter "color"
    .parameter "iconResourceId"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, oldText:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .local v6, oldColors:Landroid/content/res/ColorStateList;
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$3;

    invoke-direct {v0, p0, p1, v7, v6}, Lcom/android/internal/policy/impl/LockScreen$3;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V
    .locals 8
    .parameter "status"

    .prologue
    const v3, 0x104032c

    const v7, 0x1040321

    const/4 v6, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040331

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x104032e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x104032e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040334

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040332

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x1040333

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

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
    .end packed-switch
.end method

.method private updateRightTabResources()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v0, v2

    .local v0, vibe:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const v2, 0x10801b3

    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v3, :cond_3

    const v3, 0x1080227

    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_4

    const v4, 0x1080210

    :goto_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v5, :cond_5

    const v5, 0x1080223

    :goto_4
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    return-void

    .end local v0           #vibe:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #vibe:Z
    :cond_1
    const v2, 0x10801b0

    goto :goto_1

    :cond_2
    const v2, 0x10801b1

    goto :goto_1

    :cond_3
    const v3, 0x1080224

    goto :goto_2

    :cond_4
    const v4, 0x108020f

    goto :goto_3

    :cond_5
    const v5, 0x1080222

    goto :goto_4
.end method

.method private updateStatusLines()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreen$Status;->showStatusLines()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

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

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_2

    const v1, 0x1040343

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    :cond_1
    return-void

    :cond_2
    const v1, 0x1040344

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    iput p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    sget v0, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    :cond_0
    return-void

    .end local v0           #silent:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v4, :cond_2

    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_3

    move v3, v6

    .local v3, vibe:Z
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_4

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .end local v3           #vibe:Z
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040153

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .local v0, message:Ljava/lang/String;
    :goto_5
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_7

    const v4, 0x10801b7

    move v2, v4

    .local v2, toastIcon:I
    :goto_6
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    .local v1, toastColor:I
    :goto_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toastColor:I
    .end local v2           #toastIcon:I
    :cond_2
    move v4, v7

    goto :goto_1

    :cond_3
    move v3, v7

    goto :goto_2

    .restart local v3       #vibe:Z
    :cond_4
    move v5, v7

    goto :goto_3

    .end local v3           #vibe:Z
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040154

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_5

    .restart local v0       #message:Ljava/lang/String;
    :cond_7
    const v4, 0x10801b8

    move v2, v4

    goto :goto_6

    .restart local v2       #toastIcon:I
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    goto :goto_7
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 4
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    sput p1, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    iput p2, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    sget v0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    :goto_0
    sput v3, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    sput v2, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    goto :goto_1
.end method

.method updateConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_2

    move v0, v4

    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method
