.class public Lcom/samsung/sec/android/application/csc/CscNetwork;
.super Ljava/lang/Object;
.source "CscNetwork.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/android/application/csc/CscNetwork$1;,
        Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;
    }
.end annotation


# instance fields
.field private final DEFAULT_CSC_FILE:Ljava/lang/String;

.field private final NOERROR:Ljava/lang/String;

.field private final OTHERS_CSC_FILE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

.field private mOtherSosInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

.field private mParser:Lcom/samsung/sec/android/application/csc/CscParser;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mResolver:Landroid/content/ContentResolver;

.field private sPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->OTHERS_CSC_FILE:Ljava/lang/String;

    .line 69
    const-string v0, "NOERROR"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->NOERROR:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->sPrefs:Landroid/content/SharedPreferences;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mResolver:Landroid/content/ContentResolver;

    .line 83
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 84
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private compareSOSNumber()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v7, "CscNetwork"

    .line 262
    const-string v0, "NOERROR"

    .line 264
    .local v0, answer:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "loadEmergencyCallNumberSpec"

    aput-object v6, v3, v5

    .line 265
    .local v3, param:[Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 267
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v3, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 269
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscNetwork;->loadSOSNumber()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, src:Ljava/lang/String;
    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, dst:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 273
    const-string v5, "CscNetwork"

    const-string v5, "compareSOSNumber() failed"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v5, "CscNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Customer spec]\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v5, "CscNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Stored in Phone class]\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v0, "Settings.Main.Network.SOSNumber"

    .line 280
    :cond_0
    return-object v0
.end method

.method private loadNetworkInfo()I
    .locals 10

    .prologue
    const/4 v8, -0x1

    const-string v9, "CscNetwork"

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, networkSize:I
    const/4 v5, 0x0

    .line 93
    .local v5, voiceMailSize:I
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 98
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "GeneralInfo"

    invoke-virtual {v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 99
    .local v2, node:Lorg/w3c/dom/Node;
    if-nez v2, :cond_0

    move v6, v8

    .line 134
    :goto_0
    return v6

    .line 102
    :cond_0
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "NetworkInfo"

    invoke-virtual {v6, v2, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 103
    .local v3, nodeList:Lorg/w3c/dom/NodeList;
    if-nez v3, :cond_1

    .line 105
    const-string v6, "CscNetwork"

    const-string v6, "No network info"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 106
    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 111
    new-array v6, v1, [Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    iput-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    .line 112
    const-string v6, "CscNetwork"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network numbers : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 117
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    new-instance v7, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;-><init>(Lcom/samsung/sec/android/application/csc/CscNetwork;Lcom/samsung/sec/android/application/csc/CscNetwork$1;)V

    aput-object v7, v6, v0

    .line 120
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "NetworkName"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 121
    .local v4, temp:Lorg/w3c/dom/Node;
    if-eqz v4, :cond_2

    .line 123
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;->mName:Ljava/lang/String;

    .line 127
    :cond_2
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "MCCMNC"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 128
    if-eqz v4, :cond_3

    .line 130
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;->mMccMnc:Ljava/lang/String;

    .line 115
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v4           #temp:Lorg/w3c/dom/Node;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private loadSOSNumber()Ljava/lang/String;
    .locals 13

    .prologue
    const-string v12, "Settings.Main.Network."

    const-string v11, " "

    const-string v10, ""

    const-string v9, "\n"

    .line 222
    const-string v0, ""

    .line 224
    .local v0, finalSosSpec:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscNetwork;->getOtherSosNumber()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, otherSosNumber:Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 227
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v8, "Settings.Main.Network.NbSOSNumber"

    invoke-virtual {v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, nbSOSNumber:Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v8, "Settings.Main.Network.NbSOSNumberNoSIM"

    invoke-virtual {v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, nbSOSNumberNoSIM:Ljava/lang/String;
    const-string v7, "Settings.Main.Network."

    const-string v7, "SOSNumber"

    invoke-virtual {p0, v12, v7}, Lcom/samsung/sec/android/application/csc/CscNetwork;->getSOSnumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v8, ""

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, strSOSNumber:Ljava/lang/String;
    const-string v7, "Settings.Main.Network."

    const-string v7, "SOSNumberNoSIM"

    invoke-virtual {p0, v12, v7}, Lcom/samsung/sec/android/application/csc/CscNetwork;->getSOSnumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v8, ""

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, strSOSNumberNoSIM:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 238
    if-lez v1, :cond_1

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    aget-object v8, v8, v1

    iget-object v8, v8, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_2
    const-string v7, "CscNetwork"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadSOSNumber: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object v0
.end method

.method private updateSOSNumber()Z
    .locals 5

    .prologue
    .line 251
    const/4 v0, 0x1

    .line 253
    .local v0, answer:Z
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "setEmergencyNumbers"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscNetwork;->loadSOSNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 254
    .local v2, param:[Ljava/lang/String;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 256
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 258
    return v0
.end method


# virtual methods
.method public compare()Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    const-string v0, "NOERROR"

    .line 426
    .local v0, answer:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscNetwork;->compareXtraSettings()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscNetwork;->loadNetworkInfo()I

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const-string v1, "CscNetwork"

    const-string v2, "error during loading network info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v1, "GeneralInfoNetworkInfo"

    .line 439
    :goto_0
    return-object v1

    .line 436
    :cond_0
    const-string v1, "NOERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscNetwork;->compareSOSNumber()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 439
    goto :goto_0
.end method

.method public compareXtraSettings()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const-string v7, "xtra_enabled"

    const-string v5, "Network.gps_xtra"

    .line 299
    const-string v0, "NOERROR"

    .line 302
    .local v0, answer:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 303
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Network.gps_xtra"

    invoke-virtual {v1, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    const-string v1, "CscNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XTRA setting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "Network.gps_xtra"

    invoke-virtual {v3, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Network.gps_xtra"

    invoke-virtual {v1, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "xtra_enabled"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 309
    const-string v0, "NOERROR"

    .line 322
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    const-string v0, "Network.gps_xtra"

    goto :goto_0

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Network.gps_xtra"

    invoke-virtual {v1, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "xtra_enabled"

    const/4 v2, 0x0

    invoke-static {v1, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 316
    const-string v0, "NOERROR"

    goto :goto_0

    .line 318
    :cond_3
    const-string v0, "Network.gps_xtra"

    goto :goto_0
.end method

.method public getOtherSosNumber()Ljava/lang/String;
    .locals 12

    .prologue
    const-string v8, "CscNetwork"

    const-string v11, " "

    const-string v10, "\n"

    const-string v9, ""

    .line 169
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 171
    const-string v3, ""

    .line 173
    .local v3, otherSosResult:Ljava/lang/String;
    const/4 v4, 0x0

    .line 180
    .local v4, sosEntrySize:I
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "SOS"

    invoke-virtual {v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 181
    .local v1, node:Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 182
    const-string v6, ""

    move-object v6, v9

    .line 218
    :goto_0
    return-object v6

    .line 184
    :cond_0
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "SOSEntry"

    invoke-virtual {v6, v1, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 185
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    .line 187
    const-string v6, "CscNetwork"

    const-string v6, "No SOS entry"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v6, ""

    move-object v6, v9

    goto :goto_0

    .line 192
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 193
    new-array v6, v4, [Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    iput-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mOtherSosInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    .line 194
    const-string v6, "CscNetwork"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SOSEntry numbers : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 199
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mOtherSosInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    new-instance v7, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;-><init>(Lcom/samsung/sec/android/application/csc/CscNetwork;Lcom/samsung/sec/android/application/csc/CscNetwork$1;)V

    aput-object v7, v6, v0

    .line 202
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "MCCMNC"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 203
    .local v5, temp:Lorg/w3c/dom/Node;
    if-eqz v5, :cond_3

    .line 205
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mOtherSosInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;->mMccMnc:Ljava/lang/String;

    .line 206
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mOtherSosInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    aget-object v6, v6, v0

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "SOSNumber"

    invoke-virtual {p0, v7, v8}, Lcom/samsung/sec/android/application/csc/CscNetwork;->getSOSnumber(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v8, ""

    invoke-virtual {v7, v11, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;->mSosNumber:Ljava/lang/String;

    .line 207
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mOtherSosInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    aget-object v6, v6, v0

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "SOSNumberNoSIM"

    invoke-virtual {p0, v7, v8}, Lcom/samsung/sec/android/application/csc/CscNetwork;->getSOSnumber(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v8, ""

    invoke-virtual {v7, v11, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;->mNoSimSosNumber:Ljava/lang/String;

    .line 209
    if-lez v0, :cond_2

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mOtherSosInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mOtherSosInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;->mSosNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mOtherSosInfo:[Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;->mNoSimSosNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .end local v5           #temp:Lorg/w3c/dom/Node;
    :cond_4
    move-object v6, v3

    .line 218
    goto/16 :goto_0
.end method

.method public getSOSnumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "tag"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v1, p1}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 141
    .local v0, networkNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 142
    const-string v1, ""

    .line 144
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/samsung/sec/android/application/csc/CscNetwork;->getSOSnumber(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSOSnumber(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "parentNode"
    .parameter "tag"

    .prologue
    .line 149
    const-string v0, ""

    .line 151
    .local v0, SOSnumber:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, p1, p2}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 153
    .local v5, numberNodeList:Lorg/w3c/dom/NodeList;
    if-nez v5, :cond_0

    move-object v1, v0

    .line 164
    .end local v0           #SOSnumber:Ljava/lang/String;
    .local v1, SOSnumber:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 156
    .end local v1           #SOSnumber:Ljava/lang/String;
    .restart local v0       #SOSnumber:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 157
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 158
    .local v4, numberNode:Lorg/w3c/dom/Node;
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, currentNumber:Ljava/lang/String;
    const-string v6, "CscNetwork"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > number ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-lez v3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #currentNumber:Ljava/lang/String;
    .end local v4           #numberNode:Lorg/w3c/dom/Node;
    :cond_2
    move-object v1, v0

    .line 164
    .end local v0           #SOSnumber:Ljava/lang/String;
    .restart local v1       #SOSnumber:Ljava/lang/String;
    goto :goto_0
.end method

.method public update()V
    .locals 2

    .prologue
    const-string v1, "CscNetwork"

    .line 402
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscNetwork;->loadNetworkInfo()I

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    const-string v0, "CscNetwork"

    const-string v0, "error during loading network info"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscNetwork;->updateSOSNumber()Z

    move-result v0

    if-nez v0, :cond_2

    .line 409
    const-string v0, "CscNetwork"

    const-string v0, "SOS number setting : failed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscNetwork;->updateXtraSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    const-string v0, "CscNetwork"

    const-string v0, "XTRA setting : failed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateXtraSettings()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "xtra_enabled"

    const-string v4, "Network.gps_xtra"

    .line 285
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 286
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "Network.gps_xtra"

    invoke-virtual {v0, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "CscNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XTRA setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v3, "Network.gps_xtra"

    invoke-virtual {v2, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "Network.gps_xtra"

    invoke-virtual {v0, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "xtra_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    :cond_0
    :goto_0
    return v5

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "Network.gps_xtra"

    invoke-virtual {v0, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscNetwork;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "xtra_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
