.class public Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;
.super Ljava/lang/Object;
.source "CscSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdditionalSettings"
.end annotation


# instance fields
.field public final NAME:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public final URI_SECURE:Landroid/net/Uri;

.field public final URI_SYSTEM:Landroid/net/Uri;

.field public final VALUE:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mParser:Lcom/samsung/sec/android/application/csc/CscParser;

.field protected mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/android/application/csc/CscSettings;Landroid/content/Context;Lcom/samsung/sec/android/application/csc/CscParser;)V
    .locals 2
    .parameter
    .parameter "_context"
    .parameter "_parser"

    .prologue
    const/4 v1, 0x0

    .line 1053
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->this$0:Lcom/samsung/sec/android/application/csc/CscSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    const-string v0, "Add CSCSetting"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->TAG:Ljava/lang/String;

    .line 1041
    const-string v0, "name"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->NAME:Ljava/lang/String;

    .line 1042
    const-string v0, "value"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->VALUE:Ljava/lang/String;

    .line 1043
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    .line 1044
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SECURE:Landroid/net/Uri;

    .line 1046
    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mContext:Landroid/content/Context;

    .line 1047
    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mResolver:Landroid/content/ContentResolver;

    .line 1048
    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 1054
    iput-object p2, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mContext:Landroid/content/Context;

    .line 1055
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mResolver:Landroid/content/ContentResolver;

    .line 1056
    iput-object p3, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 1057
    return-void
.end method

.method private selectUsb(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 19
    .parameter "_resolver"
    .parameter "usbType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    if-nez p2, :cond_0

    .line 1206
    const-string v16, "Add CSCSetting"

    const-string v17, "usbType is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :goto_0
    return-void

    .line 1210
    :cond_0
    const-string v5, "usb_setting_mode"

    .line 1211
    .local v5, USB_SETTING_MODE:Ljava/lang/String;
    const-string v4, "/sys/class/sec/switch/UsbMenuSel"

    .line 1212
    .local v4, USBMENUSEL_PATH:Ljava/lang/String;
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v8, v0

    fill-array-data v8, :array_0

    .line 1213
    .local v8, kies:[B
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v9, v0

    fill-array-data v9, :array_1

    .line 1214
    .local v9, mtp:[B
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v13, v0

    fill-array-data v13, :array_2

    .line 1215
    .local v13, ums:[B
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v15, v0

    fill-array-data v15, :array_3

    .line 1216
    .local v15, vtp:[B
    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v6, v0

    fill-array-data v6, :array_4

    .line 1218
    .local v6, askon:[B
    const/4 v3, 0x0

    .line 1219
    .local v3, CurMcc:Ljava/lang/String;
    const-string v16, "gsm.sim.operator.numeric"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1222
    .local v10, numeric:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 1225
    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1228
    :cond_1
    const-string v16, "Add CSCSetting"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Simcard MCC is : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const-string v16, "ril.IMEI"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1231
    .local v12, strIMEI:Ljava/lang/String;
    if-nez v12, :cond_2

    .line 1233
    const-string v16, "Add CSCSetting"

    const-string v17, "Invalid IMEI. skip usb setting!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1236
    :cond_2
    const-string v16, "004999010640000"

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "000000000000000"

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1238
    :cond_3
    const-string v16, "Add CSCSetting"

    const-string v17, "Default IMEI. skip usb setting!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1242
    :cond_4
    const/4 v14, 0x0

    .line 1243
    .local v14, usbSettingPosition:I
    new-instance v11, Ljava/io/FileOutputStream;

    const-string v16, "/sys/class/sec/switch/UsbMenuSel"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v11, out:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v16, "KIES"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_6

    if-eqz v3, :cond_5

    const-string v16, "999"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    :cond_5
    if-eqz v3, :cond_8

    const-string v16, "001"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1247
    :cond_6
    invoke-virtual {v11, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 1248
    const/4 v14, 0x0

    .line 1267
    :cond_7
    :goto_1
    const-string v16, "usb_setting_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move v2, v14

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 1250
    :cond_8
    :try_start_1
    const-string v16, "MTP"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1251
    invoke-virtual {v11, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 1252
    const/4 v14, 0x1

    goto :goto_1

    .line 1254
    :cond_9
    const-string v16, "UMS"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1255
    invoke-virtual {v11, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 1256
    const/4 v14, 0x2

    goto :goto_1

    .line 1258
    :cond_a
    const-string v16, "VTP"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1259
    invoke-virtual {v11, v15}, Ljava/io/FileOutputStream;->write([B)V

    .line 1260
    const/4 v14, 0x3

    goto :goto_1

    .line 1262
    :cond_b
    const-string v16, "ASKON"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1263
    invoke-virtual {v11, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1264
    const/4 v14, 0x4

    goto :goto_1

    .line 1269
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .line 1270
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1273
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    throw v16

    .line 1212
    nop

    :array_0
    .array-data 0x1
        0x4bt
        0x49t
        0x45t
        0x53t
        0x0t
    .end array-data

    .line 1213
    nop

    :array_1
    .array-data 0x1
        0x4dt
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 1214
    :array_2
    .array-data 0x1
        0x55t
        0x4dt
        0x53t
        0x0t
    .end array-data

    .line 1215
    :array_3
    .array-data 0x1
        0x56t
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 1216
    :array_4
    .array-data 0x1
        0x41t
        0x53t
        0x4bt
        0x4ft
        0x4et
        0x0t
    .end array-data
.end method


# virtual methods
.method protected loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "_uri"
    .parameter "_name"
    .parameter "_dataPath"

    .prologue
    const-string v5, "Add CSCSetting"

    .line 1143
    const/4 v0, 0x0

    .line 1145
    .local v0, cscData:Ljava/lang/String;
    const-string v3, "Add CSCSetting"

    invoke-static {v5, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v3, p3}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1150
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1151
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const-string v3, "value"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1155
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1156
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Add CSCSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    const/4 v3, 0x0

    goto :goto_1

    .line 1161
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "Add CSCSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z
    .locals 4
    .parameter "_dataType"

    .prologue
    const/4 v3, 0x0

    .line 1061
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 1138
    :goto_0
    return v1

    .line 1064
    :cond_1
    const/4 v0, 0x0

    .line 1066
    .local v0, result:Z
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSettings$1;->$SwitchMap$com$samsung$sec$android$application$csc$CscSettings$DATA_TYPE:[I

    invoke-virtual {p1}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v1, v0

    .line 1138
    goto :goto_0

    .line 1068
    :pswitch_0
    const/4 v1, 0x2

    const-string v2, "SettingsData.RingerVolume"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadVolumeSetting(ILjava/lang/String;)Z

    move-result v0

    .line 1069
    goto :goto_1

    .line 1071
    :pswitch_1
    const/4 v1, 0x5

    const-string v2, "SettingsData.NotificationVolume"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadVolumeSetting(ILjava/lang/String;)Z

    move-result v0

    .line 1072
    goto :goto_1

    .line 1074
    :pswitch_2
    const/4 v1, 0x3

    const-string v2, "SettingsData.MediaVolume"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadVolumeSetting(ILjava/lang/String;)Z

    move-result v0

    .line 1075
    goto :goto_1

    .line 1077
    :pswitch_3
    const/4 v1, 0x1

    const-string v2, "SettingsData.SystemVolume"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadVolumeSetting(ILjava/lang/String;)Z

    move-result v0

    .line 1078
    goto :goto_1

    .line 1080
    :pswitch_4
    const-string v1, "SettingsData.PhoneVibrate"

    invoke-virtual {p0, v3, v1}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadVolumeSetting(ILjava/lang/String;)Z

    move-result v0

    .line 1081
    goto :goto_1

    .line 1083
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "sound_effects_enabled"

    const-string v3, "SettingsData.AudibleSelection"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1084
    goto :goto_1

    .line 1086
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "dtmf_tone"

    const-string v3, "SettingsData.AudibleTouchTones"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1087
    goto :goto_1

    .line 1089
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "haptic_feedback_enabled"

    const-string v3, "SettingsData.HapticFeedback"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1090
    goto :goto_1

    .line 1092
    :pswitch_8
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "accelerometer_rotation"

    const-string v3, "SettingsData.Orientation"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1093
    goto :goto_1

    .line 1095
    :pswitch_9
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "screen_brightness"

    const-string v3, "SettingsData.Brightness"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1096
    goto :goto_1

    .line 1098
    :pswitch_a
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "screen_brightness_mode"

    const-string v3, "SettingsData.BrightnessAutomatic"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1099
    goto :goto_1

    .line 1101
    :pswitch_b
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "screen_off_timeout"

    const-string v3, "SettingsData.ScreenTimeOut"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1102
    goto :goto_1

    .line 1104
    :pswitch_c
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "power_saving_mode"

    const-string v3, "SettingsData.PowerSavingMode"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1105
    goto :goto_1

    .line 1107
    :pswitch_d
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SECURE:Landroid/net/Uri;

    const-string v2, "location_providers_allowed"

    const-string v3, "SettingsData.LocationProvidersAllowed"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1108
    goto/16 :goto_1

    .line 1110
    :pswitch_e
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "show_password"

    const-string v3, "SettingsData.ShowPassword"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1111
    goto/16 :goto_1

    .line 1113
    :pswitch_f
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SECURE:Landroid/net/Uri;

    const-string v2, "install_non_market_apps"

    const-string v3, "SettingsData.UnknownSources"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1114
    goto/16 :goto_1

    .line 1116
    :pswitch_10
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "stay_on_while_plugged_in"

    const-string v3, "SettingsData.StayAwake"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1117
    goto/16 :goto_1

    .line 1119
    :pswitch_11
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SECURE:Landroid/net/Uri;

    const-string v2, "mock_location"

    const-string v3, "SettingsData.AllowMockLocations"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1120
    goto/16 :goto_1

    .line 1122
    :pswitch_12
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "una_setting"

    const-string v3, "SettingsData.SamsungAppsNotification"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1123
    goto/16 :goto_1

    .line 1125
    :pswitch_13
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SECURE:Landroid/net/Uri;

    const-string v2, "default_input_method"

    const-string v3, "SettingsData.InputMethod"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1126
    goto/16 :goto_1

    .line 1128
    :pswitch_14
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "auto_time"

    const-string v3, "SettingsData.AutoTimeUpdate"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1129
    goto/16 :goto_1

    .line 1131
    :pswitch_15
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "time_12_24"

    const-string v3, "SettingsData.Use24HourFormat"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1132
    goto/16 :goto_1

    .line 1134
    :pswitch_16
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadUsbSetting(Landroid/content/ContentResolver;Lcom/samsung/sec/android/application/csc/CscParser;)Z

    move-result v0

    goto/16 :goto_1

    .line 1066
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method protected loadUsbSetting(Landroid/content/ContentResolver;Lcom/samsung/sec/android/application/csc/CscParser;)Z
    .locals 6
    .parameter "_resolver"
    .parameter "_parser"

    .prologue
    const-string v5, "Add CSCSetting"

    .line 1185
    const-string v0, "SettingsData.UsbMode"

    .line 1186
    .local v0, DATA_PATH:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1188
    .local v2, value:Ljava/lang/String;
    const-string v3, "Add CSCSetting"

    const-string v3, "Setting UsbType"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :try_start_0
    const-string v3, "SettingsData.UsbMode"

    invoke-virtual {p2, v3}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1191
    invoke-direct {p0, p1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->selectUsb(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1199
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1193
    :cond_0
    const-string v3, "Add CSCSetting"

    const-string v4, "Usb type not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1194
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1195
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Add CSCSetting"

    const-string v3, "Exception in UsbMode"

    invoke-static {v5, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected loadVolumeSetting(ILjava/lang/String;)Z
    .locals 5
    .parameter "_volumeType"
    .parameter "_dataPath"

    .prologue
    const-string v4, "Add CSCSetting"

    .line 1168
    const/4 v1, 0x0

    .line 1170
    .local v1, cscData:Ljava/lang/String;
    const-string v2, "Add CSCSetting"

    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v2, p2}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1174
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1175
    .local v0, am:Landroid/media/AudioManager;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1180
    .end local v0           #am:Landroid/media/AudioManager;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1178
    :cond_0
    const-string v2, "Add CSCSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
