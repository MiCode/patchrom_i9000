.class public Lcom/broadcom/bt/service/map/BluetoothMAP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothMAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;,
        Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;
    }
.end annotation


# static fields
.field public static final BTLIF_MA_CHARSET_NATIVE:I = 0x0

.field public static final BTLIF_MA_CHARSET_UNKNOWN:I = 0x2

.field public static final BTLIF_MA_CHARSET_UTF_8:I = 0x1

.field public static final BTLIF_MA_PRI_STATUS_HIGH:I = 0x1

.field public static final BTLIF_MA_PRI_STATUS_NON_HIGH:I = 0x2

.field public static final BTLIF_MA_PRI_STATUS_NO_FILTERING:I = 0x0

.field private static final D:Z = true

.field public static final LIST_STATUS_NO_LIST:B = 0x2t

.field public static final LIST_STATUS_SUCCESS:B = 0x0t

.field public static final MAP_FAIL:I = 0x1

.field public static final MAP_FAILED_TO_CREATE_MAP_SERVICE:I = 0x1

.field public static final MAP_FILTER_MSGTYPE_EMAIL:B = 0x4t

.field public static final MAP_FILTER_MSGTYPE_MMS:B = 0x8t

.field public static final MAP_FILTER_MSGTYPE_SMS_CDMA:B = 0x2t

.field public static final MAP_FILTER_MSGTYPE_SMS_GSM:B = 0x1t

.field public static final MAP_LENGTH_ADJUSTER:I = 0x16

.field public static final MAP_MSG_MASK_ATTACHMENT_SIZE:I = 0x400

.field public static final MAP_MSG_MASK_DATETIME:I = 0x2

.field public static final MAP_MSG_MASK_PRIORITY:I = 0x800

.field public static final MAP_MSG_MASK_PROTECTED:I = 0x4000

.field public static final MAP_MSG_MASK_READ:I = 0x1000

.field public static final MAP_MSG_MASK_RECEPTION_STATUS:I = 0x100

.field public static final MAP_MSG_MASK_RECIPIENT_ADDRESSING:I = 0x20

.field public static final MAP_MSG_MASK_RECIPIENT_NAME:I = 0x10

.field public static final MAP_MSG_MASK_SENDER_ADDRESSING:I = 0x8

.field public static final MAP_MSG_MASK_SENDER_NAME:I = 0x4

.field public static final MAP_MSG_MASK_SENT:I = 0x2000

.field public static final MAP_MSG_MASK_SIZE:I = 0x80

.field public static final MAP_MSG_MASK_SUBJECT:I = 0x1

.field public static final MAP_MSG_MASK_TEXT:I = 0x200

.field public static final MAP_MSG_MASK_TYPE:I = 0x40

.field public static final MAP_MSG_REPLYTO_ADDRESSING:I = 0x8000

.field public static final MAP_MSG_STATUS_FAIL:I = 0x3

.field public static final MAP_MSG_STATUS_INVALID_PARENT_PATH:I = 0x1

.field public static final MAP_MSG_STATUS_NO_MESSAGES:I = 0x2

.field public static final MAP_MSG_STATUS_SUCCESS:I = 0x0

.field public static final MAP_MSG_TYPE_EMAIL:I = 0x1

.field public static final MAP_MSG_TYPE_MMS:I = 0x8

.field public static final MAP_MSG_TYPE_SMS_CDMA:I = 0x4

.field public static final MAP_MSG_TYPE_SMS_GSM:I = 0x2

.field public static final MAP_NOTIFICATION_ALLOW:I = 0x0

.field public static final MAP_NOTIFICATION_FORBID:I = 0x1

.field public static final MAP_RCV_STATUS_COMPLETE:I = 0x0

.field public static final MAP_RCV_STATUS_FRACTIONED:I = 0x1

.field public static final MAP_RCV_STATUS_NOTIFICATION:I = 0x2

.field public static final MAP_REMOTE_EXECUTION_ERROR:I = 0x2

.field public static final MAP_STATUS_TYPE_DELETED:I = 0x2

.field public static final MAP_STATUS_TYPE_READ:I = 0x1

.field public static final MAP_SUCCESS:I = 0x0

.field public static final PROVIDER_TYPE_EMAIL:B = 0x1t

.field public static final PROVIDER_TYPE_MMS:B = 0x8t

.field public static final PROVIDER_TYPE_SMS_CDMA:B = 0x4t

.field public static final PROVIDER_TYPE_SMS_GSM:B = 0x2t

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_map"

.field private static final TAG:Ljava/lang/String; = "BluetoothMAP"

.field private static final V:Z = true


# instance fields
.field protected mFeatureMessageFilter:Z

.field protected mFolderMappings:[Ljava/lang/String;

.field protected mMapCallback:Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

.field protected mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

.field protected mMapService:Lcom/broadcom/bt/service/map/IMapService;

.field protected mProviderDisplayName:Ljava/lang/String;

.field protected mProviderDsDisplayName:Ljava/lang/String;

.field protected mProviderDsId:Ljava/lang/String;

.field protected mProviderId:Ljava/lang/String;

.field protected mProviderType:B

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mfeatureMessageOffsetBrowsing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "BluetoothMAP"

    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    new-instance v0, Lcom/broadcom/bt/service/map/BluetoothMAP$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP$1;-><init>(Lcom/broadcom/bt/service/map/BluetoothMAP;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "BluetoothMAP"

    const-string v0, "BluetoothMAP"

    invoke-static {v1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    const-string v1, "bluetooth_map"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BluetoothMAP"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/BluetoothMAP;-><init>()V

    .local v0, p:Lcom/broadcom/bt/service/map/BluetoothMAP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.MapService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isValidMsgStatus(B)Z
    .locals 2
    .parameter "val"

    .prologue
    const/4 v1, 0x1

    if-eq v1, p0, :cond_0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    const-string v2, "BluetoothMAP"

    const-string v1, "BluetoothMAP"

    const-string v1, "BluetoothMAP::disableProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/map/IMapService;->disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    const-string v2, "BluetoothMAP"

    const-string v1, "BluetoothMAP"

    const-string v1, "BluetoothMAP::enableProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/map/IMapService;->enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enumRegisteredProviders()[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "BluetoothMAP"

    const-string v5, "BluetoothMAP"

    const-string v5, "BluetoothMAP::enumRegisteredProviders"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v5}, Lcom/broadcom/bt/service/map/IMapService;->enumRegisteredProviders()[Ljava/lang/String;

    move-result-object v3

    .local v3, providers:[Ljava/lang/String;
    array-length v5, v3

    new-array v4, v5, [Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    .local v4, rp:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    aget-object v5, v3, v1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, parts:[Ljava/lang/String;
    new-instance v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    invoke-direct {v5, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;-><init>(Lcom/broadcom/bt/service/map/BluetoothMAP;)V

    aput-object v5, v4, v1

    aget-object v5, v4, v1

    const/4 v6, 0x0

    aget-object v6, v2, v6

    iput-object v6, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v6, v2, v6

    iput-object v6, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    aget-object v5, v4, v1

    const/4 v6, 0x2

    aget-object v6, v2, v6

    iput-object v6, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    aget-object v5, v4, v1

    const/4 v6, 0x3

    aget-object v6, v2, v6

    const-string v7, "enabled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    move v6, v9

    :goto_1
    iput-boolean v6, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->fEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v6, v8

    goto :goto_1

    .end local v2           #parts:[Ljava/lang/String;
    :cond_1
    move-object v5, v4

    .end local v1           #i:I
    .end local v3           #providers:[Ljava/lang/String;
    .end local v4           #rp:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;
    :goto_2
    return-object v5

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_2
.end method

.method public folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I
    .locals 9
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "folder_path"
    .parameter "status"
    .parameter "folder_info"

    .prologue
    const-string v0, "BluetoothMAP"

    const-string v1, "BluetoothMAP::folderListingResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    .local v8, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapService;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v8

    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothMAP"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    goto :goto_0
.end method

.method public getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msgFilePath"

    .prologue
    const-string v0, "BluetoothMAP"

    const-string v1, "BluetoothMAP::getMsgResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    .local v8, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapService;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v8

    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothMAP"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/broadcom/bt/service/map/IMapEventHandler;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "mapEventHandler"
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "provider_display_name"
    .parameter "provider_ds_id"
    .parameter "provider_ds_display_name"
    .parameter "feature_message_filter"
    .parameter "feature_message_offset_browsing"
    .parameter "folder_mappings"

    .prologue
    const-string v3, "BluetoothMAP"

    const-string v2, "BluetoothMAP"

    const-string v2, "BluetoothMAP::init"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, ret:I
    iput-object p2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    if-nez v2, :cond_0

    const-string v2, "BluetoothMAP"

    const-string v2, "BluetoothMAP::init - error getting map service"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-byte p3, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderType:B

    iput-object p4, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderId:Ljava/lang/String;

    iput-object p5, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDisplayName:Ljava/lang/String;

    iput-object p6, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsId:Ljava/lang/String;

    iput-object p7, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsDisplayName:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFeatureMessageFilter:Z

    iput-boolean p9, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mfeatureMessageOffsetBrowsing:Z

    iput-object p10, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFolderMappings:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/map/IMapService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/map/IMapService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothMAP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I
    .locals 11
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "parentPath"
    .parameter "status"
    .parameter "mseTime"
    .parameter "newMsg"
    .parameter "msgInfo"

    .prologue
    const-string v0, "BluetoothMAP"

    const-string v1, "BluetoothMAP::msgListingResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .local v10, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/map/IMapService;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v10

    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothMAP"

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x2

    goto :goto_0
.end method

.method public msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    const-string v0, "BluetoothMAP"

    const-string v1, "BluetoothMAP::msgPushResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    .local v8, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapService;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v8

    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothMAP"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    goto :goto_0
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)I
    .locals 10
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "notification_type"
    .parameter "message_id"
    .parameter "folder_path"
    .parameter "old_folder_path"
    .parameter "msg_type"

    .prologue
    const-string v0, "BluetoothMAP"

    const-string v1, "BluetoothMAP::notifyClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .local v9, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapService;->notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v9

    :catch_0
    move-exception v0

    move-object v8, v0

    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothMAP"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    goto :goto_0
.end method

.method public notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)I
    .locals 4
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "status"

    .prologue
    const-string v3, "BluetoothMAP"

    const-string v2, "BluetoothMAP"

    const-string v2, "BluetoothMAP::notifyRegistrationResponse"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/map/IMapService;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_0
.end method

.method public registerDSProvider()I
    .locals 13

    .prologue
    const-string v12, "BluetoothMAP"

    const-string v0, "BluetoothMAP"

    const-string v0, "BluetoothMAP::registerDSProvider"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .local v11, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    iget-byte v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderType:B

    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDisplayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsId:Ljava/lang/String;

    iget-object v5, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsDisplayName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFeatureMessageFilter:Z

    iget-boolean v7, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mfeatureMessageOffsetBrowsing:Z

    iget-object v8, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFolderMappings:[Ljava/lang/String;

    new-instance v9, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

    invoke-direct {v9, p0, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;-><init>(Lcom/broadcom/bt/service/map/BluetoothMAP;Lcom/broadcom/bt/service/map/BluetoothMAP;)V

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/map/IMapService;->registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v11

    :catch_0
    move-exception v0

    move-object v10, v0

    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothMAP"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x2

    goto :goto_0
.end method

.method public setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "requestId"
    .parameter "providerId"
    .parameter "dataSourceId"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "msg_folder"

    .prologue
    const-string v0, "BluetoothMAP"

    const-string v1, "BluetoothMAP::setMsgStatusResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .local v9, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapService;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v9

    :catch_0
    move-exception v0

    move-object v8, v0

    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothMAP"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    goto :goto_0
.end method

.method public startMSEInstance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v3, "BluetoothMAP"

    const-string v2, "BluetoothMAP"

    const-string v2, "BluetoothMAP::startMSEInstance"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/map/IMapService;->startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_0
.end method

.method public stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v3, "BluetoothMAP"

    const-string v2, "BluetoothMAP"

    const-string v2, "BluetoothMAP::stopMSEInstance"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/map/IMapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_0
.end method

.method public unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v3, "BluetoothMAP"

    const-string v2, "BluetoothMAP"

    const-string v2, "BluetoothMAP::unregisterDSProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/map/IMapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_0
.end method
