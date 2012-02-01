.class public Lcom/broadcom/bt/service/map/MapEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "MapEventLoop.java"

# interfaces
.implements Lcom/broadcom/bt/service/map/MAPConstants;


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final TAG:Ljava/lang/String; = "MapEventLoop"

.field private static final V:Z = true


# instance fields
.field private isAccessGranted:Z

.field private mInterrupted:Z

.field private mObexNativeData:I

.field private mService:Lcom/broadcom/bt/service/map/MapService;

.field private mThread:Ljava/lang/Thread;

.field private m_MapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classBluetoothMapInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->isAccessGranted:Z

    new-instance v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->m_MapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classInitData()V

    return-void
.end method

.method private native Native_BluetoothMapMSEEventLoop()V
.end method

.method private static native Native_classBluetoothMapInit()V
.end method

.method private native Native_classInitData()V
.end method

.method private native Native_classUninitData()V
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/map/MapEventLoop;)Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->m_MapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/map/MapEventLoop;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/map/MapEventLoop;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_BluetoothMapMSEEventLoop()V

    return-void
.end method

.method static synthetic access$500(Lcom/broadcom/bt/service/map/MapEventLoop;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classUninitData()V

    return-void
.end method


# virtual methods
.method fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sCurrentPath"
    .parameter "sPath"

    .prologue
    move-object v0, p1

    .local v0, s_provider_folder:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFolderEntryFromProvider(Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;IIILjava/lang/String;)V
    .locals 15
    .parameter "s"
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "s_provider_folder"

    .prologue
    const-string v2, "MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFolderEntryFromProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    .local v14, status:B
    if-eqz p3, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v2, v0

    iget-object v2, v2, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v3, v0

    iget-object v4, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v3, v0

    iget-object v5, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const/16 v7, 0x270f

    const/4 v8, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p5

    invoke-interface/range {v2 .. v8}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move v4, v14

    .end local v14           #status:B
    .local v4, status:B
    :goto_0
    return-void

    .end local v4           #status:B
    .restart local v14       #status:B
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v2, v0

    array-length v2, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v0, p4

    move v1, v2

    if-ne v0, v1, :cond_1

    const/4 v4, 0x2

    .end local v14           #status:B
    .restart local v4       #status:B
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v13, v2

    .local v13, e:Landroid/os/RemoteException;
    :goto_1
    const-string v2, "MapEventLoop"

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4           #status:B
    .end local v13           #e:Landroid/os/RemoteException;
    .restart local v14       #status:B
    :cond_1
    add-int/lit8 p4, p4, 0x1

    :try_start_2
    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v2, v0

    const/4 v3, 0x1

    sub-int v3, p4, v3

    aget-object v2, v2, v3

    iget-wide v2, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    long-to-int v9, v2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v2, v0

    const/4 v3, 0x1

    sub-int v3, p4, v3

    aget-object v2, v2, v3

    iget-object v10, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v2, v0

    const/4 v3, 0x1

    sub-int v3, p4, v3

    aget-object v2, v2, v3

    iget-object v11, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v2, v0

    const/4 v3, 0x1

    sub-int v3, p4, v3

    aget-object v2, v2, v3

    iget-wide v2, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    long-to-int v2, v2

    int-to-byte v12, v2

    move/from16 v6, p2

    move v7, v14

    move/from16 v8, p4

    invoke-virtual/range {v5 .. v12}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move v4, v14

    .end local v14           #status:B
    .restart local v4       #status:B
    goto :goto_0

    .end local v4           #status:B
    .restart local v14       #status:B
    :catch_1
    move-exception v2

    move-object v13, v2

    move v4, v14

    .end local v14           #status:B
    .restart local v4       #status:B
    goto :goto_1

    .end local v4           #status:B
    .restart local v14       #status:B
    :catch_2
    move-exception v2

    move-object v13, v2

    move v4, v14

    .end local v14           #status:B
    .restart local v4       #status:B
    goto :goto_1
.end method

.method public getFolderEntryforVirtualRoot(IIILjava/lang/String;)V
    .locals 8
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "folder"

    .prologue
    const-string v0, "MapEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFolderEntryforVirtualRoot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    const-string v0, "root/telecom"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "msg"

    const-string v6, ""

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "root"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "telecom"

    const-string v6, ""

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "bluetooth_map"

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    const-string v0, "MapEventLoop"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized onMCEConnected(IILjava/lang/String;)V
    .locals 5
    .parameter "mse_instance_id"
    .parameter "mse_session_id"
    .parameter "deviceName"

    .prologue
    const-string v2, "MapEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v2, "MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMCEConnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->addSession(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p3}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    :try_start_3
    const-string v2, "MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMCEConnected - did not find context for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCEDisconnected(II)V
    .locals 5
    .parameter "mse_instance_id"
    .parameter "mse_session_id"

    .prologue
    const-string v2, "MapEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v2, "MapEventLoop"

    const-string v3, "onMCEDisconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeSession(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    :try_start_3
    const-string v2, "MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMCEDisconnected - did not find context for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCEGetFolderEntry(IIILjava/lang/String;)V
    .locals 6
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "folder"

    .prologue
    const-string v0, "MapEventLoop"

    const-string v0, " "

    monitor-enter p0

    :try_start_0
    const-string v0, "MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMCEGetFolderEntry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v1

    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p4}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, s_provider_folder:Ljava/lang/String;
    const-string v0, "root/telecom"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "root"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/broadcom/bt/service/map/MapEventLoop;->getFolderEntryforVirtualRoot(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5           #s_provider_folder:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .restart local v5       #s_provider_folder:Ljava/lang/String;
    :cond_1
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapEventLoop;->getFolderEntryFromProvider(Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;IIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .end local v5           #s_provider_folder:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_2
    :try_start_2
    const-string v0, "MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMCEGetFolderEntry - did not find session for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCEGetMsg(IBJB)V
    .locals 17
    .parameter "mse_session_id"
    .parameter "include_attachment"
    .parameter "message_handle"
    .parameter "char_set"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v5, "MapEventLoop"

    const-string v6, "onMCEGetMsg"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .local v15, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v15, :cond_4

    :try_start_1
    iget-object v5, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v0, v5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v11

    .local v11, s_provider_id:Ljava/lang/String;
    if-eqz v11, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v5, v0

    const/4 v6, 0x2

    move-object v0, v5

    move/from16 v1, p1

    move-wide/from16 v2, p3

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/MapService;->getMsgFailResponse(IJB)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v11           #s_provider_id:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .restart local v11       #s_provider_id:Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v5, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v5, v11}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, s_virtual_folder:Ljava/lang/String;
    if-eqz v16, :cond_2

    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v5, v0

    const/4 v6, 0x2

    move-object v0, v5

    move/from16 v1, p1

    move-wide/from16 v2, p3

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/MapService;->getMsgFailResponse(IJB)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v11           #s_provider_id:Ljava/lang/String;
    .end local v16           #s_virtual_folder:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v14, v5

    .local v14, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "MapEventLoop"

    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v14           #e:Landroid/os/RemoteException;
    .end local v15           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v11       #s_provider_id:Ljava/lang/String;
    .restart local v15       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .restart local v16       #s_virtual_folder:Ljava/lang/String;
    :cond_3
    :try_start_4
    iget-object v5, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v6, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v7, v6, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v6, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v8, v6, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "root"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v6, p1

    move/from16 v12, p5

    move/from16 v13, p2

    invoke-interface/range {v5 .. v13}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .end local v11           #s_provider_id:Ljava/lang/String;
    .end local v16           #s_virtual_folder:Ljava/lang/String;
    :cond_4
    :try_start_5
    const-string v5, "MapEventLoop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMCEGetMsg - did not find session for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCEGetMsgEntry(ILjava/lang/String;BI)V
    .locals 51
    .parameter "session_id"
    .parameter "folder_path"
    .parameter "first_item"
    .parameter "ref_data"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "MapEventLoop"

    const-string v4, "onMCEGetMsgEntry"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v50

    .local v50, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v50, :cond_7

    const/16 v49, 0x0

    .local v49, msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/4 v5, 0x0

    .local v5, status:B
    if-eqz p3, :cond_0

    const/16 p4, 0x0

    :cond_0
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .local v25, s_virtual_folder:Ljava/lang/String;
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    move-object v3, v0

    if-eqz v3, :cond_6

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    move-object v3, v0

    array-length v3, v3

    add-int/lit8 v4, p4, 0x1

    if-lt v3, v4, :cond_6

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    move-object v3, v0

    aget-object v49, v3, p4

    add-int/lit8 p4, p4, 0x1

    const-string v3, "MapEventLoop"

    invoke-virtual/range {v49 .. v49}, Lcom/broadcom/bt/service/map/MessageInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    move v7, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    move v8, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    move v9, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    move v10, v4

    :goto_0
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    move v11, v4

    :goto_1
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    const/4 v4, 0x1

    move v12, v4

    :goto_2
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    const/4 v4, 0x1

    move v13, v4

    :goto_3
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    const/4 v4, 0x1

    move v14, v4

    :goto_4
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, v49

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    move/from16 v16, v0

    move-object/from16 v0, v49

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    move/from16 v17, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v4, p1

    move/from16 v6, p4

    invoke-virtual/range {v3 .. v25}, Lcom/broadcom/bt/service/map/MapService;->msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5           #status:B
    .end local v25           #s_virtual_folder:Ljava/lang/String;
    .end local v49           #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :goto_5
    monitor-exit p0

    return-void

    .restart local v5       #status:B
    .restart local v25       #s_virtual_folder:Ljava/lang/String;
    .restart local v49       #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :cond_1
    const/4 v4, 0x0

    move v10, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move v11, v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    move v12, v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    move v13, v4

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    move v14, v4

    goto :goto_4

    :cond_6
    const/4 v5, 0x2

    const/4 v3, 0x0

    :try_start_1
    move-object v0, v3

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    const-string v3, "MapEventLoop"

    const-string v4, "No more messages"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object/from16 v26, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-string v38, "0"

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-string v41, ""

    const-string v42, ""

    const-string v43, ""

    const-string v44, ""

    const-string v45, ""

    const-string v46, ""

    const-string v47, ""

    const-string v48, ""

    move/from16 v27, p1

    move/from16 v28, v5

    invoke-virtual/range {v26 .. v48}, Lcom/broadcom/bt/service/map/MapService;->msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .end local v5           #status:B
    .end local v25           #s_virtual_folder:Ljava/lang/String;
    .end local v49           #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    .end local v50           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v50       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_7
    :try_start_2
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMCEGetMsgEntry - did not find session for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public declared-synchronized onMCEGetMsgListInfo(ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 21
    .parameter "session_id"
    .parameter "folder_path"
    .parameter "parameter_mask"
    .parameter "max_list_cnt"
    .parameter "list_start_offset"
    .parameter "subject_length"
    .parameter "msg_mask"
    .parameter "period_begin"
    .parameter "period_end"
    .parameter "read_status"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "MapEventLoop"

    const-string v4, "onMCEGetMsgListInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .local v20, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v20, :cond_2

    :try_start_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, s_provider_folder:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "root/telecom"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "root"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    .end local v7           #s_provider_folder:Ljava/lang/String;
    const/4 v8, 0x2

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/broadcom/bt/service/map/MapService;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    .restart local v7       #s_provider_folder:Ljava/lang/String;
    :cond_1
    :try_start_2
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v3, v0

    iget-object v3, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v4, v0

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v5, v0

    iget-object v5, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    move/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v18, p13

    invoke-interface/range {v3 .. v18}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v7           #s_provider_folder:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object/from16 v19, v3

    .local v19, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MapEventLoop"

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v19           #e:Landroid/os/RemoteException;
    .end local v20           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v20       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_2
    :try_start_4
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMCEGetMsgListInfo - did not find session for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCENotifyRegister(IB)V
    .locals 6
    .parameter "mse_session_id"
    .parameter "on_off"

    .prologue
    const-string v3, "MapEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v3, "MapEventLoop"

    const-string v4, "onMCENotifyRegister"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v3, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v2, :cond_1

    :try_start_1
    const-string v1, "off"

    .local v1, notificationmode:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v1, "on"

    :cond_0
    iget-object v3, v2, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v3, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v2, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v2, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v3, p1, v4, v5, v1}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1           #notificationmode:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "MapEventLoop"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v2       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    :try_start_3
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMCENotifyRegister - did not find session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCEPushMsg(IBBBLjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "request_id"
    .parameter "msg_transparent"
    .parameter "msg_retry"
    .parameter "msg_charset"
    .parameter "msg_folder"
    .parameter "msg_content_uri"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "MapEventLoop"

    const-string v4, "onMCEPushMsg"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .local v14, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v14, :cond_2

    :try_start_1
    iget-object v3, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, s_virtual_folder:Ljava/lang/String;
    invoke-virtual {v14, v15}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, s_provider_folder:Ljava/lang/String;
    const-string v3, "root/telecom"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "root"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x1

    move/from16 v4, p1

    move-object/from16 v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/broadcom/bt/service/map/MapService;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v10           #s_provider_folder:Ljava/lang/String;
    .end local v15           #s_virtual_folder:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .restart local v10       #s_provider_folder:Ljava/lang/String;
    .restart local v15       #s_virtual_folder:Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v3, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v3, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v6, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const-string v4, "root"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v12}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v10           #s_provider_folder:Ljava/lang/String;
    .end local v15           #s_virtual_folder:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v13, v3

    .local v13, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MapEventLoop"

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v13           #e:Landroid/os/RemoteException;
    .end local v14           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v14       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_2
    :try_start_4
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMCEPushMsg - did not find session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCESetMsgStatus(IJBB)V
    .locals 12
    .parameter "session_id"
    .parameter "msg_handle"
    .parameter "status_type"
    .parameter "status_value"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "MapEventLoop"

    const-string v1, "onMCESetMsgStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .local v9, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v9, :cond_1

    const/4 v10, 0x0

    .local v10, s_provider_id:Ljava/lang/String;
    :try_start_1
    iget-object v0, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v11, 0x0

    .local v11, s_virtual_folder:Ljava/lang/String;
    iget-object v0, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, v10}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v2, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v3, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v1, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v10           #s_provider_id:Ljava/lang/String;
    .end local v11           #s_virtual_folder:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .restart local v10       #s_provider_id:Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v0, "MapEventLoop"

    const-string v1, "onMCESetMsgStatus : Cannot get provider id failing.  Oops how did this happen?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, ""

    move v1, p1

    move-object v2, v10

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    .local v8, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v0, "MapEventLoop"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v8           #e:Landroid/os/RemoteException;
    .end local v9           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .end local v10           #s_provider_id:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v9       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    :try_start_4
    const-string v0, "MapEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMCESetMsgStatus - did not find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCEUpdateInbox(I)V
    .locals 5
    .parameter "mse_session_id"

    .prologue
    const-string v2, "MapEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v2, "MapEventLoop"

    const-string v3, "onMCEUpdateInbox"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContextFromSessionId(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_0

    :try_start_1
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    :try_start_3
    const-string v2, "MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMCEUpdateInbox - did not find context for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMSESetFolder(ILjava/lang/String;)V
    .locals 4
    .parameter "mse_session_id"
    .parameter "current_folder"

    .prologue
    const-string v1, "MapEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v1, "MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMSESetFolder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    .local v0, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v0, :cond_0

    iput-object p2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMSESetFolder - did not find session for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onMSEStarted(Ljava/lang/String;BII)V
    .locals 6
    .parameter "mse_name"
    .parameter "mse_type"
    .parameter "mse_instance_id"
    .parameter "status_code"

    .prologue
    const-string v3, ")"

    const-string v3, "MapEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v3, "MapEventLoop"

    const-string v4, "onMSEStarted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v3, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContextByDsName(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .local v2, mse_status:B
    iput p3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    if-nez p4, :cond_0

    const/4 v2, 0x2

    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mse service started successfully ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v2}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2           #mse_status:B
    :goto_1
    monitor-exit p0

    return-void

    .restart local v2       #mse_status:B
    :cond_0
    :try_start_2
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not start mse service ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v2           #mse_status:B
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .restart local v2       #mse_status:B
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #mse_status:B
    :cond_1
    const-string v3, "MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMSEStarted - did not find context for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized onMSEStopped(II)V
    .locals 6
    .parameter "mse_instance_id"
    .parameter "status_code"

    .prologue
    const-string v2, "MapEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v2, "MapEventLoop"

    const-string v3, "onMSEStopped"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_0

    :try_start_1
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V

    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/broadcom/bt/service/map/MapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onMsgGetInProgress()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "MapEventLoop"

    const-string v1, "onMsgGetInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMsgPushInProgress()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "MapEventLoop"

    const-string v1, "onMsgPushInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMapService(Lcom/broadcom/bt/service/map/MapService;)V
    .locals 2
    .parameter "service"

    .prologue
    const-string v0, "MapEventLoop"

    const-string v1, "setMapService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    .prologue
    const-string v0, "MapEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v0, "MapEventLoop"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/map/MapEventLoop$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAP Event Loop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/service/map/MapEventLoop$1;-><init>(Lcom/broadcom/bt/service/map/MapEventLoop;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    const-string v0, "MapEventLoop"

    const-string v1, "Starting Event Loop thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/MapEventLoop;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "MapEventLoop"

    const-string v2, "Stop called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mService:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/MapService;->unregisterallProviders()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/map/MapEventLoop;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
