.class public Lcom/samsung/sec/android/application/csc/CscModemSettingService;
.super Landroid/app/Service;
.source "CscModemSettingService.java"


# static fields
.field private static INTENT:Landroid/content/Intent;


# instance fields
.field private CPLockCode:Ljava/lang/String;

.field private DEFAULT_CSC_FILE:Ljava/lang/String;

.field private NSPLockCode:Ljava/lang/String;

.field private NetLockCode:Ljava/lang/String;

.field private OTHERS_CSC_FILE:Ljava/lang/String;

.field private SPLockCode:Ljava/lang/String;

.field private generalLockInfo:I

.field private gprsAttachMode:I

.field mByteArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mItemCount:I

.field private mParser:Lcom/samsung/sec/android/application/csc/CscParser;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private networkMode:I

.field private ssms:I

.field private strNetworkMode:Ljava/lang/String;

.field private strSalesCode:Ljava/lang/String;

.field private unlockCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, ""

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->OTHERS_CSC_FILE:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 79
    const-string v0, ""

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strSalesCode:Ljava/lang/String;

    .line 80
    const-string v0, "auto"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strNetworkMode:Ljava/lang/String;

    .line 81
    iput v3, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->networkMode:I

    .line 82
    iput v3, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->gprsAttachMode:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->ssms:I

    .line 85
    const-string v0, ""

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NetLockCode:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->SPLockCode:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NSPLockCode:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->CPLockCode:Ljava/lang/String;

    .line 89
    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    .line 90
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->unlockCnt:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    .line 97
    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 654
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscModemSettingService$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService$2;-><init>(Lcom/samsung/sec/android/application/csc/CscModemSettingService;)V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/android/application/csc/CscModemSettingService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->updateLockInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/sec/android/application/csc/CscModemSettingService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->updateModemInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/sec/android/application/csc/CscModemSettingService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->compareLockAndModemInfo()V

    return-void
.end method

.method private compareLockAndModemInfo()V
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    .line 155
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->readModemInfo()V

    .line 156
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->readLockInfo()V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->addModemInfoToBuffer()V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->addLockInfoToBuffer()V

    .line 161
    const-string v0, "CscModemSettingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareLockAndModemInfo() : mByteArray = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->sendByteBuffer(II)V

    .line 163
    return-void
.end method

.method private readLockInfo()V
    .locals 14

    .prologue
    const-string v13, "#"

    const-string v12, "Settings.Main.Security."

    const-string v11, ") : "

    const-string v10, ""

    const-string v9, "CscModemSettingService"

    .line 309
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 310
    const/4 v4, 0x5

    .line 312
    .local v4, plmnLength:I
    const-string v7, ""

    iput-object v10, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NetLockCode:Ljava/lang/String;

    .line 313
    const-string v7, ""

    iput-object v10, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->SPLockCode:Ljava/lang/String;

    .line 314
    const-string v7, ""

    iput-object v10, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NSPLockCode:Ljava/lang/String;

    .line 315
    const-string v7, ""

    iput-object v10, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->CPLockCode:Ljava/lang/String;

    .line 318
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v8, "Settings.Main.Security.UnlockCnt"

    invoke-virtual {v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, strlockCnt:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 320
    const/4 v7, 0x3

    iput v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->unlockCnt:I

    .line 325
    :goto_0
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v8, "Settings.Main.Security."

    invoke-virtual {v7, v12}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 326
    .local v5, securityNode:Lorg/w3c/dom/Node;
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v8, "NetworkLock"

    invoke-virtual {v7, v5, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 327
    .local v3, lockNodeList:Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_2

    .line 328
    iget v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    .line 329
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 330
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 331
    .local v0, codeNode:Lorg/w3c/dom/Node;
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, currentCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 334
    const/4 v4, 0x5

    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    :goto_2
    const-string v7, "CscModemSettingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetworkLock > code ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NetLockCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NetLockCode:Ljava/lang/String;

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 322
    .end local v0           #codeNode:Lorg/w3c/dom/Node;
    .end local v1           #currentCode:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #lockNodeList:Lorg/w3c/dom/NodeList;
    .end local v5           #securityNode:Lorg/w3c/dom/Node;
    :cond_0
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->unlockCnt:I

    goto/16 :goto_0

    .line 338
    .restart local v0       #codeNode:Lorg/w3c/dom/Node;
    .restart local v1       #currentCode:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #lockNodeList:Lorg/w3c/dom/NodeList;
    .restart local v5       #securityNode:Lorg/w3c/dom/Node;
    :cond_1
    const/4 v4, 0x6

    goto :goto_2

    .line 345
    .end local v0           #codeNode:Lorg/w3c/dom/Node;
    .end local v1           #currentCode:Ljava/lang/String;
    .end local v2           #i:I
    :cond_2
    const-string v7, "CscModemSettingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetworkLock > all code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NetLockCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v8, "Settings.Main.Security."

    invoke-virtual {v7, v12}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 350
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v8, "SubsetLock"

    invoke-virtual {v7, v5, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 351
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_4

    .line 352
    iget v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    .line 353
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 354
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 355
    .restart local v0       #codeNode:Lorg/w3c/dom/Node;
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .restart local v1       #currentCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 357
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    :cond_3
    const-string v7, "CscModemSettingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SubsetLock > code ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NSPLockCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NSPLockCode:Ljava/lang/String;

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 363
    .end local v0           #codeNode:Lorg/w3c/dom/Node;
    .end local v1           #currentCode:Ljava/lang/String;
    .end local v2           #i:I
    :cond_4
    const-string v7, "CscModemSettingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SubsetLock > all code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NSPLockCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v8, "Settings.Main.Security."

    invoke-virtual {v7, v12}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 368
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v8, "SPLock"

    invoke-virtual {v7, v5, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 369
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_5

    .line 370
    iget v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    .line 371
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 372
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 373
    .restart local v0       #codeNode:Lorg/w3c/dom/Node;
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .restart local v1       #currentCode:Ljava/lang/String;
    const-string v7, "CscModemSettingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SPLock > code ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->SPLockCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->SPLockCode:Ljava/lang/String;

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 379
    .end local v0           #codeNode:Lorg/w3c/dom/Node;
    .end local v1           #currentCode:Ljava/lang/String;
    .end local v2           #i:I
    :cond_5
    const-string v7, "CscModemSettingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SPLock > all code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->SPLockCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v8, "Settings.Main.Security."

    invoke-virtual {v7, v12}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 384
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v8, "CPLock"

    invoke-virtual {v7, v5, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 385
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_6

    .line 386
    iget v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    .line 387
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 388
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 389
    .restart local v0       #codeNode:Lorg/w3c/dom/Node;
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .restart local v1       #currentCode:Ljava/lang/String;
    const-string v7, "CscModemSettingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CPLock > code ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->CPLockCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->CPLockCode:Ljava/lang/String;

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 395
    .end local v0           #codeNode:Lorg/w3c/dom/Node;
    .end local v1           #currentCode:Ljava/lang/String;
    .end local v2           #i:I
    :cond_6
    const-string v7, "CscModemSettingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CPLock > all code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->CPLockCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method private readModemInfo()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v6, "off"

    const-string v5, "Settings.Messages.SMS.SSMS"

    const-string v4, "Settings.Main.Network.AutoAttach"

    .line 209
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 210
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "Network.NetworkMode"

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strNetworkMode:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strNetworkMode:Ljava/lang/String;

    if-nez v0, :cond_3

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->networkMode:I

    .line 221
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 222
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "Settings.Main.Network.AutoAttach"

    invoke-virtual {v0, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->gprsAttachMode:I

    .line 227
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 228
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "Settings.Messages.SMS.SSMS"

    invoke-virtual {v0, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    iput v3, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->ssms:I

    .line 232
    :cond_2
    :goto_2
    return-void

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strNetworkMode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->networkMode:I

    goto :goto_0

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strNetworkMode:Ljava/lang/String;

    const-string v1, "UMTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->networkMode:I

    goto :goto_0

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strNetworkMode:Ljava/lang/String;

    const-string v1, "GSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->networkMode:I

    goto :goto_0

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strNetworkMode:Ljava/lang/String;

    const-string v1, "900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->networkMode:I

    goto :goto_0

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strNetworkMode:Ljava/lang/String;

    const-string v1, "1800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->networkMode:I

    goto :goto_0

    .line 218
    :cond_8
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strNetworkMode:Ljava/lang/String;

    const-string v1, "1900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->networkMode:I

    goto :goto_0

    .line 223
    :cond_9
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "Settings.Main.Network.AutoAttach"

    invoke-virtual {v0, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->gprsAttachMode:I

    goto :goto_1

    .line 224
    :cond_a
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "Settings.Main.Network.AutoAttach"

    invoke-virtual {v0, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v3, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->gprsAttachMode:I

    goto/16 :goto_1

    .line 229
    :cond_b
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "Settings.Messages.SMS.SSMS"

    invoke-virtual {v0, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->ssms:I

    goto/16 :goto_2

    .line 230
    :cond_c
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "Settings.Messages.SMS.SSMS"

    invoke-virtual {v0, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->ssms:I

    goto/16 :goto_2
.end method

.method private readSalesCode()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 194
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "GeneralInfo.SalesCode"

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strSalesCode:Ljava/lang/String;

    .line 195
    const-string v0, "CscModemSettingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csc modem strSalesCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method private updateLockInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v5, "none"

    .line 281
    iput v6, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 282
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    .line 287
    const-string v3, "ril.sales_code"

    const-string v4, "none"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, salesCode:Ljava/lang/String;
    const-string v3, "none"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/csc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, new_CSC_FILE:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, mFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 296
    .end local v0           #mFile:Ljava/io/File;
    .end local v1           #new_CSC_FILE:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->readLockInfo()V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->addLockInfoToBuffer()V

    .line 299
    const-string v3, "CscModemSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLockInfo() : mByteArray Size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v6}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->sendByteBuffer(II)V

    .line 302
    return-void
.end method

.method private updateModemInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    iput v3, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    .line 170
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->readSalesCode()V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->sendSalesCode()V

    .line 173
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->readModemInfo()V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->addModemInfoToBuffer()V

    .line 176
    const-string v0, "CscModemSettingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateModemInfo() : mByteArray Size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v3}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->sendByteBuffer(II)V

    .line 178
    return-void
.end method


# virtual methods
.method public addLockInfoToBuffer()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 407
    const-string v4, "CscModemSettingService"

    const-string v5, "add Lock Info"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, -0x7f

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    iget v6, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 426
    iget v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_1

    .line 428
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NetLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 429
    .local v3, lockSize:I
    add-int/lit8 v2, v3, 0xf

    .line 430
    .local v2, itemSize:I
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, -0x7e

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    shl-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v9}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v10}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    iget v6, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->unlockCnt:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v9}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    shl-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NetLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [B

    .line 456
    .local v0, dummyByteCode:[B
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NetLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 457
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 458
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    aget-byte v6, v0, v1

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    :cond_0
    iget v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 463
    .end local v0           #dummyByteCode:[B
    .end local v1           #i:I
    .end local v2           #itemSize:I
    .end local v3           #lockSize:I
    :cond_1
    iget v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_3

    .line 465
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NSPLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 466
    .restart local v3       #lockSize:I
    add-int/lit8 v2, v3, 0xf

    .line 467
    .restart local v2       #itemSize:I
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, -0x7d

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    shl-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v9}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v10}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    iget v6, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->unlockCnt:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v9}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    shl-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NSPLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [B

    .line 493
    .restart local v0       #dummyByteCode:[B
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->NSPLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 494
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 495
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    aget-byte v6, v0, v1

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 497
    :cond_2
    iget v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 500
    .end local v0           #dummyByteCode:[B
    .end local v1           #i:I
    .end local v2           #itemSize:I
    .end local v3           #lockSize:I
    :cond_3
    iget v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_5

    .line 502
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->SPLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 503
    .restart local v3       #lockSize:I
    add-int/lit8 v2, v3, 0xf

    .line 504
    .restart local v2       #itemSize:I
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, -0x7c

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    shl-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v9}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v10}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    iget v6, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->unlockCnt:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v9}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    shl-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->SPLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [B

    .line 530
    .restart local v0       #dummyByteCode:[B
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->SPLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 531
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 532
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    aget-byte v6, v0, v1

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 534
    :cond_4
    iget v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 537
    .end local v0           #dummyByteCode:[B
    .end local v1           #i:I
    .end local v2           #itemSize:I
    .end local v3           #lockSize:I
    :cond_5
    iget v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->generalLockInfo:I

    and-int/lit8 v4, v4, 0x8

    if-lez v4, :cond_7

    .line 539
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->CPLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 540
    .restart local v3       #lockSize:I
    add-int/lit8 v2, v3, 0xf

    .line 541
    .restart local v2       #itemSize:I
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, -0x7b

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    shl-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v9}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v10}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    iget v6, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->unlockCnt:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v9}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    shl-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->CPLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [B

    .line 567
    .restart local v0       #dummyByteCode:[B
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->CPLockCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 568
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_6

    .line 569
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Byte;

    aget-byte v6, v0, v1

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 571
    :cond_6
    iget v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 575
    .end local v0           #dummyByteCode:[B
    .end local v1           #i:I
    .end local v2           #itemSize:I
    .end local v3           #lockSize:I
    :cond_7
    return-void
.end method

.method public addModemInfoToBuffer()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 236
    const-string v0, "CscModemSettingService"

    const-string v1, "add Modem Info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    const/16 v2, -0x79

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    iget v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->networkMode:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 247
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    const/16 v2, -0x77

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    iget v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->gprsAttachMode:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 257
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    const/16 v2, -0x73

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    iget v2, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->ssms:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    .line 277
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 106
    const-string v1, "CscModemSettingService"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sput-object p1, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->INTENT:Landroid/content/Intent;

    .line 109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/sec/android/application/csc/CscModemSettingService$1;

    invoke-direct {v1, p0}, Lcom/samsung/sec/android/application/csc/CscModemSettingService$1;-><init>(Lcom/samsung/sec/android/application/csc/CscModemSettingService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    .local v0, CscModemSettingThread:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    return-void
.end method

.method public sendByteBuffer(II)V
    .locals 11
    .parameter "SUB_TYPE"
    .parameter "setType"

    .prologue
    const/4 v9, 0x7

    .line 620
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 621
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 624
    .local v3, dos:Ljava/io/DataOutputStream;
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 625
    .local v2, byteSize:I
    new-array v1, v2, [B

    .line 626
    .local v1, byteData:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 627
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mByteArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v1, v5

    .line 626
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 629
    :cond_0
    const-string v7, "CscModemSettingService"

    const-string v8, "sendByteBuffer"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    add-int/lit8 v6, v2, 0x5

    .line 634
    .local v6, packetSize:I
    if-ne p1, v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 636
    :cond_1
    const/4 v7, 0x6

    :try_start_0
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 637
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 638
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 639
    if-ne p1, v9, :cond_2

    .line 640
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 641
    :cond_2
    iget v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mItemCount:I

    int-to-byte v7, v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 642
    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7, v2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x7d1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 649
    :goto_1
    return-void

    .line 644
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 646
    .local v4, e:Ljava/io/IOException;
    goto :goto_1
.end method

.method public sendSalesCode()V
    .locals 8

    .prologue
    .line 586
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 587
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 589
    .local v1, dos:Ljava/io/DataOutputStream;
    const-string v4, "CscModemSettingService"

    const-string v5, "sendSalesCode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strSalesCode:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 609
    :goto_0
    return-void

    .line 596
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strSalesCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v3, v4, 0x6

    .line 597
    .local v3, fileSize:I
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 598
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 599
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 600
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 601
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 602
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strSalesCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->strSalesCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7d0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0

    .line 604
    .end local v3           #fileSize:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 606
    .local v2, e:Ljava/io/IOException;
    goto :goto_0
.end method
