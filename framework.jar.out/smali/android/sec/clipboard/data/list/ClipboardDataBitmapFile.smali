.class public Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;
.super Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
.source "ClipboardDataBitmapFile.java"


# instance fields
.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 1
    .parameter "addItem"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->mFileName:Ljava/lang/String;

    .line 19
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->SetBitmap(Landroid/graphics/Bitmap;)Z

    .line 20
    return-void
.end method

.method public static convertClipboardDataBitmap(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 4
    .parameter "data"

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, Result:Landroid/sec/clipboard/data/ClipboardData;
    instance-of v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;

    if-nez v2, :cond_0

    move-object v2, p0

    .line 165
    .end local p0
    :goto_0
    return-object v2

    .line 161
    .restart local p0
    :cond_0
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local v1           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 163
    .restart local v1       #Result:Landroid/sec/clipboard/data/ClipboardData;
    move-object v0, v1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    move-object v2, v0

    check-cast p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;

    .end local p0
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmap(Landroid/graphics/Bitmap;)Z

    move-object v2, v1

    .line 165
    goto :goto_0
.end method

.method private failedToSaveTheFile(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "bmp"

    .prologue
    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->mFileName:Ljava/lang/String;

    .line 62
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public static isBitmapData(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DeleteFile()V
    .locals 6

    .prologue
    const-string v3, "ClipboardServiceEx"

    .line 118
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 140
    :goto_0
    return-void

    .line 121
    :cond_0
    monitor-enter p0

    .line 125
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, fBmp:Ljava/io/File;
    const-string v3, ""

    iput-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->mFileName:Ljava/lang/String;

    .line 128
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 129
    :try_start_1
    monitor-exit p0

    goto :goto_0

    .line 139
    .end local v2           #fBmp:Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 131
    .restart local v2       #fBmp:Ljava/io/File;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 132
    .local v0, bRes:Z
    if-nez v0, :cond_2

    .line 133
    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClipboardDataBitmapFile->DeleteFile fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    .end local v0           #bRes:Z
    .end local v2           #fBmp:Ljava/io/File;
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 136
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClipboardDataBitmapFile->DeleteFile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v3, "ClipboardServiceEx"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public GetBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 31
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 36
    .local v0, Result:Landroid/graphics/Bitmap;
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 49
    goto :goto_0
.end method

.method public SetBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->DeleteFile()V

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, Result:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 107
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 81
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmapFile;->failedToSaveTheFile(Landroid/graphics/Bitmap;)Z

    move-result v0

    move v1, v0

    .line 107
    .restart local v1       #Result:I
    goto :goto_0
.end method
