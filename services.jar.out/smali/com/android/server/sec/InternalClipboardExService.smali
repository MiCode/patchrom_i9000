.class public Lcom/android/server/sec/InternalClipboardExService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/InternalClipboardExService$1;,
        Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;
    }
.end annotation


# static fields
.field private static sService:Landroid/text/IClipboard;


# instance fields
.field private mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

.field private mClipboardFormatList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardFormatListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardManager:Landroid/text/ClipboardManager;

.field private mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mContext:Landroid/content/Context;

.field private mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/text/IClipboard;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardManager:Landroid/text/ClipboardManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iput-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    new-instance v0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {v0, p0, v2}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/InternalClipboardExService$1;)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HTMLFlagment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private AddCheckPossible(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 6
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .local v1, Result:Z
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .local v3, iCount:I
    if-gez v3, :cond_0

    move v2, v1

    .end local v1           #Result:Z
    .local v2, Result:I
    :goto_0
    return v2

    .end local v2           #Result:I
    .restart local v1       #Result:Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .local v0, LastData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    if-eq v4, v5, :cond_1

    move v2, v1

    .restart local v2       #Result:I
    goto :goto_0

    .end local v2           #Result:I
    :cond_1
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v2, v1

    .restart local v2       #Result:I
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method private addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 7
    .parameter "format"
    .parameter "data"

    .prologue
    const-string v6, "ClipboardServiceEx"

    const/4 v0, 0x0

    .local v0, Res:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {p0, p2}, Lcom/android/server/sec/InternalClipboardExService;->AddCheckPossible(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    const-string v4, "The data are the same."

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .end local v0           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .local v1, Res:Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    return-object v1

    .end local v1           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0       #Res:Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    invoke-virtual {p2, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .local v2, addItem:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v4}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/sec/InternalClipboardExService;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    move-object v1, v0

    .end local v0           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v1       #Res:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .end local v1           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0       #Res:Landroid/sec/clipboard/data/ClipboardData;
    :cond_2
    const-string v4, "ClipboardServiceEx"

    const-string v4, "Failed to add data."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, e:Landroid/os/RemoteException;
    const-string v4, "ClipboardServiceEx"

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static getService()Landroid/text/IClipboard;
    .locals 3

    .prologue
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/text/IClipboard;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/text/IClipboard;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v1

    sput-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/text/IClipboard;

    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/text/IClipboard;

    if-nez v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/text/IClipboard;

    goto :goto_0
.end method

.method private sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x2

    const-string v3, "ClipboardServiceEx"

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-ne v3, v5, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v2, v0

    .local v2, txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :try_start_0
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/text/IClipboard;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/text/IClipboard;->setSyncClipboardText(Ljava/lang/CharSequence;)V

    const-string v3, "ClipboardServiceEx"

    const-string v4, "String was copied.(FORMAT_TEXT_ID)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_0
    :goto_0
    return-void

    .restart local v2       #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .restart local v2       #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1, v5, v2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    :try_start_1
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/text/IClipboard;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/text/IClipboard;->setSyncClipboardText(Ljava/lang/CharSequence;)V

    const-string v3, "ClipboardServiceEx"

    const-string v4, "String was copied.(FORMAT_HTML_FLAGMENT_ID)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v1, v3

    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .local v0, Result:Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return v0

    .end local v0           #Result:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 7
    .parameter "format"

    .prologue
    const/4 v5, 0x1

    monitor-enter p0

    const/4 v0, 0x0

    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    .local v3, iClipboardDataCount:I
    if-ge v3, v5, :cond_0

    monitor-exit p0

    move-object v1, v0

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .local v1, Result:Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    return-object v1

    .end local v1           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    const/4 v2, 0x0

    .local v2, cbData:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    sub-int v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItem id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", input id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-eq v4, p1, :cond_2

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    :cond_1
    :goto_1
    monitor-exit p0

    move-object v1, v0

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v1       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .end local v1           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    :cond_2
    move-object v0, v2

    goto :goto_1

    .end local v2           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    .end local v3           #iClipboardDataCount:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public GetClipboardFormatName(I)Ljava/lang/String;
    .locals 3
    .parameter "format"

    .prologue
    const-string v0, ""

    .local v0, Result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #Result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #Result:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V
    .locals 4
    .parameter "format"
    .parameter "data"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    .local v0, Item:Landroid/sec/clipboard/IClipboardFormatListener;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardFormatListener;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0           #Item:Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 2
    .parameter "iRegInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "ClipboardServiceEx"

    const-string v1, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RegisterClipboardFormat(Ljava/lang/String;)I
    .locals 7
    .parameter "formatName"

    .prologue
    const/4 v1, 0x0

    .local v1, Result:I
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, 0x2

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .local v0, Keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, iVal:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, sValue:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .local v0, Result:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 6
    .parameter "format"
    .parameter "data"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetClipboardData - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, Result:Z
    if-nez p2, :cond_0

    monitor-exit p0

    move v2, v1

    .end local v1           #Result:Z
    .local v2, Result:I
    :goto_0
    return v2

    .end local v2           #Result:I
    .restart local v1       #Result:Z
    :cond_0
    const/4 v0, 0x0

    .local v0, Res:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    move v1, v3

    :goto_1
    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/sec/InternalClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;)V

    :cond_1
    monitor-exit p0

    move v2, v1

    .restart local v2       #Result:I
    goto :goto_0

    .end local v2           #Result:I
    :cond_2
    const/4 v3, 0x0

    move v1, v3

    goto :goto_1

    .end local v0           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .end local v1           #Result:Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public SetSyncClipboardData(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .local v1, Result:Z
    const/4 v0, 0x0

    .local v0, Res:Landroid/sec/clipboard/data/ClipboardData;
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .local v2, data:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetFomat()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    return v0
.end method
