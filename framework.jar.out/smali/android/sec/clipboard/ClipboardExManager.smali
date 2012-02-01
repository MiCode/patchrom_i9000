.class public Landroid/sec/clipboard/ClipboardExManager;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"


# static fields
.field private static sService:Landroid/sec/clipboard/IClipboardService;


# instance fields
.field private mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ClipboardExManager"

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    return-void
.end method

.method private static getService()Landroid/sec/clipboard/IClipboardService;
    .locals 2

    .prologue
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    goto :goto_0
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, Result:Z
    :goto_0
    return v0

    .end local v0           #Result:Z
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddClipboardFormatListener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .restart local v0       #Result:Z
    goto :goto_0
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 6
    .parameter "iRegInterface"

    .prologue
    const-string v5, "ClipboardServiceEx"

    const/4 v0, 0x0

    .local v0, Result:Z
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v3, p1, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "ClipboardServiceEx"

    const-string v3, "RegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v3, v4}, Landroid/sec/clipboard/IClipboardService;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    const-string v3, "ClipboardServiceEx"

    const-string v4, "Regist ClipboardWorkingFormUiInterface - Success."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    const-string v3, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegistClipboardWorkingFormUiInterface - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegistClipboardWorkingFormUiInterface : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, Result:Z
    :goto_0
    return v0

    .end local v0           #Result:Z
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoveClipboardFormatListener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .restart local v0       #Result:Z
    goto :goto_0
.end method

.method public getData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 5
    .parameter "formatid"

    .prologue
    const/4 v0, 0x0

    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getData(int)(RemoteException):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .locals 1
    .parameter "context"
    .parameter "formatid"
    .parameter "clPasteEvent"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    return v0
.end method

.method public hasData(I)Z
    .locals 3
    .parameter "formatid"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setData(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 5
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/sec/clipboard/IClipboardService;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setData(ClipboardData)(RemoteException): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
