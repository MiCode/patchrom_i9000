.class public Landroid/sec/clipboard/data/ClipboardDataMgr;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# instance fields
.field private final mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/ClipboardData;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "iSize"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addData(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 5
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .local v0, Result:Z
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, iSize:I
    :try_start_0
    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    if-lt v2, v3, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ClipboardServiceEx"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 4
    .parameter "index"

    .prologue
    const-string v3, "ClipboardServiceEx"

    const/4 v0, 0x0

    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    return-object v0

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "ClipboardServiceEx"

    const-string v2, "The index has been exceeded."

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ClipboardServiceEx"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0
.end method

.method public removeData(I)Z
    .locals 4
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "ClipboardServiceEx"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
