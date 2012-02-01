.class public Lcom/samsung/sec/android/application/csc/CscSettings;
.super Ljava/lang/Object;
.source "CscSettings.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/android/application/csc/CscSettings$1;,
        Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;,
        Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;,
        Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;
    }
.end annotation


# instance fields
.field private final DEFAULT_CSC_FILE:Ljava/lang/String;

.field private final OTHERS_CSC_FILE:Ljava/lang/String;

.field private final SELECTIVE_RESET_FLAG:Ljava/lang/String;

.field private final SW_CONFIG_FILE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;

.field private mLocale:Ljava/util/Locale;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mParser:Lcom/samsung/sec/android/application/csc/CscParser;

.field private mResolver:Landroid/content/ContentResolver;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "CSCSettings"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->TAG:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 57
    const-string v0, "/efs/imei/selective"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->SELECTIVE_RESET_FLAG:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->OTHERS_CSC_FILE:Ljava/lang/String;

    .line 69
    const-string v0, "/system/SW_Configuration.xml"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->SW_CONFIG_FILE:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    .line 109
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mContext:Landroid/content/Context;

    .line 110
    const-string v0, "USER_PREFERENCES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    .line 111
    return-void
.end method

.method private isSelectiveReset()Z
    .locals 3

    .prologue
    .line 114
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/imei/selective"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "CSCSettings"

    const-string v2, "/efs/imei/selective is exists : Selective Reset mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x1

    .line 120
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const-string v8, "Settings.Main.Phone.DateTimeFormat.TimeFormat"

    const-string v0, "Off"

    const-string v6, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    const-string v5, "CSCSettings"

    .line 696
    const-string v0, "NOERROR"

    .line 699
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 700
    const-string v1, "CscSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** PATH_DATE_FORMAT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v1, "CscSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** PATH_TIME_FORMAT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "time_12_24"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    invoke-virtual {v1, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    invoke-virtual {v1, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ddmmyyyy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 708
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 727
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Phone.DateTimeFormat.TimeFormat"

    invoke-virtual {v1, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Phone.DateTimeFormat.TimeFormat"

    invoke-virtual {v1, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "24h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 731
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "24"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 745
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Sound.ExtraSound.CallEndTone"

    invoke-virtual {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 746
    if-eqz v1, :cond_2

    .line 749
    :try_start_0
    const-string v2, "Off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 751
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "call_end_tone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_a

    .line 768
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Phone.AlertOnCall"

    invoke-virtual {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 769
    if-eqz v1, :cond_3

    .line 772
    :try_start_1
    const-string v2, "Off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 774
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_c

    .line 791
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "PREF_RINGTONE_SET"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 792
    const-string v0, "Settings.Main.Sound.RingTone.src"

    .line 1003
    :cond_4
    :goto_0
    return-object v0

    .line 710
    :cond_5
    const-string v0, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    move-object v0, v6

    goto :goto_0

    .line 712
    :cond_6
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    invoke-virtual {v1, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mmddyyyy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 714
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    const-string v0, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    move-object v0, v6

    goto :goto_0

    .line 718
    :cond_7
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    invoke-virtual {v1, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyymmdd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    const-string v0, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    move-object v0, v6

    goto :goto_0

    .line 733
    :cond_8
    const-string v0, "Settings.Main.Phone.DateTimeFormat.TimeFormat"

    move-object v0, v8

    goto :goto_0

    .line 735
    :cond_9
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Phone.DateTimeFormat.TimeFormat"

    invoke-virtual {v1, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "12h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 739
    const-string v0, "Settings.Main.Phone.DateTimeFormat.TimeFormat"

    move-object v0, v8

    goto :goto_0

    .line 753
    :cond_a
    :try_start_2
    const-string v0, "Settings.Main.Sound.ExtraSound.CallEndTone"

    goto :goto_0

    .line 757
    :cond_b
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "call_end_tone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_2

    .line 759
    const-string v0, "Settings.Main.Sound.ExtraSound.CallEndTone"
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    const-string v1, "CSCSettings"

    const-string v1, "to get (call_end_tone) failed"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    const-string v0, "Settings.Main.Sound.ExtraSound.CallEndTone"

    goto/16 :goto_0

    .line 776
    :cond_c
    :try_start_3
    const-string v0, "Settings.Main.Phone.AlertOnCall"

    goto/16 :goto_0

    .line 780
    :cond_d
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_3

    .line 782
    const-string v0, "Settings.Main.Phone.AlertOnCall"
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 784
    :catch_1
    move-exception v0

    .line 785
    const-string v1, "CSCSettings"

    const-string v1, "to get (alertoncall_mode) failed"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    const-string v0, "Settings.Main.Phone.AlertOnCall"

    goto/16 :goto_0

    .line 795
    :cond_e
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "PREF_NOTIFICATION_SET"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 796
    const-string v0, "Settings.Main.Sound.MessageTone.src"

    goto/16 :goto_0

    .line 799
    :cond_f
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "PREF_SD_NOTIFICATION_SET"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 800
    const-string v0, "SettingsData.SDNotification"

    goto/16 :goto_0

    .line 803
    :cond_10
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Phone.DefLanguage"

    invoke-virtual {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 804
    const-string v2, "automatic"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 805
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 808
    if-eqz v1, :cond_11

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 810
    const-string v2, "en"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 811
    const-string v2, "english"

    .line 891
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 901
    :cond_11
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 903
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "SettingsData.AudibleTouchTones"

    invoke-virtual {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 904
    if-eqz v1, :cond_12

    .line 907
    :try_start_4
    const-string v2, "Off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 909
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "dtmf_tone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v1

    if-nez v1, :cond_3c

    .line 926
    :cond_12
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "SettingsData.AudibleSelection"

    invoke-virtual {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 927
    if-eqz v1, :cond_13

    .line 930
    :try_start_5
    const-string v2, "Off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 932
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v1

    if-nez v1, :cond_3e

    .line 949
    :cond_13
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "SettingsData.WifiSleepPolicy"

    invoke-virtual {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 950
    if-eqz v1, :cond_14

    .line 953
    :try_start_6
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 955
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "wifi_sleep_policy"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v1

    if-nez v1, :cond_40

    .line 980
    :cond_14
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Sound.ExtraSound.CallConnectTone"

    invoke-virtual {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 981
    if-eqz v1, :cond_4

    .line 984
    :try_start_7
    const-string v2, "Off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 986
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "call_conn_tone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 988
    const-string v0, "Settings.Main.Sound.ExtraSound.CallConnectTone"
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 812
    :cond_15
    const-string v2, "de"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 813
    const-string v2, "german"

    goto/16 :goto_1

    .line 814
    :cond_16
    const-string v2, "es"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 815
    const-string v2, "spanish"

    goto/16 :goto_1

    .line 816
    :cond_17
    const-string v2, "fr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 817
    const-string v2, "french"

    goto/16 :goto_1

    .line 818
    :cond_18
    const-string v2, "it"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 819
    const-string v2, "italian"

    goto/16 :goto_1

    .line 820
    :cond_19
    const-string v2, "nl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 821
    const-string v2, "dutch"

    goto/16 :goto_1

    .line 822
    :cond_1a
    const-string v2, "pt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 823
    const-string v2, "portuguese"

    goto/16 :goto_1

    .line 824
    :cond_1b
    const-string v2, "pl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 825
    const-string v2, "polish"

    goto/16 :goto_1

    .line 826
    :cond_1c
    const-string v2, "cs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 827
    const-string v2, "czech"

    goto/16 :goto_1

    .line 828
    :cond_1d
    const-string v2, "da"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 829
    const-string v2, "danish"

    goto/16 :goto_1

    .line 830
    :cond_1e
    const-string v2, "fi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 831
    const-string v2, "finnish"

    goto/16 :goto_1

    .line 832
    :cond_1f
    const-string v2, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 833
    const-string v2, "norwegian"

    goto/16 :goto_1

    .line 834
    :cond_20
    const-string v2, "sv"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 835
    const-string v2, "swedish"

    goto/16 :goto_1

    .line 836
    :cond_21
    const-string v2, "ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 837
    const-string v2, "romanian"

    goto/16 :goto_1

    .line 838
    :cond_22
    const-string v2, "sk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 839
    const-string v2, "slovakian"

    goto/16 :goto_1

    .line 840
    :cond_23
    const-string v2, "hu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 841
    const-string v2, "hungarian"

    goto/16 :goto_1

    .line 842
    :cond_24
    const-string v2, "sr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 843
    const-string v2, "serbian"

    goto/16 :goto_1

    .line 844
    :cond_25
    const-string v2, "el"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 845
    const-string v2, "greek"

    goto/16 :goto_1

    .line 846
    :cond_26
    const-string v2, "sq"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 847
    const-string v2, "albanian"

    goto/16 :goto_1

    .line 848
    :cond_27
    const-string v2, "ga"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 849
    const-string v2, "irish"

    goto/16 :goto_1

    .line 850
    :cond_28
    const-string v2, "mk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 851
    const-string v2, "macedonian"

    goto/16 :goto_1

    .line 852
    :cond_29
    const-string v2, "mt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 853
    const-string v2, "maltese"

    goto/16 :goto_1

    .line 854
    :cond_2a
    const-string v2, "tr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 855
    const-string v2, "turkish"

    goto/16 :goto_1

    .line 856
    :cond_2b
    const-string v2, "sl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 857
    const-string v2, "slovenian"

    goto/16 :goto_1

    .line 858
    :cond_2c
    const-string v2, "is"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 859
    const-string v2, "icelandic"

    goto/16 :goto_1

    .line 860
    :cond_2d
    const-string v2, "hr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 861
    const-string v2, "croatian"

    goto/16 :goto_1

    .line 862
    :cond_2e
    const-string v2, "ru"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 863
    const-string v2, "russian"

    goto/16 :goto_1

    .line 864
    :cond_2f
    const-string v2, "bg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 865
    const-string v2, "bulgarian"

    goto/16 :goto_1

    .line 866
    :cond_30
    const-string v2, "et"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 867
    const-string v2, "estonian"

    goto/16 :goto_1

    .line 868
    :cond_31
    const-string v2, "lv"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 869
    const-string v2, "latvian"

    goto/16 :goto_1

    .line 870
    :cond_32
    const-string v2, "lt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 871
    const-string v2, "lithuanian"

    goto/16 :goto_1

    .line 872
    :cond_33
    const-string v2, "uk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 873
    const-string v2, "ukrainian"

    goto/16 :goto_1

    .line 874
    :cond_34
    const-string v2, "ko"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 875
    const-string v2, "korean"

    goto/16 :goto_1

    .line 876
    :cond_35
    const-string v2, "ja"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 877
    const-string v2, "Japanese"

    goto/16 :goto_1

    .line 878
    :cond_36
    const-string v2, "kk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 879
    const-string v2, "kazakh"

    goto/16 :goto_1

    .line 880
    :cond_37
    const-string v2, "ur"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 881
    const-string v2, "urdu"

    goto/16 :goto_1

    .line 882
    :cond_38
    const-string v2, "ar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 883
    const-string v2, "arabic"

    goto/16 :goto_1

    .line 884
    :cond_39
    const-string v2, "fa"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 885
    const-string v2, "farsi"

    goto/16 :goto_1

    .line 887
    :cond_3a
    const-string v2, "CSCSettings"

    const-string v2, "Un-supported Language. Do nothing."

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto/16 :goto_1

    .line 896
    :cond_3b
    const-string v0, "Settings.Main.Phone.DefLanguage"

    goto/16 :goto_0

    .line 911
    :cond_3c
    :try_start_8
    const-string v0, "SettingsData.AudibleTouchTones"

    goto/16 :goto_0

    .line 915
    :cond_3d
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "dtmf_tone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_12

    .line 917
    const-string v0, "SettingsData.AudibleTouchTones"
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 919
    :catch_2
    move-exception v0

    .line 920
    const-string v1, "CSCSettings"

    const-string v1, "to get (Settings.System.DTMF_TONE_WHEN_DIALING) failed"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    const-string v0, "SettingsData.AudibleTouchTones"

    goto/16 :goto_0

    .line 934
    :cond_3e
    :try_start_9
    const-string v0, "SettingsData.AudibleSelection"

    goto/16 :goto_0

    .line 938
    :cond_3f
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_13

    .line 940
    const-string v0, "SettingsData.AudibleSelection"
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 942
    :catch_3
    move-exception v0

    .line 943
    const-string v1, "CSCSettings"

    const-string v1, "to get (Settings.System.SOUND_EFFECTS_ENABLED) failed"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    const-string v0, "SettingsData.AudibleSelection"

    goto/16 :goto_0

    .line 957
    :cond_40
    :try_start_a
    const-string v0, "SettingsData.WifiSleepPolicy"

    goto/16 :goto_0

    .line 959
    :cond_41
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 961
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "wifi_sleep_policy"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_14

    .line 963
    const-string v0, "SettingsData.WifiSleepPolicy"

    goto/16 :goto_0

    .line 966
    :cond_42
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "wifi_sleep_policy"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    .line 968
    const-string v0, "SettingsData.WifiSleepPolicy"
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 971
    :catch_4
    move-exception v0

    .line 972
    const-string v1, "CSCSettings"

    const-string v1, "to get (Settings.System.DTMF_TONE_WHEN_DIALING) failed"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 973
    const-string v0, "SettingsData.AudibleTouchTones"

    goto/16 :goto_0

    .line 992
    :cond_43
    :try_start_b
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "call_conn_tone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_4

    .line 994
    const-string v0, "Settings.Main.Sound.ExtraSound.CallConnectTone"
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 996
    :catch_5
    move-exception v0

    .line 997
    const-string v1, "CSCSettings"

    const-string v1, "to get (call_conn_tone) failed"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    const-string v0, "Settings.Main.Sound.ExtraSound.CallConnectTone"

    goto/16 :goto_0
.end method

.method public getTitleOfBinaryDefaultTone(I)Ljava/lang/String;
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v9, "CSCSettings"

    .line 641
    const-string v0, "CSCSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTitleOfBinaryDefaultTone : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v0, Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 650
    if-ne p1, v11, :cond_0

    .line 651
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 657
    :goto_0
    const-string v1, "CSCSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.config.* : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {v0, p1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 661
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 663
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move v8, v10

    .line 666
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 667
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 673
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 674
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 679
    const-string v2, "Ringtone endsWith (position): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 681
    const-string v2, "CSCSettings"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 689
    :goto_2
    const-string v1, "CSCSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default tone\'s title found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_3
    return-object v0

    .line 652
    :cond_0
    if-ne p1, v12, :cond_1

    .line 653
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto/16 :goto_0

    :cond_1
    move-object v0, v3

    .line 655
    goto :goto_3

    .line 685
    :cond_2
    add-int/lit8 v0, v8, 0x1

    .line 686
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move v8, v0

    .line 687
    goto/16 :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method

.method public update()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "PREF_SD_NOTIFICATION_SET"

    const-string v6, "CSCSettings"

    .line 125
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscSettings;->isSelectiveReset()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const-string v3, "CSCSettings"

    const-string v3, "Setting Language (only for selective reset)"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscSettings;->updateLanguage()V

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 133
    const-string v3, "CSCSettings"

    const-string v3, "Setting Date format"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 137
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ddmmyyyy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 138
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "date_format"

    const-string v5, "dd-MM-yyyy"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    :cond_1
    :goto_0
    const-string v3, "CSCSettings"

    const-string v3, "Setting time format"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Phone.DateTimeFormat.TimeFormat"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 155
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Phone.DateTimeFormat.TimeFormat"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "24h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 156
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "time_12_24"

    const-string v5, "24"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 168
    :cond_2
    :goto_1
    const-string v3, "CSCSettings"

    const-string v3, "Setting Call end tone"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Sound.ExtraSound.CallEndTone"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 172
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Sound.ExtraSound.CallEndTone"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "On"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 173
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "call_end_tone"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    :cond_3
    :goto_2
    const-string v3, "CSCSettings"

    const-string v3, "Setting Alert on call"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Phone.AlertOnCall"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 188
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Phone.AlertOnCall"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "On"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 189
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "alertoncall_mode"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "PREF_RINGTONE_SET"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 202
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "PREF_NOTIFICATION_SET"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 204
    invoke-virtual {p0, v8}, Lcom/samsung/sec/android/application/csc/CscSettings;->updateRingtones(I)V

    .line 205
    invoke-virtual {p0, v10}, Lcom/samsung/sec/android/application/csc/CscSettings;->updateRingtones(I)V

    .line 210
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 213
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "PREF_SD_NOTIFICATION_SET"

    invoke-interface {v3, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 214
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "SettingsData.SDNotification"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 216
    const-string v3, "CSCSettings"

    const-string v3, "SD Notification found"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 218
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "PREF_SD_NOTIFICATION_SET"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 219
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "SettingsData.SDNotification"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 221
    const-string v3, "CSCSettings"

    const-string v3, "SD Notification off"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mMountService:Landroid/os/storage/IMountService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->setPlayNotificationSounds(Z)V

    .line 225
    const-string v3, "CSCSettings"

    const-string v4, "SD Notification set false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "PREF_SD_NOTIFICATION_SET"

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_4
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    :goto_5
    const-string v3, "CSCSettings"

    const-string v3, "Setting Audible touch tones"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "SettingsData.AudibleTouchTones"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 259
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "SettingsData.AudibleTouchTones"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 260
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    :goto_6
    const-string v3, "CSCSettings"

    const-string v3, "Setting Audible selection"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "SettingsData.AudibleSelection"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 271
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "SettingsData.AudibleSelection"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 272
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "sound_effects_enabled"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    :goto_7
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "SettingsData.WifiSleepPolicy"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 282
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "SettingsData.WifiSleepPolicy"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, mPolicy:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 284
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "wifi_sleep_policy"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    .end local v2           #mPolicy:Ljava/lang/String;
    :goto_8
    const-string v3, "CSCSettings"

    const-string v3, "Setting Call connect tone"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Sound.ExtraSound.CallConnectTone"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 299
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Sound.ExtraSound.CallConnectTone"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "On"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 300
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "call_conn_tone"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    :cond_5
    :goto_9
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-direct {v0, p0, v3, v4}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;-><init>(Lcom/samsung/sec/android/application/csc/CscSettings;Landroid/content/Context;Lcom/samsung/sec/android/application/csc/CscParser;)V

    .line 312
    .local v0, addSettings:Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->RingerVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 313
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->NotificationVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 314
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AlarmVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 315
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->MediaVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 316
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->SystemVolume:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 317
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->PhoneVibrate:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 318
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->LockScreenSound:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 319
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->HapticFeedback:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 320
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->Orientation:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 321
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->Brightness:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 322
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->BrightnessAutomatic:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 323
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->ScreenTimeOut:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 324
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->PowerSavingMode:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 325
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->LocationProvidersAllowed:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 326
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->ShowPassword:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 327
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->UnknownSources:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 328
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->StayAwake:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 329
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AllowMockLocations:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 330
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->SamsungAppsNotification:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 331
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->InputMethod:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 332
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->PowerButtonEndsCall:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 333
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->AutoTimeUpdate:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 334
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->Use24HourFormat:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 335
    sget-object v3, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->UsbSettings:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 337
    return-void

    .line 139
    .end local v0           #addSettings:Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;
    :cond_6
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mmddyyyy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 140
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "date_format"

    const-string v5, "MM-dd-yyyy"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 141
    :cond_7
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "yyyymmdd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "date_format"

    const-string v5, "yyyy-MM-dd"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 147
    :cond_8
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "date_format"

    const-string v5, "dd-MM-yyyy"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    const-string v3, "CSCSettings"

    const-string v3, "Date format not found"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 157
    :cond_9
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Phone.DateTimeFormat.TimeFormat"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "12h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "time_12_24"

    const-string v5, "12"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 163
    :cond_a
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "time_12_24"

    const-string v5, "24"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    const-string v3, "CSCSettings"

    const-string v3, "Time format not found"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 174
    :cond_b
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Sound.ExtraSound.CallEndTone"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "call_end_tone"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 180
    :cond_c
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "call_end_tone"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    const-string v3, "CSCSettings"

    const-string v3, "Call end tone not found"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 190
    :cond_d
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Phone.AlertOnCall"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "alertoncall_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 196
    :cond_e
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "alertoncall_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    const-string v3, "CSCSettings"

    const-string v3, "Alert on call not found"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 227
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 228
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "CSCSettings"

    const-string v3, "SD Notification set error"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "PREF_SD_NOTIFICATION_SET"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 232
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_f
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "SettingsData.SDNotification"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 234
    const-string v3, "CSCSettings"

    const-string v3, "SD Notification on"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 237
    :try_start_1
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mMountService:Landroid/os/storage/IMountService;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->setPlayNotificationSounds(Z)V

    .line 238
    const-string v3, "CSCSettings"

    const-string v4, "SD Notification set true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "PREF_SD_NOTIFICATION_SET"

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 240
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 241
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "CSCSettings"

    const-string v3, "SD Notification set error"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "PREF_SD_NOTIFICATION_SET"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 247
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_10
    const-string v3, "CSCSettings"

    const-string v3, "SD Notification set error"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "PREF_SD_NOTIFICATION_SET"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 253
    :cond_11
    const-string v3, "CSCSettings"

    const-string v3, "SD Notification not found"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 262
    :cond_12
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 265
    :cond_13
    const-string v3, "CSCSettings"

    const-string v3, "Audible touch tones not found"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 274
    :cond_14
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "sound_effects_enabled"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 277
    :cond_15
    const-string v3, "CSCSettings"

    const-string v3, "Audible selection not found"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 285
    .restart local v2       #mPolicy:Ljava/lang/String;
    :cond_16
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 286
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "wifi_sleep_policy"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 288
    :cond_17
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "wifi_sleep_policy"

    invoke-static {v3, v4, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 291
    .end local v2           #mPolicy:Ljava/lang/String;
    :cond_18
    const-string v3, "CSCSettings"

    const-string v3, "Wifi Sleep Policy not found"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 301
    :cond_19
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Settings.Main.Sound.ExtraSound.CallConnectTone"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 302
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "call_conn_tone"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 305
    :cond_1a
    const-string v3, "CSCSettings"

    const-string v3, "Call connect tone not found"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method public updateLanguage()V
    .locals 8

    .prologue
    const-string v0, ""

    const-string v6, "CSCSettings"

    .line 346
    const-string v0, ""

    .line 347
    const-string v0, ""

    .line 348
    const-string v0, ""

    .line 350
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 351
    const-string v0, "CSCSettings"

    const-string v0, "Setting Locale to PATH_LOCALE..."

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "Settings.Main.Phone.DefLanguage"

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    if-nez v0, :cond_0

    .line 357
    const-string v0, "CSCSettings"

    const-string v0, "No language to setup"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_0
    return-void

    .line 361
    :cond_0
    const-string v1, "english"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    const-string v1, "en"

    .line 363
    const-string v2, "VNZ"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    const-string v2, "NZ"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 486
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 487
    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 488
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mLocale:Ljava/util/Locale;

    .line 489
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mLocale:Ljava/util/Locale;

    iput-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 491
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 492
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_2
    const-string v3, "CSCSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting Locale to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_1
    const-string v2, "GB"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    .line 367
    :cond_2
    const-string v1, "german"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    const-string v1, "de"

    .line 369
    const-string v2, "DE"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    .line 370
    :cond_3
    const-string v1, "spanish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 371
    const-string v1, "es"

    .line 372
    const-string v2, "ES"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    .line 373
    :cond_4
    const-string v1, "french"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 374
    const-string v1, "fr"

    .line 375
    const-string v2, "FR"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 376
    :cond_5
    const-string v1, "italian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 377
    const-string v1, "it"

    .line 378
    const-string v2, "IT"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 379
    :cond_6
    const-string v1, "dutch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 380
    const-string v1, "nl"

    .line 381
    const-string v2, "NL"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 382
    :cond_7
    const-string v1, "portuguese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 383
    const-string v1, "pt"

    .line 384
    const-string v2, "PT"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 385
    :cond_8
    const-string v1, "polish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 386
    const-string v1, "pl"

    .line 387
    const-string v2, "PL"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 388
    :cond_9
    const-string v1, "czech"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 389
    const-string v1, "cs"

    .line 390
    const-string v2, "CZ"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 391
    :cond_a
    const-string v1, "danish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 392
    const-string v1, "da"

    .line 393
    const-string v2, "DK"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 394
    :cond_b
    const-string v1, "finnish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 395
    const-string v1, "fi"

    .line 396
    const-string v2, "FI"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 397
    :cond_c
    const-string v1, "norwegian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 398
    const-string v1, "no"

    .line 399
    const-string v2, "NO"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 400
    :cond_d
    const-string v1, "swedish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 401
    const-string v1, "sv"

    .line 402
    const-string v2, "SE"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 403
    :cond_e
    const-string v1, "romanian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 404
    const-string v1, "ro"

    .line 405
    const-string v2, "RO"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 406
    :cond_f
    const-string v1, "slovakian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 407
    const-string v1, "sk"

    .line 408
    const-string v2, "SK"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 409
    :cond_10
    const-string v1, "hungarian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 410
    const-string v1, "hu"

    .line 411
    const-string v2, "HU"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 412
    :cond_11
    const-string v1, "serbian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 413
    const-string v1, "sr"

    .line 414
    const-string v2, "RS"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 415
    :cond_12
    const-string v1, "greek"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 416
    const-string v1, "el"

    .line 417
    const-string v2, "GR"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 418
    :cond_13
    const-string v1, "albanian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 419
    const-string v1, "sq"

    .line 420
    const-string v2, "AL"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 421
    :cond_14
    const-string v1, "irish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 422
    const-string v1, "ga"

    .line 423
    const-string v2, "IE"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 424
    :cond_15
    const-string v1, "macedonian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 425
    const-string v1, "mk"

    .line 426
    const-string v2, "MK"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 427
    :cond_16
    const-string v1, "maltese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 428
    const-string v1, "mt"

    .line 429
    const-string v2, "MT"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 430
    :cond_17
    const-string v1, "turkish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 431
    const-string v1, "tr"

    .line 432
    const-string v2, "TR"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 433
    :cond_18
    const-string v1, "slovenian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 434
    const-string v1, "sl"

    .line 435
    const-string v2, "SI"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 436
    :cond_19
    const-string v1, "icelandic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 437
    const-string v1, "is"

    .line 438
    const-string v2, "IS"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 439
    :cond_1a
    const-string v1, "croatian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 440
    const-string v1, "hr"

    .line 441
    const-string v2, "HR"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 442
    :cond_1b
    const-string v1, "russian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 443
    const-string v1, "ru"

    .line 444
    const-string v2, "RU"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 445
    :cond_1c
    const-string v1, "japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 446
    const-string v1, "ja"

    .line 447
    const-string v2, "JP"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 448
    :cond_1d
    const-string v1, "ukrainian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 449
    const-string v1, "uk"

    .line 450
    const-string v2, "UA"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 451
    :cond_1e
    const-string v1, "kazakh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 452
    const-string v1, "kk"

    .line 453
    const-string v2, "KZ"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 454
    :cond_1f
    const-string v1, "bulgarian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 455
    const-string v1, "bg"

    .line 456
    const-string v2, "BG"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 457
    :cond_20
    const-string v1, "urdu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 458
    const-string v1, "ur"

    .line 459
    const-string v2, "PK"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 460
    :cond_21
    const-string v1, "arabic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 461
    const-string v1, "ar"

    .line 462
    const-string v2, "AE"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 463
    :cond_22
    const-string v1, "farsi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 464
    const-string v1, "fa"

    .line 465
    const-string v2, "FA"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 467
    :cond_23
    const-string v1, "thai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 468
    const-string v1, "th"

    .line 469
    const-string v2, "TH"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 470
    :cond_24
    const-string v1, "vietnamese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 471
    const-string v1, "vi"

    .line 472
    const-string v2, "VN"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 473
    :cond_25
    const-string v1, "bahasa malaysia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 474
    const-string v1, "ms"

    .line 475
    const-string v2, "MY"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 476
    :cond_26
    const-string v1, "indonesia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 477
    const-string v1, "in"

    .line 478
    const-string v2, "ID"

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1

    .line 481
    :cond_27
    const-string v0, "CSCSettings"

    const-string v0, "Un-supported Language. Do nothing."

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 493
    :catch_0
    move-exception v3

    .line 494
    const-string v3, "CSCSettings"

    const-string v3, "Can\'t setup language : RemoteException!"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public updateRingtones(I)V
    .locals 13
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const-string v12, "PREF_NOTIFICATION_SET"

    const-string v8, "CSCSettings"

    .line 503
    new-instance v0, Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 504
    const/4 v1, 0x0

    .line 506
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 508
    const-string v2, "CSCSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting Ringtones (type) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    if-ne p1, v9, :cond_7

    .line 510
    invoke-virtual {v0, v9}, Landroid/media/RingtoneManager;->setType(I)V

    .line 512
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Sound.RingTone.src"

    invoke-virtual {v1, v2, v11, v9}, Lcom/samsung/sec/android/application/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 513
    const-string v2, "CSCSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. Tag_Str: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscSettings;->isSelectiveReset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 534
    if-nez v1, :cond_1

    .line 536
    invoke-virtual {p0, p1}, Lcom/samsung/sec/android/application/csc/CscSettings;->getTitleOfBinaryDefaultTone(I)Ljava/lang/String;

    move-result-object v1

    .line 538
    :cond_1
    const-string v2, "CSCSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. Tag_Str: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_2
    if-eqz v1, :cond_6

    .line 545
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 547
    if-ne p1, v9, :cond_8

    .line 548
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "PREF_RINGTONE_SET"

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 550
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "PREF_RINGTONE_SET"

    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 551
    const-string v2, "CSCSettings"

    const-string v2, "CSC Ringtone found: PREF_RINGTONE_SET(1)"

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 561
    const-string v3, "title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 562
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v4, v11

    .line 565
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_4

    .line 566
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 567
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 568
    const-string v7, "Ringtone title : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    const-string v7, "CSCSettings"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 572
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 573
    const-string v3, "Ringtone equalsIgnoreCase (position): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 575
    const-string v3, "CSCSettings"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v4, v1, :cond_e

    .line 583
    :cond_5
    const-string v0, "CSCSettings"

    const-string v0, "No matched ringtones"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-ne p1, v9, :cond_c

    .line 585
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_RINGTONE_SET"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_a

    .line 587
    const-string v0, "CSCSettings"

    const-string v0, "Aleady failed. The Ringtone is not exist"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 589
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 636
    :cond_6
    :goto_3
    return-void

    .line 519
    :cond_7
    if-ne p1, v10, :cond_0

    .line 520
    invoke-virtual {v0, v10}, Landroid/media/RingtoneManager;->setType(I)V

    .line 522
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.Main.Sound.MessageTone.src"

    invoke-virtual {v1, v2, v11, v9}, Lcom/samsung/sec/android/application/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 523
    const-string v2, "CSCSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. Tag_Str: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 553
    :cond_8
    if-ne p1, v10, :cond_3

    .line 554
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "PREF_NOTIFICATION_SET"

    invoke-interface {v2, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 556
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "PREF_NOTIFICATION_SET"

    invoke-interface {v2, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 557
    const-string v2, "CSCSettings"

    const-string v2, "CSC Notification found: PREF_NOTIFICATION_SET(1)"

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 578
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 579
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 592
    :cond_a
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_RINGTONE_SET"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 593
    const-string v0, "CSCSettings"

    const-string v0, "Ringtone not found. Media DB was not prepared: PREF_RINGTONE_SET(2)"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 606
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 594
    :cond_c
    if-ne p1, v10, :cond_b

    .line 595
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_NOTIFICATION_SET"

    invoke-interface {v0, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_d

    .line 597
    const-string v0, "CSCSettings"

    const-string v0, "Aleady failed. Notification is not exist"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 599
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 602
    :cond_d
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_NOTIFICATION_SET"

    invoke-interface {v0, v12, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 603
    const-string v0, "CSCSettings"

    const-string v0, "Notification not found. Media DB was not prepared: PREF_NOTIFICATION_SET(2)"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 609
    :cond_e
    invoke-virtual {v0, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 610
    const-string v1, "CSCSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ringtone uri : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-eqz v0, :cond_f

    .line 614
    if-ne p1, v9, :cond_10

    .line 615
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 616
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_RINGTONE_SET"

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 617
    const-string v0, "CSCSettings"

    const-string v0, "CSC Ringtone was set : PREF_RINGTONE_SET(3)"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 630
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 618
    :cond_10
    if-ne p1, v10, :cond_f

    .line 620
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.SharedPreferenceReceiver"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mContext:Landroid/content/Context;

    const-string v4, "TYPE"

    const-string v5, "STRING"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "KEY"

    const-string v5, "pref_key_ringtone"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "VALUE"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 623
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "DEBUG_RINGTONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CscSettubgs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 625
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_NOTIFICATION_SET"

    const/4 v1, 0x3

    invoke-interface {v0, v12, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 626
    const-string v0, "CSCSettings"

    const-string v0, "CSC Notification was set : PREF_NOTIFICATION_SET(3)"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 623
    :cond_11
    const-string v0, ""

    goto :goto_6
.end method
