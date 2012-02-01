.class public Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;
.super Ljava/lang/Object;
.source "BluetoothFTPVisibility.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothFTPVisibility"


# instance fields
.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;->ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized CreateVisibleFileList(Ljava/lang/String;)V
    .locals 14
    .parameter "filepath"

    .prologue
    const-string v0, "File close error."

    const-string v0, "BluetoothFTPVisibility"

    monitor-enter p0

    :try_start_0
    const-string v0, "content://com.sec.android.app.myfiles.provider/bt_visibility"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, CONTENT_URI:Landroid/net/Uri;
    const/4 v7, 0x0

    .local v7, depth:I
    const/4 v10, 0x0

    .local v10, f:Ljava/io/FileWriter;
    new-instance v8, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/misc/bluetoothd/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "browselist.txt"

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v8, dest:Ljava/io/File;
    const-string v0, "BluetoothFTPVisibility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ftpServerMakeVisibleFileList: path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v12, v0, :cond_2

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file_depth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and path like "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    const-string v0, "BluetoothFTPVisibility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ftpServerMakeVisibleFileList: c.getCount(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v13, v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v13, s:[Ljava/lang/String;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    new-instance v11, Ljava/io/FileWriter;

    const/4 v0, 0x1

    invoke-direct {v11, v8, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v10           #f:Ljava/io/FileWriter;
    .local v11, f:Ljava/io/FileWriter;
    const/4 v12, 0x0

    :goto_2
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v12, v0, :cond_6

    new-instance v0, Ljava/io/File;

    const-string v2, "path"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v13, v12

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v12

    aget-object v0, v13, v12

    const/4 v2, 0x0

    aget-object v3, v13, v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v11, v0, v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    if-eqz v11, :cond_7

    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V

    :cond_7
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_8
    move-object v10, v11

    .end local v11           #f:Ljava/io/FileWriter;
    .restart local v10       #f:Ljava/io/FileWriter;
    goto :goto_1

    .end local v10           #f:Ljava/io/FileWriter;
    .restart local v11       #f:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Ljava/io/IOException;
    :try_start_5
    const-string v0, "BluetoothFTPVisibility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File close error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v10, v11

    .end local v11           #f:Ljava/io/FileWriter;
    .restart local v10       #f:Ljava/io/FileWriter;
    goto/16 :goto_1

    .end local v9           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v9, v0

    .restart local v9       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v0, "BluetoothFTPVisibility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File write error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v10, :cond_9

    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V

    :cond_9
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v9, v0

    :try_start_8
    const-string v0, "BluetoothFTPVisibility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File close error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .end local v1           #CONTENT_URI:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #depth:I
    .end local v8           #dest:Ljava/io/File;
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #f:Ljava/io/FileWriter;
    .end local v12           #i:I
    .end local v13           #s:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v1       #CONTENT_URI:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #depth:I
    .restart local v8       #dest:Ljava/io/File;
    .restart local v10       #f:Ljava/io/FileWriter;
    .restart local v12       #i:I
    .restart local v13       #s:[Ljava/lang/String;
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v10, :cond_a

    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V

    :cond_a
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_b
    :try_start_a
    throw v0

    :catch_3
    move-exception v0

    move-object v9, v0

    .restart local v9       #e:Ljava/io/IOException;
    const-string v0, "BluetoothFTPVisibility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File close error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #f:Ljava/io/FileWriter;
    .restart local v11       #f:Ljava/io/FileWriter;
    :catchall_2
    move-exception v0

    move-object v10, v11

    .end local v11           #f:Ljava/io/FileWriter;
    .restart local v10       #f:Ljava/io/FileWriter;
    goto :goto_4

    .end local v10           #f:Ljava/io/FileWriter;
    .restart local v11       #f:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v9, v0

    move-object v10, v11

    .end local v11           #f:Ljava/io/FileWriter;
    .restart local v10       #f:Ljava/io/FileWriter;
    goto :goto_3
.end method
