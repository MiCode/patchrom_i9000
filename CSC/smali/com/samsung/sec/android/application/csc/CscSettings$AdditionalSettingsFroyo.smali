.class public Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;
.super Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;
.source "CscSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdditionalSettingsFroyo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/android/application/csc/CscSettings;Landroid/content/Context;Lcom/samsung/sec/android/application/csc/CscParser;)V
    .locals 0
    .parameter
    .parameter "_context"
    .parameter "_parser"

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->this$0:Lcom/samsung/sec/android/application/csc/CscSettings;

    .line 1284
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;-><init>(Lcom/samsung/sec/android/application/csc/CscSettings;Landroid/content/Context;Lcom/samsung/sec/android/application/csc/CscParser;)V

    .line 1285
    return-void
.end method


# virtual methods
.method public loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z
    .locals 4
    .parameter "_dataType"

    .prologue
    .line 1289
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    if-nez v1, :cond_1

    .line 1290
    :cond_0
    const/4 v1, 0x0

    .line 1312
    :goto_0
    return v1

    .line 1292
    :cond_1
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->PhoneVibrate:Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;

    if-eq p1, v1, :cond_2

    .line 1293
    invoke-super {p0, p1}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->loadSettingValue(Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;)Z

    .line 1295
    :cond_2
    const/4 v0, 0x0

    .line 1297
    .local v0, result:Z
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSettings$1;->$SwitchMap$com$samsung$sec$android$application$csc$CscSettings$DATA_TYPE:[I

    invoke-virtual {p1}, Lcom/samsung/sec/android/application/csc/CscSettings$DATA_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move v1, v0

    .line 1312
    goto :goto_0

    .line 1299
    :sswitch_0
    const/4 v1, 0x4

    const-string v2, "SettingsData.AlarmVolume"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadVolumeSetting(ILjava/lang/String;)Z

    move-result v0

    .line 1300
    goto :goto_1

    .line 1302
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SYSTEM:Landroid/net/Uri;

    const-string v2, "lockscreen_sounds_enabled"

    const-string v3, "SettingsData.LockScreenSound"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1303
    goto :goto_1

    .line 1305
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->URI_SECURE:Landroid/net/Uri;

    const-string v2, "incall_power_button_behavior"

    const-string v3, "SettingsData.PowerButtonEndsCall"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadSettingValue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1306
    goto :goto_1

    .line 1308
    :sswitch_3
    const-string v1, "SettingsData.PhoneVibrate"

    invoke-virtual {p0, v1}, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettingsFroyo;->loadVibrateSetting(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 1297
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method protected loadVibrateSetting(Ljava/lang/String;)Z
    .locals 9
    .parameter "_dataPath"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "Add CSCSetting"

    .line 1317
    const/4 v2, 0x0

    .line 1319
    .local v2, cscData:Ljava/lang/String;
    const-string v4, "Add CSCSetting"

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v4, p1}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1322
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1326
    .local v0, am:Landroid/media/AudioManager;
    const-string v4, "notsilent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1327
    const/4 v1, 0x1

    .line 1328
    .local v1, callsVibrateSetting:I
    const/4 v3, 0x0

    .line 1340
    .local v3, vibeInSilent:Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscSettings$AdditionalSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "vibrate_in_silent"

    if-eqz v3, :cond_4

    move v6, v8

    :goto_1
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1346
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 1347
    if-eqz v3, :cond_5

    move v4, v8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1352
    :cond_0
    invoke-virtual {v0, v7, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1359
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #callsVibrateSetting:I
    .end local v3           #vibeInSilent:Z
    :goto_3
    return v8

    .line 1329
    .restart local v0       #am:Landroid/media/AudioManager;
    :cond_1
    const-string v4, "never"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1330
    const/4 v1, 0x0

    .line 1331
    .restart local v1       #callsVibrateSetting:I
    const/4 v3, 0x0

    .restart local v3       #vibeInSilent:Z
    goto :goto_0

    .line 1332
    .end local v1           #callsVibrateSetting:I
    .end local v3           #vibeInSilent:Z
    :cond_2
    const-string v4, "silent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1333
    const/4 v1, 0x2

    .line 1334
    .restart local v1       #callsVibrateSetting:I
    const/4 v3, 0x1

    .restart local v3       #vibeInSilent:Z
    goto :goto_0

    .line 1336
    .end local v1           #callsVibrateSetting:I
    .end local v3           #vibeInSilent:Z
    :cond_3
    const/4 v1, 0x1

    .line 1337
    .restart local v1       #callsVibrateSetting:I
    const/4 v3, 0x1

    .restart local v3       #vibeInSilent:Z
    goto :goto_0

    :cond_4
    move v6, v7

    .line 1340
    goto :goto_1

    :cond_5
    move v4, v7

    .line 1347
    goto :goto_2

    .line 1357
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #callsVibrateSetting:I
    .end local v3           #vibeInSilent:Z
    :cond_6
    const-string v4, "Add CSCSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
