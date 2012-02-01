.class public Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.super Landroid/preference/ListPreference;
.source "Use2GOnlyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

.field private mIsDisconnectingData:Z

.field private mNetworkType:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v6, 0x7f070010

    const v5, 0x7f07000e

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsDisconnectingData:Z

    .line 45
    iput v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    .line 48
    new-instance v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 152
    new-instance v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;

    invoke-direct {v1, p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 74
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    iput-object p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    .line 77
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, code:Ljava/lang/String;
    const-string v1, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code : called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "YOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 81
    invoke-virtual {p0, v6}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEntries(I)V

    .line 82
    invoke-virtual {p0, v6}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEntryValues(I)V

    .line 88
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    .line 90
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 91
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 93
    return-void

    .line 83
    :cond_1
    const-string v1, "TRG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 84
    invoke-virtual {p0, v5}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEntries(I)V

    .line 85
    invoke-virtual {p0, v5}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEntryValues(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsDisconnectingData:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsDisconnectingData:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->changeNetworkType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/Use2GOnlyCheckBoxPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    return p1
.end method

.method private changeNetworkType()V
    .locals 4

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Use2GOnlyCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeNetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 149
    return-void
.end method


# virtual methods
.method public getPreferredNetworkType()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 98
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 8
    .parameter "positiveResult"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v7, "onDialogClosed : change to "

    const-string v4, "Use2GOnlyCheckBoxPreference"

    .line 102
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 104
    sget-boolean v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed : mNetworkType :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    sget-boolean v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed : findIndexOfValue(getValue()) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    invoke-virtual {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 142
    :cond_2
    :goto_0
    return-void

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    .line 110
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, code:Ljava/lang/String;
    const-string v2, "YOG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 113
    iget v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    if-ne v5, v2, :cond_4

    .line 114
    iput v6, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    .line 118
    :cond_4
    sget-boolean v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed : change to "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_5
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 127
    .local v1, state:I
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed : change to "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Data state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eq v1, v6, :cond_6

    if-ne v1, v5, :cond_7

    .line 131
    :cond_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0d02b7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0d02ba

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0d003d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0d002f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 140
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->changeNetworkType()V

    goto/16 :goto_0
.end method

.method public setEntries(I)V
    .locals 5
    .parameter "entriesResId"

    .prologue
    const/4 v4, 0x1

    .line 176
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, code:Ljava/lang/String;
    const-string v1, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEntries : called code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v1, "YOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 180
    const v1, 0x7f070010

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v1, "TRG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 182
    const v1, 0x7f07000e

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    goto :goto_0

    .line 184
    :cond_1
    const v1, 0x7f07000c

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    goto :goto_0
.end method

.method public setEntryValues(I)V
    .locals 5
    .parameter "entriesResId"

    .prologue
    const/4 v4, 0x1

    .line 190
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, code:Ljava/lang/String;
    const-string v1, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEntriesValues : called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v1, "YOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 194
    const v1, 0x7f070011

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v1, "TRG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 196
    const v1, 0x7f07000f

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 198
    :cond_1
    const v1, 0x7f07000d

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0
.end method
