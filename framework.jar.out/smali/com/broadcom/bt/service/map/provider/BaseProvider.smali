.class public abstract Lcom/broadcom/bt/service/map/provider/BaseProvider;
.super Ljava/lang/Object;
.source "BaseProvider.java"

# interfaces
.implements Lcom/broadcom/bt/service/map/IMapEventHandler;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/BaseProvider$1;,
        Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "BaseProvider"

.field public static final folderListingStatus_InvalidParentPath:B = 0x1t

.field public static final folderListingStatus_NoFolders:B = 0x2t

.field public static final folderListingStatus_Success:B


# instance fields
.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field protected mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

.field protected mIsStarted:Z

.field protected mNotificationsEnabled:Z

.field protected mProviderType:B

.field protected mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

.field protected mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothDisable()V

    return-void
.end method

.method protected static getBoolean(Landroid/database/Cursor;IZ)Z
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x1

    .line 454
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v2, v1, :cond_0

    move v1, v2

    .line 457
    :goto_0
    return v1

    .line 454
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get boolean value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    .line 457
    goto :goto_0
.end method

.method protected static getInt(Landroid/database/Cursor;II)I
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    .line 436
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 439
    :goto_0
    return v1

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get int value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    .line 439
    goto :goto_0
.end method

.method protected static getLong(Landroid/database/Cursor;IJ)J
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    .line 445
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 448
    :goto_0
    return-wide v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get long value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v1, p2

    .line 448
    goto :goto_0
.end method

.method protected static isRootFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 431
    const-string v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static isValidMsgStatus(B)Z
    .locals 2
    .parameter "val"

    .prologue
    const/4 v1, 0x1

    .line 395
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

.method private declared-synchronized onBluetoothDisable()V
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    const-string v0, "BaseProvider"

    const-string/jumbo v1, "onBluetoothDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    const-string v0, "BaseProvider"

    const-string/jumbo v1, "onBluetoothEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static parseBMessage(Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessage;
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const-string v6, "BaseProvider"

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, filePath:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 529
    :try_start_0
    const-string v2, "BaseProvider"

    const-string v3, "Unable to parse BMessage file. Null file path"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 543
    :goto_0
    return-object v2

    .line 531
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    .line 532
    move-object v0, p0

    .line 540
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/broadcom/bt/util/bmsg/BMessage;->parse(Ljava/io/File;)Lcom/broadcom/bt/util/bmsg/BMessage;

    move-result-object v2

    goto :goto_0

    .line 533
    :cond_1
    const-string v2, "file://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 534
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 536
    :cond_2
    const-string v2, "BaseProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse BMessage file. URI is not a file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 537
    goto :goto_0

    .line 541
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 542
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BaseProvider"

    const-string v2, "Unable to parse BMessage file."

    invoke-static {v6, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 543
    goto :goto_0
.end method

.method protected static setBMessageHeaderInfo(Lcom/broadcom/bt/util/bmsg/BMessage;BLjava/lang/String;Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 7
    .parameter "bMsg"
    .parameter "vCardVersionId"
    .parameter "folderPath"
    .parameter "mInfo"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 484
    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    if-eq p1, v5, :cond_1

    .line 486
    :cond_0
    const-string v3, "BaseProvider"

    const-string v4, "Unable to set BMessage Header Info"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-boolean v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/util/bmsg/BMessage;->setReadStatus(Z)V

    .line 492
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/bmsg/BMessage;->setFolder(Ljava/lang/String;)V

    .line 493
    invoke-static {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->setBMessageType(Lcom/broadcom/bt/util/bmsg/BMessage;Lcom/broadcom/bt/service/map/MessageInfo;)V

    .line 496
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessage;->addOriginator()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v1

    .line 505
    .local v1, bOriginator:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    invoke-virtual {v1, p1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 506
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {v1, v5, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 507
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    invoke-virtual {v1, v6, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 510
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessage;->addEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v0

    .line 513
    .local v0, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v2

    .line 520
    .local v2, bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 521
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 522
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    invoke-virtual {v2, v6, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    goto :goto_0
.end method

.method protected static setBMessageType(Lcom/broadcom/bt/util/bmsg/BMessage;Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 2
    .parameter "bMsg"
    .parameter "mInfo"

    .prologue
    .line 462
    if-eqz p1, :cond_0

    .line 463
    iget-byte v0, p1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    packed-switch v0, :pswitch_data_0

    .line 476
    :goto_0
    :pswitch_0
    const-string v0, "BaseProvider"

    const-string v1, "Unable to set message type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    :goto_1
    return-void

    .line 465
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_1

    .line 468
    :pswitch_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_1

    .line 471
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_1

    .line 474
    :pswitch_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected static setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 4
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    const-string v3, " "

    .line 420
    if-nez p1, :cond_0

    .line 428
    :goto_0
    return-void

    .line 423
    :cond_0
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMsgRecipientNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 4
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    const-string v3, " "

    .line 409
    if-nez p1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMsgReplyToNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 4
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    const-string v3, " "

    .line 399
    if-nez p1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMsgSenderNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected abstract disableNotifications(Ljava/lang/String;)Z
.end method

.method protected abstract enableNotifications(Ljava/lang/String;)Z
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    const-string v0, "BaseProvider"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->stop()V

    .line 139
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->finish()V

    .line 146
    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 149
    :cond_1
    return-void
.end method

.method protected getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 226
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->start()V

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 229
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    return-object v0
.end method

.method protected getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getProviderId()Ljava/lang/String;
.end method

.method protected getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "resourceId"
    .parameter "defaultVal"

    .prologue
    .line 548
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    if-gtz p1, :cond_0

    move-object v1, p2

    .line 556
    :goto_0
    return-object v1

    .line 552
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 553
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 554
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get string resource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    .line 556
    goto :goto_0
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 5
    .parameter "ctx"
    .parameter "startImmediately"

    .prologue
    const/4 v4, 0x0

    .line 120
    const-string v1, "BaseProvider"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    .line 122
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 123
    new-instance v1, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;Lcom/broadcom/bt/service/map/provider/BaseProvider$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    .line 125
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 126
    invoke-static {v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->addFilter_DSDiscover(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 127
    .local v0, ifilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    iget-object v3, v3, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->start()V

    .line 133
    :cond_0
    return-void
.end method

.method protected abstract onClientConnected(Ljava/lang/String;)V
.end method

.method protected abstract onClientDisconnected()V
.end method

.method protected declared-synchronized onDSDiscoverEvent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :goto_0
    monitor-exit p0

    return-void

    .line 621
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->registerDatasources()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V
.end method

.method protected abstract onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
.end method

.method protected abstract onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
.end method

.method public onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "deviceName"

    .prologue
    .line 249
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMCEConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onClientConnected(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    .line 255
    const-string v0, "BaseProvider"

    const-string/jumbo v1, "onMCEDisconnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onClientDisconnected()V

    .line 257
    return-void
.end method

.method public onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "request_id"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "maxEntries"
    .parameter "offset"

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get folder listing. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 332
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 8
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSet"
    .parameter "includeAttachment"

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get message. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 366
    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V

    goto :goto_0
.end method

.method public onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 17
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "requestId"
    .parameter "folderPath"
    .parameter "parameterMask"
    .parameter "maxListCnt"
    .parameter "listStartOffset"
    .parameter "subjectLength"
    .parameter "msgMask"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    const-string v2, "BaseProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to update get message listing. Wrong providerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    return-void

    :cond_0
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    .line 343
    invoke-virtual/range {v2 .. v16}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "msgTransparent"
    .parameter "msgRetry"
    .parameter "msgCharset"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "msgContentUri"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to push message. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 356
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "notificationMode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, ","

    const-string v3, "BaseProvider"

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, isSuccess:Z
    const-string v1, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMCERegisterForNotification("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    const-string v1, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to enable/disable notifications. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string/jumbo v1, "on"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    iget-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-eqz v1, :cond_2

    .line 290
    const/4 v0, 0x1

    .line 307
    :cond_1
    :goto_1
    if-ne v0, v4, :cond_7

    .line 309
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2, p3, v5}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)I

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->enableNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    iput-boolean v4, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 293
    const/4 v0, 0x1

    goto :goto_1

    .line 295
    :cond_3
    const-string v1, "BaseProvider"

    const-string v1, "Unable to enable notifications"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 297
    :cond_4
    const-string/jumbo v1, "off"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 298
    iget-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-nez v1, :cond_5

    .line 299
    const/4 v0, 0x1

    goto :goto_1

    .line 300
    :cond_5
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->disableNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    iput-boolean v5, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 302
    const/4 v0, 0x1

    goto :goto_1

    .line 305
    :cond_6
    const-string v1, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to enable/disable notifications: invalid mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 313
    :cond_7
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2, p3, v4}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)I

    goto :goto_0
.end method

.method public onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 6
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "statusType"
    .parameter "statusValue"

    .prologue
    const-string v2, "BaseProvider"

    .line 371
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const-string v0, "BaseProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMCESetMessageStatus(): Unable to set message status. Wrong providerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    .line 377
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 379
    :cond_1
    const/4 v0, 0x2

    if-ne p6, v0, :cond_2

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    .line 380
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 383
    :cond_2
    const-string v0, "BaseProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMCESetMessageStatus(): invalid message status type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update inbox. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onUpdateInbox(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMSEInstanceStarted()V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method protected onMSEInstanceStopped()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method public onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 261
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 262
    const-string v0, "BaseProvider"

    const-string v1, "Unable to start/stop provider: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 267
    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 268
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onMSEInstanceStarted()V

    goto :goto_0

    .line 269
    :cond_2
    if-ne p3, v1, :cond_0

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 271
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onMSEInstanceStopped()V

    goto :goto_0
.end method

.method public onMsgGetInProgress()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onMsgPushInProgress()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 3
    .parameter "proxyObject"

    .prologue
    .line 209
    check-cast p1, Lcom/broadcom/bt/service/map/BluetoothMAP;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 213
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider started!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->registerDatasources()V

    .line 216
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onStarted()V

    .line 217
    return-void
.end method

.method protected abstract onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method protected abstract onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method protected onStarted()V
    .locals 0

    .prologue
    .line 629
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method protected abstract onUpdateInbox(Ljava/lang/String;)V
.end method

.method protected preStart()V
    .locals 0

    .prologue
    .line 610
    return-void
.end method

.method protected preStop()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method protected registerDS(IILjava/lang/String;IZZ[Ljava/lang/String;)Z
    .locals 17
    .parameter "providerType"
    .parameter "providerNameResourceId"
    .parameter "datasourceId"
    .parameter "datasourceNameResourceId"
    .parameter "supportsMessageFilter"
    .parameter "supportsMessageOffsetBrowsing"
    .parameter "folderMappings"

    .prologue
    .line 563
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 564
    .local v15, providerDisplayName:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 565
    .local v14, dsDisplayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-object v3, v0

    if-eqz v3, :cond_0

    if-nez p3, :cond_1

    .line 566
    :cond_0
    const-string v3, "BaseProvider"

    const-string v4, "Unable to register datasource. Proxy or datasource is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v3, 0x0

    .line 575
    :goto_0
    return v3

    .line 570
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    move-object v4, v0

    move/from16 v0, p1

    int-to-byte v0, v0

    move v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v7

    if-nez v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    :goto_1
    if-nez v14, :cond_3

    move-object/from16 v10, p3

    :goto_2
    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v3 .. v13}, Lcom/broadcom/bt/service/map/BluetoothMAP;->init(Landroid/content/Context;Lcom/broadcom/bt/service/map/IMapEventHandler;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)I

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/broadcom/bt/service/map/BluetoothMAP;->registerDSProvider()I

    move-result v16

    .line 575
    .local v16, status:I
    if-nez v16, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    .end local v16           #status:I
    :cond_2
    move-object v8, v15

    .line 570
    goto :goto_1

    :cond_3
    move-object v10, v14

    goto :goto_2

    .line 575
    .restart local v16       #status:I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected abstract registerDatasources()V
.end method

.method protected declared-synchronized start()V
    .locals 3

    .prologue
    const-string v0, "BaseProvider"

    .line 158
    monitor-enter p0

    :try_start_0
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 161
    const-string v0, "BaseProvider"

    const-string v1, "Unable to start provider. Invalid context specified,"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 165
    const-string v0, "BaseProvider"

    const-string v1, "Cannot start provider. Already started..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->preStart()V

    .line 172
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected startMSE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    const/4 v3, 0x0

    .line 588
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-nez v1, :cond_0

    .line 589
    const-string v1, "BaseProvider"

    const-string v2, "Unable to start datasource. Proxy  is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 594
    :goto_0
    return v1

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->startMSEInstance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 594
    .local v0, status:I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method protected abstract startMSEInstance()V
.end method

.method protected declared-synchronized stop()V
    .locals 3

    .prologue
    const-string v0, "TAG"

    .line 182
    monitor-enter p0

    :try_start_0
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 185
    const-string v0, "BaseProvider"

    const-string v1, "Cannot stop provider. Already stopped..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->preStop()V

    .line 190
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->unregisterDatasources()V

    .line 192
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->finish()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 196
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 198
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onStopped()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected stopMSE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    const/4 v3, 0x0

    .line 598
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-nez v1, :cond_0

    .line 599
    const-string v1, "BaseProvider"

    const-string v2, "Unable to stop datasource. Proxy  is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 604
    :goto_0
    return v1

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 604
    .local v0, status:I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method protected abstract stopMSEInstance()V
.end method

.method protected unregisterDS(Ljava/lang/String;)Z
    .locals 4
    .parameter "datasourceId"

    .prologue
    const/4 v3, 0x0

    .line 579
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 580
    :cond_0
    const-string v1, "BaseProvider"

    const-string v2, "Unable to unregister datasource. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 584
    :goto_0
    return v1

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/broadcom/bt/service/map/BluetoothMAP;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 584
    .local v0, status:I
    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method protected abstract unregisterDatasources()V
.end method
