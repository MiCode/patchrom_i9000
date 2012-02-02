.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStartPos:I

.field private nWindow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 522
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 546
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 548
    .local v0, nativeBinder:Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 550
    invoke-direct {p0, v0}, Landroid/database/CursorWindow;->native_init(Landroid/os/IBinder;)V

    .line 551
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/database/CursorWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "localWindow"

    .prologue
    .line 42
    const-string v0, "default"

    invoke-direct {p0, p1, v0}, Landroid/database/CursorWindow;-><init>(ZLjava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 7
    .parameter "localWindow"
    .parameter "dbPath"

    .prologue
    const/4 v5, 0x2

    const-string v6, "/"

    .line 46
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 47
    const/4 v4, 0x0

    iput v4, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 48
    const-string v0, "default"

    .line 52
    .local v0, DEFAULT_PACKAGE:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v4, "default"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/database/CursorWindow;->native_init(ZLjava/lang/String;)V

    .line 74
    return-void

    .line 55
    :cond_1
    const-string v4, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, lSplitStr:[Ljava/lang/String;
    array-length v3, v2

    .line 59
    .local v3, lenSplitStr:I
    if-lt v3, v5, :cond_2

    .line 60
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v1, dbPathBuffer:Ljava/lang/StringBuffer;
    sub-int v4, v3, v5

    aget-object v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v5, 0x1

    sub-int v5, v3, v5

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 66
    goto :goto_0

    .line 67
    .end local v1           #dbPathBuffer:Ljava/lang/StringBuffer;
    :cond_2
    const-string p2, "default"

    goto :goto_0
.end method

.method private native allocRow_native()Z
.end method

.method private native close_native()V
.end method

.method private native copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C
.end method

.method private native freeLastRow_native()V
.end method

.method private native getBlob_native(II)[B
.end method

.method private native getDouble_native(II)D
.end method

.method private native getLong_native(II)J
.end method

.method private native getNumRows_native()I
.end method

.method private native getString_native(II)Ljava/lang/String;
.end method

.method private native isBlob_native(II)Z
.end method

.method private native isFloat_native(II)Z
.end method

.method private native isInteger_native(II)Z
.end method

.method private native isNull_native(II)Z
.end method

.method private native isString_native(II)Z
.end method

.method private native native_clear()V
.end method

.method private native native_getBinder()Landroid/os/IBinder;
.end method

.method private native native_init(Landroid/os/IBinder;)V
.end method

.method private native native_init(ZLjava/lang/String;)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .locals 1
    .parameter "p"

    .prologue
    .line 534
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/CursorWindow;

    return-object p0
.end method

.method private native putBlob_native([BII)Z
.end method

.method private native putDouble_native(DII)Z
.end method

.method private native putLong_native(JII)Z
.end method

.method private native putNull_native(II)Z
.end method

.method private native putString_native(Ljava/lang/String;II)Z
.end method

.method private native setNumColumns_native(I)Z
.end method


# virtual methods
.method public allocRow()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 133
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->allocRow_native()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 135
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 497
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 498
    invoke-direct {p0}, Landroid/database/CursorWindow;->native_clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 502
    return-void

    .line 500
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 512
    return-void
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 3
    .parameter "row"
    .parameter "col"
    .parameter "buffer"

    .prologue
    .line 380
    if-nez p3, :cond_0

    .line 381
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CharArrayBuffer should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_0
    iget-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    if-nez v1, :cond_1

    .line 384
    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    .line 386
    :cond_1
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 388
    :try_start_0
    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    iget-object v2, p3, Landroid/database/CharArrayBuffer;->data:[C

    array-length v2, v2

    invoke-direct {p0, v1, p2, v2, p3}, Landroid/database/CursorWindow;->copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C

    move-result-object v0

    .line 390
    .local v0, newbuf:[C
    if-eqz v0, :cond_2

    .line 391
    iput-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :cond_2
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 396
    return-void

    .line 394
    .end local v0           #newbuf:[C
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Landroid/database/CursorWindow;->close_native()V

    .line 520
    return-void
.end method

.method public freeLastRow()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 147
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->freeLastRow_native()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 151
    return-void

    .line 149
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 274
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getBlob_native(II)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 431
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getDouble_native(II)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 433
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 481
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 483
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getDouble_native(II)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    double-to-float v0, v0

    .line 485
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getInt(II)I
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 466
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    .line 468
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getLong(II)J
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 410
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 412
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 414
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 103
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->getNumRows_native()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 105
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 448
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 450
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 452
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 361
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getString_native(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 292
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->isBlob_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 294
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isFloat(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 324
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->isFloat_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 326
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isLong(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 308
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->isInteger_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 310
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isNull(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 256
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->isNull_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 258
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isString(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 340
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->isString_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 342
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Landroid/database/CursorWindow;->close_native()V

    .line 565
    return-void
.end method

.method public putBlob([BII)Z
    .locals 1
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 165
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Landroid/database/CursorWindow;->putBlob_native([BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 167
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .locals 1
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 220
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/database/CursorWindow;->putDouble_native(DII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 222
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .locals 1
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 201
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/database/CursorWindow;->putLong_native(JII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 203
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 237
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->putNull_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 239
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 1
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 183
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Landroid/database/CursorWindow;->putString_native(Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 185
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 1
    .parameter "columnNum"

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;->setNumColumns_native(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 120
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 92
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 542
    invoke-direct {p0}, Landroid/database/CursorWindow;->native_getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 543
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    return-void
.end method
