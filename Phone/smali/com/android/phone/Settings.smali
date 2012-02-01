.class public Lcom/android/phone/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Settings$MyHandler;
    }
.end annotation


# instance fields
.field private SimState:I

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDataClicked:Z

.field private mDataDialog:Landroid/app/AlertDialog$Builder;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/Settings$MyHandler;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mUse2GOnlyCheckBoxPreference:Lcom/android/phone/Use2GOnlyCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 370
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2
    .parameter "NetworkMode"

    .prologue
    .line 481
    packed-switch p1, :pswitch_data_0

    .line 506
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: Global"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 508
    :goto_0
    return-void

    .line 484
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA pref"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 487
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 490
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 493
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 496
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA / EvDo"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 499
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 502
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: EvDo only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mDataClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/phone/Settings;->mDataClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/Settings;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 545
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 512
    packed-switch p1, :pswitch_data_0

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 514
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 516
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 95
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 97
    iput-boolean v1, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 213
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    const v4, 0x7f05000c

    invoke-virtual {p0, v4}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 216
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    iput v4, p0, Lcom/android/phone/Settings;->SimState:I

    .line 217
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 218
    new-instance v4, Lcom/android/phone/Settings$MyHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 222
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    iput-object v5, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 223
    iput-object v5, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    .line 224
    const-string v4, "button_data_enabled_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 225
    const-string v4, "button_roaming_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 226
    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 228
    const-string v4, "button_data_usage_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 229
    iget v4, p0, Lcom/android/phone/Settings;->SimState:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/phone/Settings;->SimState:I

    if-ne v4, v6, :cond_1

    .line 230
    :cond_0
    const-string v4, "Settings"

    const-string v5, "NO SIM"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 237
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 240
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 243
    .local v2, settingsNetworkMode:I
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 244
    new-instance v4, Lcom/android/phone/CdmaOptions;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 245
    new-instance v4, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 258
    .end local v2           #settingsNetworkMode:I
    :goto_0
    const-string v4, "throttle"

    invoke-virtual {p0, v4}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ThrottleManager;

    .line 259
    .local v3, tm:Landroid/net/ThrottleManager;
    new-instance v4, Lcom/android/phone/DataUsageListener;

    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v4, p0, v5, v1}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 260
    return-void

    .line 247
    .end local v3           #tm:Landroid/net/ThrottleManager;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 249
    .local v0, phoneType:I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 250
    new-instance v4, Lcom/android/phone/CdmaOptions;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    goto :goto_0

    .line 251
    :cond_3
    if-ne v0, v6, :cond_4

    .line 252
    new-instance v4, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 253
    const-string v4, "button_prefer_2g_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mUse2GOnlyCheckBoxPreference:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    goto :goto_0

    .line 255
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 530
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 535
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 536
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 540
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 108
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 304
    iget-object v0, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 305
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    const-string v7, "preferred_network_mode"

    .line 316
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    .line 319
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 321
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 322
    .local v1, buttonNetworkMode:I
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    const/4 v5, 0x0

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 325
    .local v3, settingsNetworkMode:I
    if-eq v1, v3, :cond_0

    .line 327
    packed-switch v1, :pswitch_data_0

    .line 353
    const/4 v2, 0x0

    .line 355
    .local v2, modemNetworkMode:I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    .line 357
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v7, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v5, v6}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 367
    .end local v1           #buttonNetworkMode:I
    .end local v2           #modemNetworkMode:I
    .end local v3           #settingsNetworkMode:I
    :cond_0
    return v6

    .line 329
    .restart local v1       #buttonNetworkMode:I
    .restart local v3       #settingsNetworkMode:I
    :pswitch_0
    const/4 v2, 0x7

    .line 330
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 332
    .end local v2           #modemNetworkMode:I
    :pswitch_1
    const/4 v2, 0x6

    .line 333
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 335
    .end local v2           #modemNetworkMode:I
    :pswitch_2
    const/4 v2, 0x5

    .line 336
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 338
    .end local v2           #modemNetworkMode:I
    :pswitch_3
    const/4 v2, 0x4

    .line 339
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 341
    .end local v2           #modemNetworkMode:I
    :pswitch_4
    const/4 v2, 0x3

    .line 342
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 344
    .end local v2           #modemNetworkMode:I
    :pswitch_5
    const/4 v2, 0x2

    .line 345
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 347
    .end local v2           #modemNetworkMode:I
    :pswitch_6
    const/4 v2, 0x1

    .line 348
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 350
    .end local v2           #modemNetworkMode:I
    :pswitch_7
    const/4 v2, 0x0

    .line 351
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v8, 0x1080027

    const v7, 0x1040014

    const v6, 0x1040013

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    iget-object v2, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v2, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    move v2, v5

    .line 207
    :goto_0
    return v2

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v2, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 123
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    .line 129
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    move v2, v5

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 139
    .local v1, settingsNetworkMode:I
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move v2, v5

    .line 140
    goto :goto_0

    .line 141
    .end local v1           #settingsNetworkMode:I
    :cond_3
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 142
    const-string v2, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v2}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    iput-boolean v4, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 148
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 151
    iget-object v2, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d01d7

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_1
    move v2, v5

    .line 162
    goto/16 :goto_0

    .line 160
    :cond_4
    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_1

    .line 163
    :cond_5
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 164
    const-string v2, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v2}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 166
    iput-boolean v4, p0, Lcom/android/phone/Settings;->mDataClicked:Z

    .line 167
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 169
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    .line 170
    iget-object v2, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0283

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/Settings$3;

    invoke-direct {v3, p0}, Lcom/android/phone/Settings$3;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d01d7

    new-instance v4, Lcom/android/phone/Settings$2;

    invoke-direct {v4, p0}, Lcom/android/phone/Settings$2;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/phone/Settings$1;

    invoke-direct {v3, p0}, Lcom/android/phone/Settings$1;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_2
    move v2, v5

    .line 200
    goto/16 :goto_0

    .line 196
    :cond_6
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 198
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_2

    .line 205
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_7
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v2, v4

    .line 207
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 264
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 268
    iget v3, p0, Lcom/android/phone/Settings;->SimState:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/phone/Settings;->SimState:I

    if-ne v3, v4, :cond_5

    :cond_0
    move v1, v4

    .line 269
    .local v1, mState:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-nez v1, :cond_6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 271
    iget-object v3, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    if-nez v3, :cond_1

    .line 272
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 274
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 279
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    if-nez v3, :cond_2

    .line 280
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 285
    :cond_2
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getRoamingPolicy()Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

    move-result-object v2

    .line 286
    .local v2, rp:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 290
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v4, v5}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 294
    :cond_3
    iget-object v3, p0, Lcom/android/phone/Settings;->mUse2GOnlyCheckBoxPreference:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    if-eqz v3, :cond_4

    .line 295
    iget-object v3, p0, Lcom/android/phone/Settings;->mUse2GOnlyCheckBoxPreference:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->getPreferredNetworkType()V

    .line 298
    :cond_4
    iget-object v3, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v3}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 299
    return-void

    .end local v1           #mState:Z
    .end local v2           #rp:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;
    :cond_5
    move v1, v5

    .line 268
    goto :goto_0

    .restart local v1       #mState:Z
    :cond_6
    move v4, v5

    .line 269
    goto :goto_1
.end method
