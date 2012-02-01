.class public Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;
.super Ljava/lang/Object;
.source "CscSelectiveSettings.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# instance fields
.field private final NOERROR:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "NOERROR"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->NOERROR:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mResolver:Landroid/content/ContentResolver;

    .line 59
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public compare()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/String;

    const-string v1, "NOERROR"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, answer:Ljava/lang/String;
    return-object v0
.end method

.method deleteUri(Landroid/net/Uri;)I
    .locals 6
    .parameter "uri"

    .prologue
    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, temp:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 77
    .local v3, nullString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 79
    .local v0, count:I
    :try_start_0
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, p1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 81
    .local v2, ex:Ljava/lang/UnsupportedOperationException;
    const/16 v0, 0x63

    .line 84
    goto :goto_0

    .line 82
    .end local v2           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 83
    .local v1, e:Ljava/lang/Exception;
    const/16 v0, 0x63

    goto :goto_0
.end method

.method setAirPlaneMode(Z)V
    .locals 4
    .parameter "enabling"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void

    .line 65
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 22

    .prologue
    .line 90
    const/4 v14, 0x0

    .line 91
    .local v14, count:I
    const/16 v21, 0x0

    .line 92
    .local v21, queryCursor:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 93
    .local v20, queryCount:I
    const/4 v8, 0x0

    .line 94
    .local v8, selectionNull:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 95
    .local v7, stringNull:Ljava/lang/String;
    const/4 v10, 0x0

    .line 100
    .local v10, TestID:I
    const-string v4, "CscSelectiveSettings"

    const-string v5, "reset silent mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    .line 102
    .local v12, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v12}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 103
    const/4 v4, 0x2

    invoke-virtual {v12, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 108
    :cond_0
    const-string v4, "CscSelectiveSettings"

    const-string v5, "Audio volume settings reset"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v4, 0x3

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v12, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 110
    const/4 v4, 0x2

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v12, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 111
    const/4 v4, 0x1

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v12, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 112
    const/4 v4, 0x0

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v12, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 113
    const/4 v4, 0x4

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v12, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 114
    const/4 v4, 0x5

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v12, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 119
    const-string v4, "CscSelectiveSettings"

    const-string v5, "LCD time-out reset"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    const-string v5, "PRE_SCREEN_OFF_TIMEOUT"

    const/16 v6, 0x7530

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    const-string v4, "CscSelectiveSettings"

    const-string v5, "shutdown option reset"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    const-string v5, "SHOULD_SHUT_DOWN"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->deleteUri(Landroid/net/Uri;)I

    move-result v14

    .line 133
    const-string v4, "CscSelectiveSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted contacts : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v4, "content://logs/allcalls"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->deleteUri(Landroid/net/Uri;)I

    move-result v14

    .line 140
    const-string v4, "CscSelectiveSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted Call logs : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v4, "content://logs/historys"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->deleteUri(Landroid/net/Uri;)I

    move-result v14

    .line 146
    const-string v4, "CscSelectiveSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted History : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->deleteUri(Landroid/net/Uri;)I

    move-result v14

    .line 152
    const-string v4, "CscSelectiveSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted SMS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->deleteUri(Landroid/net/Uri;)I

    move-result v14

    .line 154
    const-string v4, "CscSelectiveSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted MMS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v4, "content://com.samsung.sec.android/memo/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->deleteUri(Landroid/net/Uri;)I

    move-result v14

    .line 160
    const-string v4, "CscSelectiveSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted Memo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v4, "content://com.samsung.sec.android.clockpackage/alarm"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->deleteUri(Landroid/net/Uri;)I

    move-result v14

    .line 166
    const-string v4, "CscSelectiveSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted Alarm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v11, "_id"

    aput-object v11, v6, v9

    move-object v9, v7

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 173
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v20

    .line 176
    :goto_0
    if-lez v20, :cond_1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    const/16 v16, 0x0

    .end local v7           #stringNull:Ljava/lang/String;
    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 180
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 181
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v10

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->deleteUri(Landroid/net/Uri;)I

    move-result v14

    .line 182
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 183
    const-string v4, "CscSelectiveSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v7, v10

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 186
    .end local v16           #i:I
    :cond_1
    if-eqz v21, :cond_2

    .line 187
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_2
    const-string v4, "CscSelectiveSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted Events : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v4, "CscSelectiveSettings"

    const-string v5, "Reset Language"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    .line 196
    .local v11, am:Landroid/app/IActivityManager;
    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 197
    .local v13, config:Landroid/content/res/Configuration;
    new-instance v17, Ljava/util/Locale;

    const-string v4, ""

    const-string v5, ""

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v17, mLocale:Ljava/util/Locale;
    move-object/from16 v0, v17

    move-object v1, v13

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 200
    const/4 v4, 0x1

    iput-boolean v4, v13, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 201
    invoke-interface {v11, v13}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    .end local v11           #am:Landroid/app/IActivityManager;
    .end local v13           #config:Landroid/content/res/Configuration;
    .end local v17           #mLocale:Ljava/util/Locale;
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->setAirPlaneMode(Z)V

    .line 215
    const-string v4, "CscSelectiveSettings"

    const-string v5, "reset Setup_Wizard(UseGoogleLocation)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 217
    .local v19, pm:Landroid/content/pm/PackageManager;
    new-instance v18, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.phonesetupwizard"

    const-string v5, "com.sec.android.app.phonesetupwizard.PhoneSetupWizardActivity"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v18, name:Landroid/content/ComponentName;
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 224
    const-string v4, "CscSelectiveSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setup_Wizard (getComponentEnabledSetting) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v16

    .line 227
    .local v16, i:Landroid/content/Intent;
    const/high16 v4, 0x1000

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v4, "android.intent.category.HOME"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscSelectiveSettings;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void

    .line 202
    .end local v16           #i:Landroid/content/Intent;
    .end local v18           #name:Landroid/content/ComponentName;
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    move-object v15, v4

    .line 203
    .local v15, e:Landroid/os/RemoteException;
    const-string v4, "CscSelectiveSettings"

    const-string v5, "Can\'t delete language : RemoteException!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 174
    .end local v15           #e:Landroid/os/RemoteException;
    .restart local v7       #stringNull:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method
