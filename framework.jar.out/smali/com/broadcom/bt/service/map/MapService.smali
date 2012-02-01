.class public Lcom/broadcom/bt/service/map/MapService;
.super Lcom/broadcom/bt/service/map/IMapService$Stub;
.source "MapService.java"


# static fields
.field private static final D:Z = true

.field private static final DISABLED_MAP_PROVIDERS:Ljava/lang/String; = "DisabledMapProviders"

.field private static final TAG:Ljava/lang/String; = "MapService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFinished:Z

.field private mProviders:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/broadcom/bt/service/map/MapService;->Native_InitMapService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/IMapService$Stub;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_map"

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapEventLoop;

    .local v0, mSvc:Lcom/broadcom/bt/service/map/MapEventLoop;
    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->setMapService(Lcom/broadcom/bt/service/map/MapService;)V

    return-void
.end method

.method private native Native_BluetoothMapMSEFolderListingResponse(IBIILjava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V
.end method

.method private native Native_BluetoothMapMSEMsgEntryResponse(IBIIIIBBBBBJBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native Native_BluetoothMapMSEMsgListInfoResponse(IBILjava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSENotifyClients(IBJLjava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSENotifyRegistrationResponse(IB)V
.end method

.method private native Native_BluetoothMapMSEPushResponse(IJB)V
.end method

.method private native Native_BluetoothMapMSESetMsgStatusResponse(IBB)V
.end method

.method private native Native_BluetoothMapMSEStart(Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSEStop(I)V
.end method

.method private native Native_CleanupMapService()V
.end method

.method private static native Native_InitMapService()V
.end method


# virtual methods
.method public disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    const-string v2, "MapService"

    const-string v3, "disableProvider"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    const-string v3, "DisabledMapProviders"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, se:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    const-string v3, "MapService"

    const-string v4, "enableProvider"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    const-string v4, "DisabledMapProviders"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, se:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public enumRegisteredProviders()[Ljava/lang/String;
    .locals 11

    .prologue
    const-string v10, ":"

    const-string v7, "MapService"

    const-string v8, "enumRegisteredProviders"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    const-string v8, "DisabledMapProviders"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .local v0, allProps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v7

    iget-object v8, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/2addr v7, v8

    new-array v5, v7, [Ljava/lang/String;

    .local v5, ret:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    iget-object v7, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v1, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":enabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p0
    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":disabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_1
    return-object v5
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/MapService;->finish()V

    invoke-super {p0}, Lcom/broadcom/bt/service/map/IMapService$Stub;->finalize()V

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "MapService"

    const-string v1, "MapService.finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/MapService;->unregisterallProviders()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V
    .locals 12
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "folder_path"
    .parameter "status"
    .parameter "folder_info"

    .prologue
    const-string v2, "MapService"

    const-string v3, "FolderListingResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v11

    .local v11, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v11, :cond_2

    if-nez p5, :cond_1

    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p6

    array-length v0, v0

    move v2, v0

    if-ge v10, v2, :cond_0

    const-string v2, "MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FolderListingResponse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p6, v10

    iget-wide v4, v4, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p6, v10

    iget-object v4, v4, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p6, v10

    iget-object v4, v4, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p6

    move-object v1, v11

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    const/4 v5, 0x1

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-wide v2, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    long-to-int v6, v2

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-object v7, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-object v8, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-wide v2, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    long-to-int v2, v2

    int-to-byte v9, v2

    move-object v2, p0

    move v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    .end local v10           #i:I
    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_1

    :cond_2
    const-string v2, "MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FolderListingResponse - session not found for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getCallback(I)Lcom/broadcom/bt/service/map/IMapCallback;
    .locals 4
    .parameter "mse_instance_id"

    .prologue
    const/4 v0, 0x0

    .local v0, callback:Lcom/broadcom/bt/service/map/IMapCallback;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v1, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget v3, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    if-ne v3, p1, :cond_1

    iget-object v0, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    .end local v1           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    return-object v0

    .restart local v1       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .locals 4
    .parameter "mse_session_id"

    .prologue
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v2

    .local v2, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v2, :cond_0

    move-object v3, v2

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v2           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :goto_1
    return-object v3

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .restart local v2       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v2           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 3
    .parameter "mse_instance_id"

    .prologue
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    if-ne v2, p1, :cond_0

    move-object v2, v0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v2

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getContext(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 3
    .parameter "mse_name"
    .parameter "mse_type"

    .prologue
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;B)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v2

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 3
    .parameter "provider_id"
    .parameter "data_source_id"

    .prologue
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v2

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getContextByDsName(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 3
    .parameter "dsName"
    .parameter "mse_type"

    .prologue
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget-byte v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    if-ne p2, v2, :cond_0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v2

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getContextFromSessionId(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 3
    .parameter "mse_session_id"

    .prologue
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v2

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMsgFailResponse(IJB)V
    .locals 6
    .parameter "session_id"
    .parameter "message_id"
    .parameter "status"

    .prologue
    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    return-void
.end method

.method public getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 6
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "message_id"
    .parameter "status"
    .parameter "msg_file_path"

    .prologue
    const-string v0, "MapService"

    const-string v1, "GetMsgResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p5, :cond_0

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, p4}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;)J

    move-result-wide v2

    move-object v0, p0

    move v1, p1

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, p4}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;)J

    move-result-wide v2

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    return-void
.end method

.method isProviderDisabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "provider_id"
    .parameter "data_source_id"
    .parameter "data_source_name"

    .prologue
    const/4 v4, 0x0

    const-string v6, "MapService"

    const-string v5, ":"

    const-string v2, "MapService"

    const-string v2, "isProviderDisabled"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    const-string v3, "DisabledMapProviders"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, sProp:Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method isRegistered(BLjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    const/4 v2, 0x0

    .local v2, ret:Z
    const-string v3, "MapService"

    const-string v4, "isRegistered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(BLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    return v2

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method isRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    const/4 v2, 0x0

    .local v2, ret:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    return v2

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .parameter "mse_session_id"
    .parameter "status"
    .parameter "refdata"
    .parameter "parameter_mask"
    .parameter "org_msg_size"
    .parameter "attachment_size"
    .parameter "is_text"
    .parameter "is_high_priority"
    .parameter "is_read"
    .parameter "is_sent"
    .parameter "is_protected"
    .parameter "msg_handle"
    .parameter "msg_type"
    .parameter "reception_status"
    .parameter "subject"
    .parameter "date_time"
    .parameter "sender_name"
    .parameter "sender_addressing"
    .parameter "recipient_name"
    .parameter "recipient_addressing"
    .parameter "replyto_addressing"
    .parameter "folder_path"

    .prologue
    const-string v3, "MapService"

    const-string v4, "MsgEntryResponse"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v3

    iget-object v3, v3, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v0, v3

    move-object/from16 v1, p12

    move-object/from16 v2, p22

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v17, p13

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v23, p19

    move-object/from16 v24, p20

    move-object/from16 v25, p21

    invoke-direct/range {v3 .. v25}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEMsgEntryResponse(IBIIIIBBBBBJBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 7
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "parent_path"
    .parameter "status"
    .parameter "mse_time"
    .parameter "new_msg"
    .parameter "msg_info"

    .prologue
    const-string v2, "MapService"

    const-string v0, "MapService"

    const-string v0, "MsgListingResponse"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v6

    .local v6, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v6, :cond_1

    const/4 v3, 0x0

    .local v3, listSize:I
    if-nez p5, :cond_0

    iput-object p8, v6, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    array-length v3, p8

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEMsgListInfoResponse(IBILjava/lang/String;B)V

    .end local v3           #listSize:I
    :goto_0
    return-void

    :cond_1
    const-string v0, "MapService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No client session found for session id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 4
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "message_id"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    const-string v2, "MapService"

    const-string v3, "MsgPushResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    .local v0, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p6}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, s_virtual_folder:Ljava/lang/String;
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v2, p4, v1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, p5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEPushResponse(IJB)V

    .end local v1           #s_virtual_folder:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 14
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "notification_type"
    .parameter "message_id"
    .parameter "folder_path"
    .parameter "old_folder_path"
    .parameter "msg_type"

    .prologue
    const-string v3, "MapService"

    const-string v4, "NotifyClient"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v12

    .local v12, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v12, :cond_2

    const/4 v11, 0x0

    .local v11, clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    iget-object v3, v12, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v12, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    check-cast v11, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    .restart local v11       #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    move-object v0, v11

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, msg_virtual_folder:Ljava/lang/String;
    const-string v3, "root"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .local v8, msg_virtual_folder_stripped:Ljava/lang/String;
    move-object v0, v11

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, msg_old_virtual_folder:Ljava/lang/String;
    const-string v3, "root/"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "root"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    iget v4, v12, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    move-object v0, v12

    move-object/from16 v1, p4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    move-object v3, p0

    move/from16 v5, p3

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSENotifyClients(IBJLjava/lang/String;Ljava/lang/String;B)V

    .end local v8           #msg_virtual_folder_stripped:Ljava/lang/String;
    .end local v9           #msg_old_virtual_folder:Ljava/lang/String;
    .end local v11           #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .end local v13           #msg_virtual_folder:Ljava/lang/String;
    :goto_0
    return-void

    .restart local v11       #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    const-string v3, "MapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotifyClient- error finding session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v11           #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_2
    const-string v3, "MapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotifyClient- error finding context for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "status"

    .prologue
    const-string v0, "MapService"

    const-string v1, "NotifyRegistrationResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p4}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSENotifyRegistrationResponse(IB)V

    return-void
.end method

.method public registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    .locals 10
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "provider_display_name"
    .parameter "provider_ds_id"
    .parameter "provider_ds_display_name"
    .parameter "feature_message_filter"
    .parameter "feature_message_offset_browsing"
    .parameter "folder_mappings"
    .parameter "callback"

    .prologue
    const-string v1, "MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisterDSProvider provider_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "provider name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p4}, Lcom/broadcom/bt/service/map/MapService;->isRegistered(BLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2, p4, p5}, Lcom/broadcom/bt/service/map/MapService;->isProviderDisabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/map/MapProviderContext;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_0
    return-void

    :cond_0
    const-string v1, "MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    .locals 0
    .parameter "mse_session_id"
    .parameter "status"
    .parameter "ref_data"
    .parameter "file_size"
    .parameter "folder_name"
    .parameter "cr_time"
    .parameter "mode"

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEFolderListingResponse(IBIILjava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method public setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "msg_folder"

    .prologue
    const-string v2, "MapService"

    const-string v3, "SetMsgStatusResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    .local v0, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p7}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, sVirtualFolder:Ljava/lang/String;
    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p5, :cond_0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v2, p6}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeMAPMsgId(Ljava/lang/String;)V

    .end local v1           #sVirtualFolder:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p4, p5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSESetMsgStatusResponse(IBB)V

    return-void

    .restart local v1       #sVirtualFolder:Ljava/lang/String;
    :cond_1
    if-nez p5, :cond_0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    const-string v3, "root/telecom/msg/deleted"

    invoke-virtual {v2, p6, v3}, Lcom/broadcom/bt/service/map/MapProviderContext;->setMAPMsgFolder(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0
.end method

.method public startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v4, "MapService"

    const-string v3, " "

    const-string v1, "MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartMSEInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_0

    const-string v1, "MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartMSEInstance starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    iget-byte v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    invoke-direct {p0, v1, v2, v3}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEStart(Ljava/lang/String;Ljava/lang/String;B)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartMSEInstance - error finding context for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v3, "MapService"

    const-string v1, "MapService"

    const-string v1, "StopMSEInstance"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEStop(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopMSEInstance - error finding context for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v5, "MapService"

    const-string v3, "MapService"

    const-string v3, "UnregisterDSProvider"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    const/4 v4, 0x1

    invoke-interface {v3, p1, p2, v4}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v3, "MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnregisterDSProvider - removing ctx for provider id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " provider_ds_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    return-void

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MapService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public unregisterallProviders()V
    .locals 4

    .prologue
    const-string v1, "MapService"

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MapService"

    const-string v2, "unregisterallProviders() - No Providers registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    const-string v1, "MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterallProviders - Stopping MSE instance Provider Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ProviderDSId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/map/MapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/map/MapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catch_0
    move-exception v1

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapService;->Native_CleanupMapService()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
