.class public Lcom/sec/android/provider/logsprovider/LogsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LogsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;
    }
.end annotation


# static fields
.field private static final LOGS_HISTORY_URI:Landroid/net/Uri;

.field private static final SNS_MESSAGE_GET_URI:Landroid/net/Uri;

.field private static final SNS_MSG_RECEIVER_MAP_GET_URI:Landroid/net/Uri;

.field private static final SNS_MSG_RECEIVER_MAP_URI:Landroid/net/Uri;

.field private static final SNS_URI:Landroid/net/Uri;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://logs/sns"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->LOGS_HISTORY_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://logs/sns_msg_receiver_map"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MSG_RECEIVER_MAP_URI:Landroid/net/Uri;

    .line 38
    const-string v0, "content://com.sec.android.app.provider.sns/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MESSAGE_GET_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.sec.android.app.provider.sns/msg_receiver_map"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MSG_RECEIVER_MAP_GET_URI:Landroid/net/Uri;

    .line 50
    new-instance v0, Lcom/sec/android/provider/logsprovider/LogsReceiver$1;

    invoke-direct {v0}, Lcom/sec/android/provider/logsprovider/LogsReceiver$1;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/sec/android/provider/logsprovider/LogsReceiver;->updateSnsData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/sec/android/provider/logsprovider/LogsReceiver;->removeImAccount(Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;)V

    return-void
.end method

.method private static removeImAccount(Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const-string v5, "\'"

    const-string v4, " AND "

    const-string v3, "="

    .line 127
    iget-object v2, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "logtype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string v2, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "sp_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v2, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mSptype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v2, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v2, "LogsReceiver"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsReceiver;->LOGS_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method private static updateSnsData(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 146
    const-string v0, "LogsReceiver"

    const-string v1, "updateSnsData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 253
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local p0
    :goto_0
    return-void

    .line 152
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local p0
    :cond_0
    sget-object p0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_URI:Landroid/net/Uri;

    .end local p0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 153
    sget-object p0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MSG_RECEIVER_MAP_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 155
    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MESSAGE_GET_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->SNS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "send_time DESC limit 3000"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    .local v6, snsCursor:Landroid/database/Cursor;
    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MSG_RECEIVER_MAP_GET_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->SNS_RECEIVER_MAP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 158
    .local v2, snsReceiverMapCursor:Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 159
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 160
    .local v1, mapCount:I
    const-string p0, "LogsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number of receiver map : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-lez v1, :cond_2

    .line 162
    new-array v3, v1, [Landroid/content/ContentValues;

    .line 163
    .local v3, values:[Landroid/content/ContentValues;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    const/4 p0, 0x0

    .local p0, index:I
    :goto_1
    if-ge p0, v1, :cond_1

    .line 165
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v3, p0

    .line 166
    aget-object v4, v3, p0

    const-string v5, "message_id"

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    aget-object v4, v3, p0

    const-string v5, "receiver_id"

    const/4 v7, 0x2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    aget-object v4, v3, p0

    const-string v5, "receiver_name"

    const/4 v7, 0x3

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 164
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 172
    :cond_1
    sget-object p0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MSG_RECEIVER_MAP_URI:Landroid/net/Uri;

    .end local p0           #index:I
    invoke-virtual {v0, p0, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 174
    .end local v3           #values:[Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 179
    .end local v1           #mapCount:I
    :goto_2
    if-eqz v6, :cond_a

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 181
    .local v4, snsCount:I
    const-string p0, "LogsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number of sns messages : "

    .end local v2           #snsReceiverMapCursor:Landroid/database/Cursor;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-lez v4, :cond_9

    .line 183
    new-array v5, v4, [Landroid/content/ContentValues;

    .line 184
    .local v5, values:[Landroid/content/ContentValues;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 185
    const/4 p0, 0x0

    .restart local p0       #index:I
    :goto_3
    if-ge p0, v4, :cond_8

    .line 186
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    aput-object v1, v5, p0

    .line 187
    aget-object v1, v5, p0

    const-string v2, "number"

    const/4 v3, 0x6

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    aget-object v1, v5, p0

    const-string v2, "date"

    const/4 v3, 0x5

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    aget-object v1, v5, p0

    const-string v2, "duration"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    aget-object v1, v5, p0

    const-string v2, "logtype"

    const/16 v3, 0x258

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    aget-object v1, v5, p0

    const-string v2, "sns_pkey"

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    const/16 v1, 0x8

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, type:Ljava/lang/String;
    if-nez v2, :cond_4

    .line 195
    const-string v1, "LogsReceiver"

    const-string v2, "Sns type is wrong value"

    .end local v2           #type:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 176
    .end local v4           #snsCount:I
    .end local v5           #values:[Landroid/content/ContentValues;
    .end local p0           #index:I
    .local v2, snsReceiverMapCursor:Landroid/database/Cursor;
    :cond_3
    const-string p0, "LogsReceiver"

    const-string v1, "snsReceiverMapCursor is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 198
    .local v2, type:Ljava/lang/String;
    .restart local v4       #snsCount:I
    .restart local v5       #values:[Landroid/content/ContentValues;
    .restart local p0       #index:I
    :cond_4
    const/4 v1, 0x0

    .line 199
    .local v1, itype:I
    const-string v1, ""

    .line 200
    .local v1, name:Ljava/lang/String;
    const-string v1, ""

    .line 201
    .local v1, peopleId:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1           #peopleId:Ljava/lang/String;
    if-lez v1, :cond_7

    .line 202
    const-string v1, "inbox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    const/4 v1, 0x1

    .line 204
    .local v1, itype:I
    const/4 v2, 0x6

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v2           #type:Ljava/lang/String;
    move-result-object v3

    .line 205
    .local v3, peopleId:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, name:Ljava/lang/String;
    :goto_5
    aget-object v7, v5, p0

    const-string v8, "type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1           #itype:I
    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    aget-object v1, v5, p0

    const-string v7, "new"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    aget-object v1, v5, p0

    const-string v7, "name"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    aget-object v1, v5, p0

    const-string v7, "name_reversed"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    aget-object v1, v5, p0

    const-string v2, "messageid"

    .end local v2           #name:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    aget-object v1, v5, p0

    const-string v2, "contactid"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    aget-object v1, v5, p0

    const-string v2, "m_content"

    const/4 v3, 0x4

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v3           #peopleId:Ljava/lang/String;
    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    aget-object v1, v5, p0

    const-string v2, "m_subject"

    const/4 v3, 0x3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    aget-object v1, v5, p0

    const-string v2, "sns_receiver_count"

    const/16 v3, 0xc

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v1, 0x0

    .line 229
    .local v1, spType:I
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local v1           #spType:I
    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 241
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 206
    .local v2, type:Ljava/lang/String;
    :cond_5
    const-string v1, "outbox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 207
    const/4 v1, 0x2

    .line 208
    .local v1, itype:I
    const/16 v2, 0xa

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v2           #type:Ljava/lang/String;
    move-result-object v3

    .line 209
    .restart local v3       #peopleId:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    goto/16 :goto_5

    .line 211
    .end local v1           #itype:I
    .end local v3           #peopleId:Ljava/lang/String;
    .local v2, type:Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 215
    :cond_7
    const-string v1, "LogsReceiver"

    const-string v2, "Sns type is wrong value2"

    .end local v2           #type:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 231
    :pswitch_0
    const/4 v1, 0x0

    .line 232
    .local v1, spType:I
    aget-object v2, v5, p0

    const-string v3, "sns_tid"

    const/16 v7, 0x9

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_6
    aget-object v2, v5, p0

    const-string v3, "sp_type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1           #spType:I
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 235
    :pswitch_1
    const/4 v1, 0x1

    .line 236
    .restart local v1       #spType:I
    goto :goto_6

    .line 238
    .end local v1           #spType:I
    :pswitch_2
    const/4 v1, 0x2

    .line 239
    .restart local v1       #spType:I
    goto :goto_6

    .line 247
    .end local v1           #spType:I
    :cond_8
    const-string p0, "content://logs/sns"

    .end local p0           #index:I
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 249
    .end local v5           #values:[Landroid/content/ContentValues;
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 251
    .end local v4           #snsCount:I
    .local v2, snsReceiverMapCursor:Landroid/database/Cursor;
    :cond_a
    const-string p0, "LogsReceiver"

    const-string v0, "sns cursor is null"

    .end local v0           #cr:Landroid/content/ContentResolver;
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "LogsReceiver"

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 95
    const-string v3, "LogsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v3, "com.sec.android.app.sns.action.UPDATE_MESSAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 98
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 99
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    const-string v3, "LogsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v3, "com.seven.Z7.ACCOUNT_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    new-instance v1, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;-><init>(Lcom/sec/android/provider/logsprovider/LogsReceiver$1;)V

    .line 111
    .local v1, ainfo:Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;
    iput-object p1, v1, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mContext:Landroid/content/Context;

    .line 112
    const-string v3, "account_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mAccountName:Ljava/lang/String;

    .line 113
    const-string v3, "sp_type"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mSptype:I

    .line 115
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 116
    .restart local v2       #msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 117
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 121
    .end local v1           #ainfo:Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    const-string v3, "LogsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong Action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_2
    const-string v3, "LogsReceiver"

    const-string v3, "Action value is null"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
