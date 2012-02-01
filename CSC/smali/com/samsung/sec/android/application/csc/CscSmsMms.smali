.class public Lcom/samsung/sec/android/application/csc/CscSmsMms;
.super Ljava/lang/Object;
.source "CscSmsMms.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# static fields
.field static final KEY_CSC:[Ljava/lang/String;

.field static final KEY_PRFS:[Ljava/lang/String;


# instance fields
.field private final CSC_FILE:Ljava/lang/String;

.field private final KEY_CSC_MMS_CELL_BROADCAST_ACTIVATION:Ljava/lang/String;

.field private final KEY_CSC_SMS_THRESHOLD_TYPE:Ljava/lang/String;

.field private final OTHERS_FILE:Ljava/lang/String;

.field private ct:Landroid/content/Context;

.field private sPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Settings.Messages.SMS.DeliveryReport"

    aput-object v1, v0, v3

    const-string v1, "Settings.Messages.SMS.CharSupport"

    aput-object v1, v0, v4

    const-string v1, "Settings.Messages.MMS.MmsSending.ReqDeliveryRep"

    aput-object v1, v0, v5

    const-string v1, "Settings.Messages.MMS.MmsSending.ReqReadRep"

    aput-object v1, v0, v6

    const-string v1, "Settings.Messages.MMS.MmsSending.CreationMode"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Settings.Messages.MMS.MmsReceiving.Home"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Settings.Messages.MMS.MmsReceiving.Roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Settings.Messages.SMS.MsgTypeThreshold.ThresholdValue"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MMS.repeat_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MMS.vibrate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MMS.enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MMS.ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MMS.max_recipient"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MMS.auto_delete"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MMS.mms_delete_limit"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MMS.sms_delete_limit"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Settings.Message.SMS.CellBroadcast"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    .line 41
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "csc_pref_key_sms_delivery_reports"

    aput-object v1, v0, v3

    const-string v1, "csc_pref_key_sms_input_mode"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_mms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_mms_read_reports"

    aput-object v1, v0, v6

    const-string v1, "csc_pref_key_mms_creation_mode"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "csc_pref_key_mms_auto_retrieval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "csc_pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "csc_pref_key_threshold"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "csc_pref_key_repeat_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "csc_pref_key_vibrate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "csc_pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "csc_pref_key_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "csc_pref_key_max_recipient"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "csc_pref_key_auto_delete"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "csc_pref_key_mms_delete_limit"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "csc_pref_key_sms_delete_limit"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "csc_pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->CSC_FILE:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->OTHERS_FILE:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    .line 18
    const-string v0, "Settings.Messages.SMS.MsgTypeThreshold.ThresholdType"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC_SMS_THRESHOLD_TYPE:Ljava/lang/String;

    .line 19
    const-string v0, "Settings.Message.SMS.CellBroadcast"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC_MMS_CELL_BROADCAST_ACTIVATION:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public compare()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v5, "on"

    const-string v5, "off"

    const-string v5, "_"

    .line 248
    const/4 v4, 0x0

    .line 249
    .local v4, valueStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 250
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 251
    .local v2, mParser:Lcom/samsung/sec/android/application/csc/CscParser;
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->CSC_FILE:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v2

    .line 254
    :try_start_0
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.mms"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 255
    const-string v5, "com.android.mms_preferences"

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    .line 257
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    if-eqz v4, :cond_0

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 359
    :goto_0
    return-object v5

    .line 260
    :cond_0
    if-eqz v4, :cond_1

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 263
    :cond_1
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    if-eqz v4, :cond_2

    const-string v5, "gsmalpha"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "default"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "GSM alphabet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 266
    :cond_2
    if-eqz v4, :cond_3

    const-string v5, "automatic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "default"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Automatic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 268
    :cond_3
    if-eqz v4, :cond_4

    const-string v5, "unicode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "default"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Unicode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 271
    :cond_4
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    if-eqz v4, :cond_5

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 274
    :cond_5
    if-eqz v4, :cond_6

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 277
    :cond_6
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    if-eqz v4, :cond_7

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_7

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 280
    :cond_7
    if-eqz v4, :cond_8

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 283
    :cond_8
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 284
    if-eqz v4, :cond_9

    const-string v5, "free"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const-string v7, "default"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "free"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 286
    :cond_9
    if-eqz v4, :cond_a

    const-string v5, "warning"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const-string v7, "default"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "warning"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 288
    :cond_a
    if-eqz v4, :cond_b

    const-string v5, "restricted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const-string v7, "default"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "restricted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 291
    :cond_b
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 292
    if-eqz v4, :cond_c

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_c

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 294
    :cond_c
    if-eqz v4, :cond_d

    const-string v5, "manual"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 297
    :cond_d
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    if-eqz v4, :cond_e

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_e

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 300
    :cond_e
    if-eqz v4, :cond_f

    const-string v5, "manual"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 303
    :cond_f
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    const-string v5, "Settings.Messages.SMS.MsgTypeThreshold.ThresholdType"

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, thresholdType:Ljava/lang/String;
    if-eqz v3, :cond_10

    const-string v5, "pagecount"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 306
    if-eqz v4, :cond_10

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-eq v5, v6, :cond_10

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 310
    :cond_10
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v6, 0x10

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    if-eqz v4, :cond_11

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0x10

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_11

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0x10

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 313
    :cond_11
    if-eqz v4, :cond_12

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0x10

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0x10

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 316
    :cond_12
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->OTHERS_FILE:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v2

    .line 318
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    if-eqz v4, :cond_13

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_13

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 321
    :cond_13
    if-eqz v4, :cond_14

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 324
    :cond_14
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    if-eqz v4, :cond_15

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_15

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 327
    :cond_15
    if-eqz v4, :cond_16

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 330
    :cond_16
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    if-eqz v4, :cond_17

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0xa

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_17

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0xa

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 333
    :cond_17
    if-eqz v4, :cond_18

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0xa

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0xa

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 336
    :cond_18
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 337
    if-eqz v4, :cond_19

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v6, v6, v7

    const-string v7, "default"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 340
    :cond_19
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    if-eqz v4, :cond_1a

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0xc

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_1a

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0xc

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 344
    :cond_1a
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v6, 0xd

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    if-eqz v4, :cond_1b

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0xd

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0xd

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 347
    :cond_1b
    if-eqz v4, :cond_1c

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0xd

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0xd

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 350
    :cond_1c
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v6, 0xe

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 351
    if-eqz v4, :cond_1d

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0xe

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_1d

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0xe

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 353
    :cond_1d
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    if-eqz v4, :cond_1e

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_1e

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 357
    :cond_1e
    const-string v5, "NOERROR"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 358
    .end local v3           #thresholdType:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 359
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NOCSC"

    goto/16 :goto_0
.end method

.method public cutomerUpdate()V
    .locals 10

    .prologue
    const-string v5, "BOOLEAN"

    const-string v5, "VALUE"

    const-string v5, "TYPE"

    const-string v5, "KEY"

    .line 71
    const/4 v4, 0x0

    .line 72
    .local v4, valueStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 73
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->CSC_FILE:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v2

    .line 76
    .local v2, mParser:Lcom/samsung/sec/android/application/csc/CscParser;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.mms"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 77
    const-string v5, "com.android.mms_preferences"

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.mms.transaction.SharedPreferenceReceiver"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, intent:Landroid/content/Intent;
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    if-nez v4, :cond_0

    const-string v4, "off"

    .line 84
    :cond_0
    if-eqz v4, :cond_10

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 85
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    :cond_1
    :goto_0
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    if-nez v4, :cond_2

    const-string v4, "gsmalpha"

    .line 93
    :cond_2
    if-eqz v4, :cond_11

    const-string v5, "gsmalpha"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 94
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "STRING"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const-string v8, "GSM alphabet"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    :cond_3
    :goto_1
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    if-nez v4, :cond_4

    const-string v4, "off"

    .line 104
    :cond_4
    if-eqz v4, :cond_13

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 105
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    :cond_5
    :goto_2
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    if-nez v4, :cond_6

    const-string v4, "off"

    .line 113
    :cond_6
    if-eqz v4, :cond_14

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 114
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    :cond_7
    :goto_3
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    if-nez v4, :cond_8

    const-string v4, "free"

    .line 122
    :cond_8
    if-eqz v4, :cond_15

    const-string v5, "restricted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 123
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "STRING"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const-string v8, "restricted"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    :cond_9
    :goto_4
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    if-nez v4, :cond_a

    const-string v4, "auto"

    .line 133
    :cond_a
    if-eqz v4, :cond_17

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 134
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    :cond_b
    :goto_5
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    if-nez v4, :cond_c

    const-string v4, "manual"

    .line 142
    :cond_c
    if-eqz v4, :cond_18

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 143
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    :cond_d
    :goto_6
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    if-eqz v4, :cond_e

    .line 150
    const-string v5, "Settings.Messages.SMS.MsgTypeThreshold.ThresholdType"

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, thresholdType:Ljava/lang/String;
    if-eqz v3, :cond_e

    const-string v5, "pagecount"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 152
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "INT"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    .end local v3           #thresholdType:Ljava/lang/String;
    :cond_e
    sget-object v5, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v6, 0x10

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    if-eqz v4, :cond_19

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 157
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v9, 0x10

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    .end local v1           #intent:Landroid/content/Intent;
    :cond_f
    :goto_7
    return-void

    .line 86
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_10
    if-eqz v4, :cond_1

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 160
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    goto :goto_7

    .line 95
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_11
    if-eqz v4, :cond_12

    const-string v5, "automatic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 96
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "STRING"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const-string v8, "Automatic"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 97
    :cond_12
    if-eqz v4, :cond_3

    const-string v5, "unicode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "STRING"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const-string v8, "Unicode"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 106
    :cond_13
    if-eqz v4, :cond_5

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 107
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 115
    :cond_14
    if-eqz v4, :cond_7

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 116
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 124
    :cond_15
    if-eqz v4, :cond_16

    const-string v5, "warning"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 125
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "STRING"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const-string v8, "warning"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 126
    :cond_16
    if-eqz v4, :cond_9

    const-string v5, "free"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 127
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "STRING"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const-string v8, "free"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 135
    :cond_17
    if-eqz v4, :cond_b

    const-string v5, "manual"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 136
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 144
    :cond_18
    if-eqz v4, :cond_d

    const-string v5, "manual"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 145
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 158
    :cond_19
    if-eqz v4, :cond_f

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 159
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v6, "TYPE"

    const-string v7, "BOOLEAN"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "KEY"

    sget-object v8, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v9, 0x10

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "VALUE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7
.end method

.method public othersUpdate()V
    .locals 9

    .prologue
    const-string v4, "BOOLEAN"

    const-string v4, "VALUE"

    const-string v4, "TYPE"

    const-string v4, "KEY"

    .line 167
    const/4 v3, 0x0

    .line 168
    .local v3, valueStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 169
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->OTHERS_FILE:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v2

    .line 172
    .local v2, mParser:Lcom/samsung/sec/android/application/csc/CscParser;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.mms"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 174
    const-string v4, "com.android.mms_preferences"

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->sPrefs:Landroid/content/SharedPreferences;

    .line 175
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.SharedPreferenceReceiver"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    if-nez v3, :cond_0

    const-string v3, "off"

    .line 181
    :cond_0
    if-eqz v3, :cond_e

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 182
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "BOOLEAN"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    :cond_1
    :goto_0
    sget-object v4, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    if-nez v3, :cond_2

    const-string v3, "off"

    .line 190
    :cond_2
    if-eqz v3, :cond_f

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 191
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "BOOLEAN"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    :cond_3
    :goto_1
    sget-object v4, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    if-nez v3, :cond_4

    const-string v3, "on"

    .line 199
    :cond_4
    if-eqz v3, :cond_10

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 200
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "BOOLEAN"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    :cond_5
    :goto_2
    sget-object v4, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    if-nez v3, :cond_6

    const-string v3, "Default ringtone"

    .line 208
    :cond_6
    if-eqz v3, :cond_7

    .line 209
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "STRING"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0xb

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    :cond_7
    sget-object v4, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    if-nez v3, :cond_8

    const-string v3, "10"

    .line 215
    :cond_8
    if-eqz v3, :cond_9

    .line 216
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "INT"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0xc

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    :cond_9
    sget-object v4, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v5, 0xd

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    if-nez v3, :cond_a

    const-string v3, "on"

    .line 222
    :cond_a
    if-eqz v3, :cond_11

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 223
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "BOOLEAN"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0xd

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    :cond_b
    :goto_3
    sget-object v4, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v5, 0xe

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    if-eqz v3, :cond_c

    .line 230
    const-string v4, "CscSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms_delete_limit :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "INT"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0xe

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    :cond_c
    sget-object v4, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    if-eqz v3, :cond_d

    .line 237
    const-string v4, "CscSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_delete_limit :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "INT"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0xf

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    .end local v1           #intent:Landroid/content/Intent;
    :cond_d
    :goto_4
    return-void

    .line 183
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_e
    if-eqz v3, :cond_1

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "BOOLEAN"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 241
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_4

    .line 192
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_f
    if-eqz v3, :cond_3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "BOOLEAN"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 201
    :cond_10
    if-eqz v3, :cond_5

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 202
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "BOOLEAN"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 224
    :cond_11
    if-eqz v3, :cond_b

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 225
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSmsMms;->ct:Landroid/content/Context;

    const-string v5, "TYPE"

    const-string v6, "BOOLEAN"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY"

    sget-object v7, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_PRFS:[Ljava/lang/String;

    const/16 v8, 0xd

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "VALUE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3
.end method

.method public update()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscSmsMms;->cutomerUpdate()V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscSmsMms;->othersUpdate()V

    .line 68
    return-void
.end method
