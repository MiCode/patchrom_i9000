.class public Lcom/broadcom/bt/service/map/provider/ProviderHelper;
.super Ljava/lang/Object;
.source "ProviderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProviderHelper"


# instance fields
.field mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

.field mProviderId:Ljava/lang/String;

.field mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-object v0, p1, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    return-void
.end method

.method public static addFilter_DSDiscover(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    if-nez p0, :cond_0

    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public static createIntent_DSDiscover()Landroid/content/Intent;
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getMSETime()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const-string v2, ""

    .local v2, sMSEDateTime:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .local v0, d:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "T"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSEDateTime :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private paramsValid(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"

    .prologue
    const-string v3, "(null)"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "ProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid param!. requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "datasourceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_1

    const-string v2, "(null)"

    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_2

    const-string v2, "(null)"

    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_1
    move-object v2, p2

    goto :goto_0

    :cond_2
    move-object v2, p3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "datasourceId"
    .parameter "notificationType"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "oldFolderPath"

    .prologue
    const/4 v1, 0x0

    const-string v2, "ProviderHelper"

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "ProviderHelper"

    const-string v0, "Unable to send notification. Proxy or datasource is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-nez v0, :cond_2

    const-string v0, "ProviderHelper"

    const-string v0, "Unable to send notification. Notification is not enabled"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-byte v7, v2, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)I

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public returnMessage(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "msgCharset"
    .parameter "msgUri"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->paramsValid(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ProviderHelper"

    const-string v1, "returnMessage(): invalid params. ignoring request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    goto :goto_0
.end method

.method public returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->paramsValid(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ProviderHelper"

    const-string v1, "returnNoMessage(): invalid params. ignoring request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    goto :goto_0
.end method

.method public sendFolderInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "status"
    .parameter "folderInfo"

    .prologue
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "Unable to send FolderInfo. Proxy or datasource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    move-result v7

    .local v7, ret:I
    if-nez v7, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_0
.end method

.method public sendFolderListingError_NoFolders(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    return-void
.end method

.method public sendFolderListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, folderInfos:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/FolderInfo;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Lcom/broadcom/bt/service/map/FolderInfo;

    .local v6, fldInfoArray:[Lcom/broadcom/bt/service/map/FolderInfo;
    invoke-interface {p4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    return-void
.end method

.method public sendFolderListings(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "folderNames"

    .prologue
    if-eqz p4, :cond_0

    array-length v0, p4

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "No folders specified"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    array-length v0, p4

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v7, folderInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/service/map/FolderInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, p4

    if-ge v8, v0, :cond_2

    new-instance v9, Lcom/broadcom/bt/service/map/FolderInfo;

    invoke-direct {v9}, Lcom/broadcom/bt/service/map/FolderInfo;-><init>()V

    .local v9, info:Lcom/broadcom/bt/service/map/FolderInfo;
    aget-object v0, p4, v8

    iput-object v0, v9, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v9           #info:Lcom/broadcom/bt/service/map/FolderInfo;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Lcom/broadcom/bt/service/map/FolderInfo;

    .local v6, fldInfoArray:[Lcom/broadcom/bt/service/map/FolderInfo;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    goto :goto_0
.end method

.method public sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getMSETime()Ljava/lang/String;

    move-result-object v6

    .local v6, mseTime:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, newMsg:B
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v8, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    return-void
.end method

.method public sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/MessageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, msgInfos:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getMSETime()Ljava/lang/String;

    move-result-object v6

    .local v6, mseTime:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, newMsg:B
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Lcom/broadcom/bt/service/map/MessageInfo;

    .local v8, msgInfoArray:[Lcom/broadcom/bt/service/map/MessageInfo;
    invoke-interface {p4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    return-void
.end method

.method public sendMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msgFilePath"

    .prologue
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "Unable to send sendMsg. Proxy or datasource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    move-result v7

    .local v7, ret:I
    if-nez v7, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_0
.end method

.method public sendMsgListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)Z
    .locals 10
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "parentPath"
    .parameter "status"
    .parameter "mseTime"
    .parameter "newMsg"
    .parameter "msgInfo"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "Unable to send MsgListInfo. Proxy or datasource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    move-result v9

    .local v9, ret:I
    if-nez v9, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "dataSourceId"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "Unable to send FolderInfo. Proxy or datasource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .local v8, ret:I
    if-nez v8, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendNotification_DeliveryFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    const/4 v2, 0x3

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public sendNotification_DeliverySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    const/4 v2, 0x1

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public sendNotification_MessageDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    const/4 v2, 0x7

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public sendNotification_MessageDelivered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    const/4 v2, 0x1

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public sendNotification_MessageShift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "oldFolderPath"

    .prologue
    const/16 v2, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    const/4 v2, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public sendNotification_SendingFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    const/4 v2, 0x4

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public sendNotification_SendingSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    const/4 v2, 0x2

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public sendPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "Unable to send sendPushResponse. Proxy or datasource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    move-result v7

    .local v7, ret:I
    if-nez v7, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_0
.end method

.method public setMsgPushStatus_Error(ILjava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"

    .prologue
    const-string v4, ""

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const-string v1, ""

    const/4 v5, 0x1

    const-string v1, ""

    move v1, p1

    move-object v3, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    return-void
.end method

.method public setMsgPushStatus_Success(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    return-void
.end method
