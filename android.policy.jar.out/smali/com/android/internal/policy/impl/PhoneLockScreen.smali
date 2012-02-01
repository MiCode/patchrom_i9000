.class public Lcom/android/internal/policy/impl/PhoneLockScreen;
.super Landroid/widget/LinearLayout;
.source "PhoneLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "PhoneLockScreen"

.field private static mPhonePassword:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private final USE_PHONELOCK:Z

.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreatedInPortrait:Z

.field private final mCreatedWithKeyboardOpen:Z

.field private mEmergencyCallButton:Landroid/widget/TextView;

.field private mEnteredDigits:I

.field private final mEnteredPassword:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOkButton:Landroid/widget/TextView;

.field private mPasswordText:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneLockScreen;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 4
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const v1, 0x109007f

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->DEBUG:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->USE_PHONELOCK:Z

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredPassword:[I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyboardOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCreatedWithKeyboardOpen:Z

    invoke-virtual {p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInPortrait()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCreatedInPortrait:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCreatedInPortrait:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/PhoneLockScreen;Lcom/android/internal/policy/impl/PhoneLockScreen$1;)V

    const v0, 0x10201ef

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mHeaderText:Landroid/widget/TextView;

    const v0, 0x10201f2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    const v0, 0x10201f3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mBackSpaceButton:Landroid/view/View;

    const v0, 0x10201d7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    const v0, 0x10201dd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mOkButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040345

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneLockScreen;->setFocusableInTouchMode(Z)V

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPhonePassword()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPhonePassword:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneLockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneLockScreen;->reportDigit(I)V

    return-void
.end method

.method private checkPassword()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, ""

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040346

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPhonePassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportPhoneUnlocked()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040347

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0
.end method

.method private popupEmergencyCall()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, temp:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Emergency Call ?  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v3, "Call"

    new-instance v4, Lcom/android/internal/policy/impl/PhoneLockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneLockScreen$1;-><init>(Lcom/android/internal/policy/impl/PhoneLockScreen;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private popupSOSCall()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    const-string v2, "  Emergency Call ?  "

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v2, "Call"

    new-instance v3, Lcom/android/internal/policy/impl/PhoneLockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PhoneLockScreen$2;-><init>(Lcom/android/internal/policy/impl/PhoneLockScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredPassword:[I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .local v0, digits:Landroid/text/Editable;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .local v1, len:I
    if-lez v1, :cond_0

    sub-int v2, v1, v3

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .end local v1           #len:I
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->checkPassword()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/PhoneLockScreen;->DIGITS:[C

    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .local v0, match:C
    if-eqz v0, :cond_1

    const/16 v1, 0x30

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneLockScreen;->reportDigit(I)V

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0x43

    if-ne p1, v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mEnteredDigits:I

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/16 v1, 0x42

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->checkPassword()V

    move v1, v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->popupEmergencyCall()V

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    return-void
.end method

.method public onOrientationChange(Z)V
    .locals 2
    .parameter "inPortrait"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, newConfig:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCreatedInPortrait:Z

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040345

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    return-void
.end method
