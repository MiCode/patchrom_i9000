.class public Lcom/samsung/sec/android/application/csc/CscContents;
.super Ljava/lang/Object;
.source "CscContents.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# instance fields
.field private final CONTENTS_LIST_DB:Ljava/lang/String;

.field private final NOERROR:Ljava/lang/String;

.field private dbCursor:Landroid/database/Cursor;

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mResolver:Landroid/content/ContentResolver;

.field private numFileSdcard:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "/system/csc/contents.db"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContents;->CONTENTS_LIST_DB:Ljava/lang/String;

    .line 45
    const-string v0, "NOERROR"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContents;->NOERROR:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContents;->mResolver:Landroid/content/ContentResolver;

    .line 59
    return-void
.end method

.method private queryCountUri(Landroid/net/Uri;)I
    .locals 9
    .parameter "uri"

    .prologue
    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, projectionNull:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 215
    .local v4, selectionNull:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 216
    .local v3, stringNull:Ljava/lang/String;
    const/4 v8, 0x0

    .line 217
    .local v8, queryCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 220
    .local v7, queryCount:I
    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContents;->mResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 221
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 222
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return v7

    .line 223
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 224
    .local v6, ex:Ljava/lang/NullPointerException;
    const/4 v7, -0x1

    goto :goto_0
.end method

.method private queryCountUri(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "strWhereIs"
    .parameter "selection"
    .parameter "strParam"

    .prologue
    .line 232
    const/4 v8, 0x0

    .line 233
    .local v8, queryCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 236
    .local v7, queryCount:I
    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContents;->mResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 237
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return v7

    .line 239
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 240
    .local v6, ex:Ljava/lang/NullPointerException;
    const/4 v7, -0x1

    goto :goto_0
.end method


# virtual methods
.method public CountFiles(Ljava/lang/String;)I
    .locals 8
    .parameter "path"

    .prologue
    const-string v7, "CscContents"

    .line 165
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v3, sdRoot:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 167
    .local v4, sdRootFiles:[Ljava/io/File;
    const/4 v1, 0x0

    .line 168
    .local v1, numOfFiles:I
    const/4 v2, 0x0

    .line 170
    .local v2, numOfRealFiles:I
    if-eqz v4, :cond_0

    .line 171
    array-length v1, v4

    .line 173
    :cond_0
    const-string v5, "CscContents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number of file found on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz v4, :cond_4

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 179
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 181
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.cooliris.media"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_2
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 185
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".thumbnails"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "albumthumbs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 189
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LOST.DIR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 192
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/sec/android/application/csc/CscContents;->CountFiles(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    .line 196
    :cond_3
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DiskCache"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 198
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "devicefriendlyname"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    .end local v0           #i:I
    :cond_4
    const-string v5, "CscContents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v2
.end method

.method checkContentsDB()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v13, 0x0

    const-string v14, "OPERATOR_CONTENTS:"

    const-string v12, "CscContents"

    .line 81
    const-string v0, "NOERROR"

    .line 82
    .local v0, answer:Ljava/lang/String;
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->numFileSdcard:I

    .line 86
    :try_start_0
    const-string v9, "/system/csc/contents.db"

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "SELECT * from contents"

    invoke-virtual {v9, v10, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    .line 96
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    const-string v10, "filePath"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 97
    .local v6, pathIndex:I
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    const-string v10, "fileSize"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 99
    .local v8, sizeIndex:I
    const-string v9, "CscContents"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "row count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 103
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 104
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v9, v0

    .line 146
    .end local v6           #pathIndex:I
    .end local v8           #sizeIndex:I
    :goto_0
    return-object v9

    .line 88
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 90
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    const-string v9, "CscContents"

    const-string v9, "DB for contents NOT found!"

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v9, "OPERATOR_CONTENTS:DB_NOT_FOUND"

    goto :goto_0

    .line 108
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v6       #pathIndex:I
    .restart local v8       #sizeIndex:I
    :cond_0
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    const/4 v7, 0x0

    .line 110
    .local v7, position:I
    :goto_1
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_5

    .line 111
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, currentPath:Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 114
    .local v2, currentSize:J
    const-string v9, "CscContents"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTarget : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "bytes)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v5, mFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 119
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v9, v9, v2

    if-eqz v9, :cond_1

    .line 121
    const-string v9, "CscContents"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "size  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vs "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 123
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OPERATOR_CONTENTS:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 126
    :cond_1
    const-string v9, "/sdcard"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "sdcard"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 127
    :cond_2
    iget v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->numFileSdcard:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->numFileSdcard:I

    .line 137
    :cond_3
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 131
    :cond_4
    const-string v9, "CscContents"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File not exist  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 133
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OPERATOR_CONTENTS:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 140
    .end local v1           #currentPath:Ljava/lang/String;
    .end local v2           #currentSize:J
    .end local v5           #mFile:Ljava/io/File;
    :cond_5
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_6

    .line 141
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_6
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 144
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscContents;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    move-object v9, v0

    .line 146
    goto/16 :goto_0
.end method

.method checkSDCard()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    const-string v1, "CscContents"

    const-string v2, "checkSDCard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, noFiles:I
    const-string v1, "/sdcard/"

    invoke-virtual {p0, v1}, Lcom/samsung/sec/android/application/csc/CscContents;->CountFiles(Ljava/lang/String;)I

    move-result v0

    .line 156
    iget v1, p0, Lcom/samsung/sec/android/application/csc/CscContents;->numFileSdcard:I

    if-eq v0, v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDCARD_CONTENTS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (numFileSdcard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/android/application/csc/CscContents;->numFileSdcard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "NOERROR"

    goto :goto_0
.end method

.method public compare()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    const-string v0, "NOERROR"

    .line 68
    .local v0, answer:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscContents;->checkContentsDB()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "NOERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscContents;->checkSDCard()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    return-object v0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public verifyResetDone()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v2, 0x0

    const-string v12, "CscContents"

    .line 248
    const-string v6, "NOERROR"

    .line 249
    .local v6, answer:Ljava/lang/String;
    const/4 v7, 0x0

    .line 250
    .local v7, projectionNull:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 251
    .local v9, selectionNull:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 252
    .local v11, stringNull:Ljava/lang/String;
    const/4 v8, 0x0

    .line 254
    .local v8, queryCount:I
    const-string v0, "CscContents"

    const-string v0, "verifyResetDone() start"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, " account_name != \'vnd.sec.contact.sim\' AND account_type != \'vnd.sec.contact.sim\' AND deleted==0"

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/sec/android/application/csc/CscContents;->queryCountUri(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 259
    const-string v0, "CscContents"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contacts counted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-lez v8, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONTACT/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 264
    :cond_0
    const-string v10, "ABSENT"

    .line 265
    .local v10, simState:Ljava/lang/String;
    const-string v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 266
    if-eqz v10, :cond_1

    const-string v0, "ABSENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/samsung/sec/android/application/csc/CscContents;->queryCountUri(Landroid/net/Uri;)I

    move-result v8

    .line 269
    const-string v0, "CscContents"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calls counted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-lez v8, :cond_1

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALLS/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 275
    :cond_1
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/samsung/sec/android/application/csc/CscContents;->queryCountUri(Landroid/net/Uri;)I

    move-result v8

    .line 276
    const-string v0, "CscContents"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS counted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-lez v8, :cond_2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 281
    :cond_2
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/samsung/sec/android/application/csc/CscContents;->queryCountUri(Landroid/net/Uri;)I

    move-result v8

    .line 282
    const-string v0, "CscContents"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMS counted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-lez v8, :cond_3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMS/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 287
    :cond_3
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/samsung/sec/android/application/csc/CscContents;->queryCountUri(Landroid/net/Uri;)I

    move-result v8

    .line 288
    const-string v0, "CscContents"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendars counted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-lez v8, :cond_4

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALENDAR/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 293
    :cond_4
    const-string v0, "content://com.samsung.sec.android/memo/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/sec/android/application/csc/CscContents;->queryCountUri(Landroid/net/Uri;)I

    move-result v8

    .line 294
    const-string v0, "CscContents"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Memo counted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-lez v8, :cond_5

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEMO/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 299
    :cond_5
    const-string v0, "content://com.samsung.sec.android.clockpackage/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/sec/android/application/csc/CscContents;->queryCountUri(Landroid/net/Uri;)I

    move-result v8

    .line 300
    const-string v0, "CscContents"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alarm counted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-lez v8, :cond_6

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALARM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 314
    :cond_6
    const-string v0, "CscContents"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyResetDone() end / answer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v6
.end method
