.class public Lcom/broadcom/bt/util/bmsg/BMessage;
.super Lcom/broadcom/bt/util/bmsg/BMessageBase;
.source "BMessage.java"


# static fields
.field private static final ERR_CHECK:Z = true

.field private static final TAG:Ljava/lang/String; = "BMessage"


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBase;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->createBMsg()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setNativeRef(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create BMesage object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .parameter "nativeRef"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/bmsg/BMessage;->setNativeRef(I)Z

    return-void
.end method

.method public static parse(Ljava/io/File;)Lcom/broadcom/bt/util/bmsg/BMessage;
    .locals 5
    .parameter "f"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "BMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Invalid file."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->parseBMsgFile(Ljava/lang/String;)I

    move-result v0

    .local v0, nativeObj:I
    if-lez v0, :cond_2

    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessage;

    invoke-direct {v1, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;-><init>(I)V

    goto :goto_0

    :cond_2
    move-object v1, v4

    goto :goto_0
.end method


# virtual methods
.method public addEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .locals 4

    .prologue
    iget v2, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v2}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->addBMsgEnv(I)I

    move-result v0

    .local v0, nativeObject:I
    if-gtz v0, :cond_0

    const-string v2, "BMessage"

    const-string v3, "Unable to create native Envelope object for BMessage"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;-><init>(Lcom/broadcom/bt/util/bmsg/BMessage;I)V

    .local v1, obj:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    move-object v2, v1

    goto :goto_0
.end method

.method public addOriginator()Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .locals 4

    .prologue
    iget v2, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v2}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->addBMsgOrig(I)I

    move-result v0

    .local v0, nativeObject:I
    if-gtz v0, :cond_0

    const-string v2, "BMessage"

    const-string v3, "Unable to create native VCard for BMessage originator object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageBase;I)V

    .local v1, vCard:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    move-object v2, v1

    goto :goto_0
.end method

.method public decodeSMSSubmitPDU(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "submitPDU"

    .prologue
    const-string v0, "BMessage"

    const-string v1, "decodeSMSSubmitPDU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->decodeSMSSubmitPDU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeSMSDeliverPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "content"
    .parameter "recipient"
    .parameter "sender"
    .parameter "dateTime"

    .prologue
    const-string v0, "BMessage"

    const-string v1, "encodeSMSDeliverPDU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, p3, p4}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->encodeSMSDeliverPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessage;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->deleteBMsg(I)V

    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessage;->clearNativeRef()V

    :cond_0
    return-void
.end method

.method public getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .locals 3

    .prologue
    iget v2, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v2}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBMsgEnv(I)I

    move-result v0

    .local v0, nativeObject:I
    if-gtz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;-><init>(Lcom/broadcom/bt/util/bmsg/BMessage;I)V

    .local v1, vCard:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    move-object v2, v1

    goto :goto_0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBMsgFldr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()B
    .locals 1

    .prologue
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBMsgMType(I)B

    move-result v0

    return v0
.end method

.method public getOriginator()Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .locals 3

    .prologue
    iget v2, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v2}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBMsgOrig(I)I

    move-result v0

    .local v0, nativeMessageVCard:I
    if-gtz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageBase;I)V

    .local v1, vCard:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    move-object v2, v1

    goto :goto_0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->isBMsgRd(I)Z

    move-result v0

    return v0
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 1
    .parameter "folder"

    .prologue
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBMsgFldr(ILjava/lang/String;)V

    return-void
.end method

.method public setMessageType(B)V
    .locals 3
    .parameter "msgType"

    .prologue
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->hasBitError(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBMsgMType(IB)V

    goto :goto_0
.end method

.method public setReadStatus(Z)V
    .locals 1
    .parameter "isRead"

    .prologue
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBMsgRd(IZ)V

    return-void
.end method

.method public write(Ljava/io/File;)Z
    .locals 3
    .parameter "f"

    .prologue
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". File already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->writeBMsgFile(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
