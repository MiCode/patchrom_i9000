.class public Lcom/broadcom/bt/util/bmsg/BMessageBody;
.super Lcom/broadcom/bt/util/bmsg/BMessageBase;
.source "BMessageBody.java"


# static fields
.field private static final ERR_CHECK:Z = true

.field private static final TAG:Ljava/lang/String; = "BMessageBody"


# instance fields
.field private mParent:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;I)V
    .locals 0
    .parameter "parent"
    .parameter "nativeRef"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBase;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBody;->mParent:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setNativeRef(I)Z

    return-void
.end method


# virtual methods
.method public addContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->addBBodyCont(I)I

    move-result v0

    .local v0, childNativeObject:I
    if-lez v0, :cond_0

    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageBody;I)V

    .end local v0           #childNativeObject:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCharSet()B
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBBodyCharset(I)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBBodyCont(I)I

    move-result v0

    .local v0, childNativeObject:I
    if-lez v0, :cond_0

    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageBody;I)V

    .end local v0           #childNativeObject:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEncoding()B
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBBodyEnc(I)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xe

    goto :goto_0
.end method

.method public getLanguage()B
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBBodyLang(I)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPartId()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBBodyPartId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultipart()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->isBBodyMultiP(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setCharSet(B)V
    .locals 3
    .parameter "charset"

    .prologue
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "BMessageBody"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBBodyCharset(IB)V

    goto :goto_0
.end method

.method public setEncoding(B)V
    .locals 3
    .parameter "encoding"

    .prologue
    if-ltz p1, :cond_0

    const/16 v0, 0xe

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, "BMessageBody"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBBodyEnc(IB)V

    goto :goto_0
.end method

.method public setLanguage(B)V
    .locals 3
    .parameter "lang"

    .prologue
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "BMessageBody"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBBodyLang(IB)V

    goto :goto_0
.end method

.method public setPartId(I)V
    .locals 1
    .parameter "partId"

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBBodyPartId(II)V

    :cond_0
    return-void
.end method
