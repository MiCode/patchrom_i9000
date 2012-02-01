.class public Lcom/android/phone/InternetCallsetting;
.super Landroid/preference/PreferenceActivity;
.source "InternetCallsetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createSipCallSettings()V
    .locals 3

    .prologue
    .line 57
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InternetCallsetting;->mSipManager:Landroid/net/sip/SipManager;

    .line 59
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InternetCallsetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 60
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/android/phone/InternetCallsetting;->addPreferencesFromResource(I)V

    .line 61
    invoke-direct {p0}, Lcom/android/phone/InternetCallsetting;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InternetCallsetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 62
    iget-object v0, p0, Lcom/android/phone/InternetCallsetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/android/phone/InternetCallsetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/InternetCallsetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/InternetCallsetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 66
    iget-object v0, p0, Lcom/android/phone/InternetCallsetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/InternetCallsetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    return-void
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .locals 4

    .prologue
    .line 73
    const-string v3, "sip_call_options_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/InternetCallsetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 75
    .local v1, wifiAnd3G:Landroid/preference/ListPreference;
    const-string v3, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/InternetCallsetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 77
    .local v2, wifiOnly:Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/phone/InternetCallsetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 78
    .local v0, sipSettings:Landroid/preference/PreferenceScreen;
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object v3, v2

    .line 83
    :goto_0
    return-object v3

    .line 82
    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object v3, v1

    .line 83
    goto :goto_0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/InternetCallsetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/phone/InternetCallsetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/InternetCallsetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 92
    iget-object v1, p0, Lcom/android/phone/InternetCallsetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/InternetCallsetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcom/android/phone/InternetCallsetting;->createSipCallSettings()V

    .line 53
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/InternetCallsetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 46
    invoke-direct {p0, p2}, Lcom/android/phone/InternetCallsetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    .line 48
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
