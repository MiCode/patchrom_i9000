.class abstract Lcom/android/internal/telephony/gsm/stk/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .local v1, length:I
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->SetupCallbcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .local v1, length:I
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;-><init>()V

    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveDTMFstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B
    .locals 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .local v4, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .local v2, length:I
    if-eqz v2, :cond_1

    add-int/lit8 v6, v2, 0x1

    new-array v0, v6, [B

    .local v0, dtmfString:[B
    const/4 v6, 0x0

    int-to-byte v7, v2

    aput-byte v7, v0, v6

    const/4 v1, 0x0

    .local v1, i:I
    move v5, v4

    .end local v4           #valueIndex:I
    .local v5, valueIndex:I
    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    aget-byte v7, v3, v5

    aput-byte v7, v0, v6

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_0

    :cond_0
    move v4, v5

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    move-object v6, v0

    .end local v0           #dtmfString:[B
    .end local v1           #i:I
    :goto_1
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;-><init>()V

    .local v0, devIds:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->sourceId:I

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, timeInterval:I
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    .local v3, timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .local v4, valueIndex:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v5, 0xff

    new-instance v5, Lcom/android/internal/telephony/gsm/stk/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V

    return-object v5

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/IconId;-><init>()V

    .local v1, id:Lcom/android/internal/telephony/gsm/stk/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #valueIndex:I
    .local v4, valueIndex:I
    :try_start_0
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Item;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, item:Lcom/android/internal/telephony/gsm/stk/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v3

    .local v3, length:I
    if-eqz v3, :cond_0

    const/4 v8, 0x1

    sub-int v6, v3, v8

    .local v6, textLen:I
    :try_start_0
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .local v1, id:I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .local v5, text:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/Item;

    .end local v2           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/gsm/stk/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #id:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #textLen:I
    .restart local v2       #item:Lcom/android/internal/telephony/gsm/stk/Item;
    :cond_0
    return-object v2

    .end local v2           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    .restart local v6       #textLen:I
    :catch_0
    move-exception v8

    move-object v0, v8

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    .locals 11
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const-string v8, "ValueParser"

    const-string v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;-><init>()V

    .local v1, id:Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    sub-int v4, v8, v10

    .local v4, numOfItems:I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :try_start_0
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_0

    move v8, v10

    :goto_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->selfExplanatory:Z

    const/4 v2, 0x0

    .local v2, index:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_1
    if-ge v3, v4, :cond_1

    iget-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    :try_start_1
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_1

    .end local v3           #index:I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v0, v8

    move v6, v7

    .end local v7           #valueIndex:I
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #valueIndex:I
    :goto_2
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #valueIndex:I
    .restart local v3       #index:I
    .restart local v7       #valueIndex:I
    :cond_1
    return-object v1

    .end local v3           #index:I
    .end local v7           #valueIndex:I
    .restart local v2       #index:I
    .restart local v6       #valueIndex:I
    :catch_1
    move-exception v8

    move-object v0, v8

    goto :goto_2
.end method

.method static retrieveLanguage(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 4
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .local v2, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    .local v0, length:I
    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static retrieveSMSCaddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .local v5, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v2

    .local v2, length:I
    add-int/lit8 v6, v2, 0x1

    new-array v4, v6, [B

    .local v4, rawValueSmscaddress:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v6, v2, 0x1

    if-ge v1, v6, :cond_0

    const/4 v6, 0x1

    sub-int v6, v5, v6

    add-int/2addr v6, v1

    :try_start_0
    aget-byte v6, v3, v6

    aput-byte v6, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6
.end method

.method static retrieveSMSTPDU(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;Z)Ljava/lang/String;
    .locals 9
    .parameter "ctlv"
    .parameter "ispacking_req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .local v2, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    .local v0, length:I
    const/4 p0, 0x0

    .local p0, destaddlen:I
    const/4 p0, 0x0

    .local p0, rawPdu:[B
    add-int/lit8 p0, v2, 0x2

    aget-byte p0, v1, p0

    .end local p0           #rawPdu:[B
    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    add-int/lit8 p0, v2, 0x2

    aget-byte p0, v1, p0

    div-int/lit8 p0, p0, 0x2

    .local p0, destaddlen:I
    :goto_0
    add-int/lit8 p0, p0, 0x6

    if-ne v0, p0, :cond_1

    .end local p0           #destaddlen:I
    add-int/lit8 p0, v0, 0x1

    new-array p0, p0, [B

    .local p0, rawPdu:[B
    move-object v5, p0

    .end local p0           #rawPdu:[B
    .local v5, rawPdu:[B
    :goto_1
    const/4 p0, 0x0

    .local p0, i:I
    :goto_2
    if-ge p0, v0, :cond_2

    add-int v3, v2, p0

    :try_start_0
    aget-byte v3, v1, v3

    aput-byte v3, v5, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .end local v5           #rawPdu:[B
    .end local p0           #i:I
    :cond_0
    add-int/lit8 p0, v2, 0x2

    aget-byte p0, v1, p0

    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    .local p0, destaddlen:I
    goto :goto_0

    .end local p0           #destaddlen:I
    :cond_1
    new-array p0, v0, [B

    .local p0, rawPdu:[B
    move-object v5, p0

    .end local p0           #rawPdu:[B
    .restart local v5       #rawPdu:[B
    goto :goto_1

    .local p0, i:I
    :catch_0
    move-exception p0

    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .local p0, i:I
    .restart local p1
    :cond_2
    const/4 p0, 0x1

    if-ne p1, p0, :cond_e

    .end local p0           #i:I
    const/4 p0, 0x0

    .local p0, packingUserDataIndex:I
    const/4 p0, 0x0

    .local p0, packingUserDatalen:I
    const/4 p0, 0x0

    .local p0, adjustedUserDatalen:I
    const/4 p1, 0x0

    .local p1, lengthtoCheck:I
    const/4 p1, 0x0

    .local p1, tpvpvalue:I
    const/4 v1, 0x0

    .local v1, tpvplength:I
    const/4 p1, 0x0

    .local p1, destaddrlen:I
    const-string p1, "ValueParser"

    .end local p1           #destaddrlen:I
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #valueIndex:I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rawtpvp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, v5, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aget-byte p1, v5, p1

    and-int/lit8 p1, p1, 0x18

    .local p1, tpvpvalue:I
    const-string v2, "ValueParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tpvpvalue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .end local p1           #tpvplength:I
    .local v6, tpvplength:I
    :goto_3
    const/4 p1, 0x2

    aget-byte p1, v5, p1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    const/4 p1, 0x2

    aget-byte p1, v5, p1

    div-int/lit8 p1, p1, 0x2

    .local p1, destaddrlen:I
    :goto_4
    add-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v6

    add-int/lit8 v3, p1, 0x1

    .local v3, packingUserDataIndex:I
    aget-byte p1, v5, v3

    .end local p1           #destaddrlen:I
    and-int/lit16 v4, p1, 0xff

    .local v4, packingUserDatalen:I
    add-int/lit8 p1, v3, 0x1

    sub-int p1, v0, p1

    .local p1, lengthtoCheck:I
    const-string v1, "ValueParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length to be checked:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v4, :cond_9

    const-string p1, "ValueParser"

    .end local p1           #lengthtoCheck:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TPUDL_packingUserDatalen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, shorten:I
    new-array v1, v4, [B

    .local v1, packinUserData:[B
    const/4 p1, 0x0

    .local p1, j:I
    :goto_5
    if-ge p1, v4, :cond_7

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v7, p1

    :try_start_1
    aget-byte v7, v5, v7

    aput-byte v7, v1, p1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .end local v2           #shorten:I
    .end local v3           #packingUserDataIndex:I
    .end local v4           #packingUserDatalen:I
    .end local v6           #tpvplength:I
    .local v1, tpvplength:I
    .local p1, tpvpvalue:I
    :cond_3
    const/16 v2, 0x10

    if-ne p1, v2, :cond_4

    const/4 p1, 0x1

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .end local p1           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto :goto_3

    .end local v6           #tpvplength:I
    .restart local v1       #tpvplength:I
    .local p1, tpvpvalue:I
    :cond_4
    const/16 v2, 0x8

    if-ne p1, v2, :cond_5

    const/4 p1, 0x7

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .end local p1           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto :goto_3

    .end local v6           #tpvplength:I
    .restart local v1       #tpvplength:I
    .local p1, tpvpvalue:I
    :cond_5
    const/16 v2, 0x18

    if-ne p1, v2, :cond_11

    const/4 p1, 0x7

    .end local v1           #tpvplength:I
    .local p1, tpvplength:I
    move v6, p1

    .end local p1           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto :goto_3

    :cond_6
    const/4 p1, 0x2

    aget-byte p1, v5, p1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    .local p1, destaddrlen:I
    goto :goto_4

    .local v1, packinUserData:[B
    .restart local v2       #shorten:I
    .restart local v3       #packingUserDataIndex:I
    .restart local v4       #packingUserDatalen:I
    .local p1, j:I
    :catch_1
    move-exception p0

    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #j:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .local p0, adjustedUserDatalen:I
    .restart local p1       #j:I
    :cond_7
    const/4 p1, 0x0

    invoke-static {v1, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    .end local p1           #j:I
    move-result-object v1

    .local v1, packinUserDataString:Ljava/lang/String;
    const-string p1, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TPUDL_packingUserDatastring:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v7, 0xa0

    if-le p1, v7, :cond_10

    const/4 p1, 0x0

    const/16 v2, 0x9e

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v2           #shorten:I
    move-result-object p1

    .local p1, fullSizePackinUserDataString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1           #packinUserDataString:Ljava/lang/String;
    const/16 v2, 0x9e

    sub-int/2addr v1, v2

    .local v1, shorten:I
    aget-byte v2, v5, v3

    sub-int/2addr v2, v1

    int-to-byte v2, v2

    aput-byte v2, v5, v3

    move-object p1, p1

    .local p1, packinUserDataString:Ljava/lang/String;
    :goto_6
    :try_start_2
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, packedUserData:[B
    array-length v2, v1

    .local v2, packedUserDatalen:I
    const-string p1, "ValueParser"

    .end local p1           #packinUserDataString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TPUDL_Packed user data len:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 p1, 0x1

    .local p1, k:I
    :goto_7
    if-ge p1, v2, :cond_8

    add-int v7, v3, p1

    :try_start_3
    aget-byte v8, v1, p1

    aput-byte v8, v5, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_8
    const/4 p0, 0x1

    sub-int p0, v2, p0

    sub-int p0, v4, p0

    sub-int p0, v0, p0

    const-string p1, "ValueParser"

    .end local p1           #k:I
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #length:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TPUDL_Adjusted user data len:"

    .end local v1           #packedUserData:[B
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3

    move p1, v4

    .end local v4           #packingUserDatalen:I
    .local p1, packingUserDatalen:I
    :goto_8
    const-string p1, "ValueParser"

    .end local p1           #packingUserDatalen:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data coding scheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v6, 0x1

    sub-int v1, v3, v1

    aget-byte v1, v5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf0

    .local v0, datacodingscheme:I
    const/4 p1, 0x0

    .local p1, datacodingfromsim:I
    add-int/lit8 p1, v6, 0x1

    sub-int p1, v3, p1

    aget-byte p1, v5, p1

    and-int/2addr p1, v0

    add-int/lit8 v0, v6, 0x1

    sub-int v0, v3, v0

    int-to-byte p1, p1

    aput-byte p1, v5, v0

    .end local v0           #datacodingscheme:I
    .end local p1           #datacodingfromsim:I
    new-array v0, p0, [B

    .local v0, packeddata:[B
    const/4 p1, 0x0

    .local p1, l:I
    :goto_9
    if-ge p1, p0, :cond_c

    :try_start_4
    aget-byte v1, v5, p1

    aput-byte v1, v0, p1
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .end local v0           #packeddata:[B
    .end local p1           #l:I
    .restart local v4       #packingUserDatalen:I
    :catch_2
    move-exception p1

    .local p1, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_5
    new-instance p1, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p1           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p1
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v2           #packedUserDatalen:I
    :catch_3
    move-exception p1

    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .local v0, length:I
    .restart local p0       #adjustedUserDatalen:I
    .local p1, lengthtoCheck:I
    :cond_9
    add-int/lit8 v4, p1, 0x1

    const-string p1, "ValueParser"

    .end local p1           #lengthtoCheck:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packingUserDatalen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v4, [B

    .local v1, packinUserData:[B
    const/4 p1, 0x0

    .local p1, j:I
    :goto_a
    if-ge p1, v4, :cond_a

    add-int v2, v3, p1

    :try_start_6
    aget-byte v2, v5, v2

    aput-byte v2, v1, p1
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :catch_4
    move-exception p0

    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #j:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .local p0, adjustedUserDatalen:I
    .restart local p1       #j:I
    :cond_a
    const/4 p1, 0x0

    invoke-static {v1, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    .end local p1           #j:I
    move-result-object p1

    .local p1, packinUserDataString:Ljava/lang/String;
    const-string v1, "ValueParser"

    .end local v1           #packinUserData:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packingUserDatastring:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, packedUserData:[B
    array-length v2, v1

    .restart local v2       #packedUserDatalen:I
    const-string p1, "ValueParser"

    .end local p1           #packinUserDataString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packed user data len:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7 .. :try_end_7} :catch_6

    const/4 p1, 0x0

    .local p1, k:I
    :goto_b
    const/4 v7, 0x1

    sub-int v7, v2, v7

    if-ge p1, v7, :cond_b

    add-int v7, v3, p1

    add-int/lit8 v8, p1, 0x1

    :try_start_8
    aget-byte v8, v1, v8

    aput-byte v8, v5, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_b
    const/4 p0, 0x1

    sub-int p0, v2, p0

    sub-int p0, v4, p0

    sub-int p0, v0, p0

    const-string p1, "ValueParser"

    .end local p1           #k:I
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #length:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adjusted user data len:"

    .end local v1           #packedUserData:[B
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_8 .. :try_end_8} :catch_6

    move p1, v4

    .end local v4           #packingUserDatalen:I
    .local p1, packingUserDatalen:I
    goto/16 :goto_8

    .end local p1           #packingUserDatalen:I
    .restart local v4       #packingUserDatalen:I
    :catch_5
    move-exception p1

    .local p1, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_9
    new-instance p1, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p1           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p1
    :try_end_9
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_9 .. :try_end_9} :catch_6

    .end local v2           #packedUserDatalen:I
    :catch_6
    move-exception p1

    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .end local v4           #packingUserDatalen:I
    .local v0, packeddata:[B
    .restart local v2       #packedUserDatalen:I
    .restart local p0       #adjustedUserDatalen:I
    .local p1, l:I
    :catch_7
    move-exception p0

    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #l:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .local p0, adjustedUserDatalen:I
    .restart local p1       #l:I
    :cond_c
    if-eqz p0, :cond_d

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .end local v0           #packeddata:[B
    .end local v2           #packedUserDatalen:I
    .end local v3           #packingUserDataIndex:I
    .end local v6           #tpvplength:I
    .end local p0           #adjustedUserDatalen:I
    .end local p1           #l:I
    :goto_c
    return-object p0

    .restart local v0       #packeddata:[B
    .restart local v2       #packedUserDatalen:I
    .restart local v3       #packingUserDataIndex:I
    .restart local v6       #tpvplength:I
    .restart local p0       #adjustedUserDatalen:I
    .restart local p1       #l:I
    :cond_d
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #adjustedUserDatalen:I
    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #l:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .end local v3           #packingUserDataIndex:I
    .end local v6           #tpvplength:I
    .local v0, length:I
    .local v1, rawValue:[B
    .local v2, valueIndex:I
    .local p1, ispacking_req:Z
    :cond_e
    if-eqz v0, :cond_f

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_f
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object p1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1           #ispacking_req:Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .local v1, packinUserDataString:Ljava/lang/String;
    .local v2, shorten:I
    .restart local v3       #packingUserDataIndex:I
    .restart local v4       #packingUserDatalen:I
    .restart local v6       #tpvplength:I
    .restart local p0       #adjustedUserDatalen:I
    :cond_10
    move-object p1, v1

    .end local v1           #packinUserDataString:Ljava/lang/String;
    .local p1, packinUserDataString:Ljava/lang/String;
    move v1, v2

    .end local v2           #shorten:I
    .local v1, shorten:I
    goto/16 :goto_6

    .end local v3           #packingUserDataIndex:I
    .end local v4           #packingUserDatalen:I
    .end local v6           #tpvplength:I
    .local v1, tpvplength:I
    .local p1, tpvpvalue:I
    :cond_11
    move v6, v1

    .end local v1           #tpvplength:I
    .restart local v6       #tpvplength:I
    goto/16 :goto_3
.end method

.method static retrieveSSstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v1

    .local v1, length:I
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->SSbcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/util/List;
    .locals 18
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/stk/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v15

    .local v15, rawValue:[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .local v2, valueIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result p0

    .local p0, length:I
    if-eqz p0, :cond_6

    div-int/lit8 v13, p0, 0x4

    .local v13, itemCount:I
    const/16 p0, 0x0

    .local p0, i:I
    move/from16 v12, p0

    .end local p0           #i:I
    .local v12, i:I
    move/from16 v16, v2

    .end local v2           #valueIndex:I
    .local v16, valueIndex:I
    :goto_0
    if-ge v12, v13, :cond_5

    :try_start_0
    aget-byte p0, v15, v16

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v3, v0

    .local v3, start:I
    add-int/lit8 p0, v16, 0x1

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    .local v4, textLength:I
    add-int/lit8 p0, v16, 0x2

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v10, v0

    .local v10, format:I
    add-int/lit8 p0, v16, 0x3

    aget-byte p0, v15, p0

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    .local v2, colorValue:I
    and-int/lit8 p0, v10, 0x3

    .local p0, alignValue:I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/TextAlignment;

    move-result-object v5

    .local v5, align:Lcom/android/internal/telephony/gsm/stk/TextAlignment;
    shr-int/lit8 p0, v10, 0x2

    and-int/lit8 p0, p0, 0x3

    .local p0, sizeValue:I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/FontSize;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/FontSize;

    move-result-object v6

    .local v6, size:Lcom/android/internal/telephony/gsm/stk/FontSize;
    if-nez v6, :cond_0

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/FontSize;->NORMAL:Lcom/android/internal/telephony/gsm/stk/FontSize;

    :cond_0
    and-int/lit8 p0, v10, 0x10

    if-eqz p0, :cond_1

    .end local p0           #sizeValue:I
    const/16 p0, 0x1

    move/from16 v7, p0

    .local v7, bold:Z
    :goto_1
    and-int/lit8 p0, v10, 0x20

    if-eqz p0, :cond_2

    const/16 p0, 0x1

    move/from16 v8, p0

    .local v8, italic:Z
    :goto_2
    and-int/lit8 p0, v10, 0x40

    if-eqz p0, :cond_3

    const/16 p0, 0x1

    move/from16 v9, p0

    .local v9, underlined:Z
    :goto_3
    move v0, v10

    and-int/lit16 v0, v0, 0x80

    move/from16 p0, v0

    if-eqz p0, :cond_4

    const/16 p0, 0x1

    move/from16 v10, p0

    .local v10, strikeThrough:Z
    :goto_4
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/TextColor;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/TextColor;

    move-result-object v11

    .local v11, color:Lcom/android/internal/telephony/gsm/stk/TextColor;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextAttribute;

    .end local v2           #colorValue:I
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/gsm/stk/TextAttribute;-><init>(IILcom/android/internal/telephony/gsm/stk/TextAlignment;Lcom/android/internal/telephony/gsm/stk/FontSize;ZZZZLcom/android/internal/telephony/gsm/stk/TextColor;)V

    .local v2, attr:Lcom/android/internal/telephony/gsm/stk/TextAttribute;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, v12, 0x1

    .end local v12           #i:I
    .local p0, i:I
    add-int/lit8 v2, v16, 0x4

    .end local v16           #valueIndex:I
    .local v2, valueIndex:I
    move/from16 v12, p0

    .end local p0           #i:I
    .restart local v12       #i:I
    move/from16 v16, v2

    .end local v2           #valueIndex:I
    .restart local v16       #valueIndex:I
    goto :goto_0

    .end local v7           #bold:Z
    .end local v8           #italic:Z
    .end local v9           #underlined:Z
    .end local v11           #color:Lcom/android/internal/telephony/gsm/stk/TextColor;
    .local v2, colorValue:I
    .local v10, format:I
    :cond_1
    const/16 p0, 0x0

    move/from16 v7, p0

    goto :goto_1

    .restart local v7       #bold:Z
    :cond_2
    const/16 p0, 0x0

    move/from16 v8, p0

    goto :goto_2

    .restart local v8       #italic:Z
    :cond_3
    const/16 p0, 0x0

    move/from16 v9, p0

    goto :goto_3

    .restart local v9       #underlined:Z
    :cond_4
    const/16 p0, 0x0

    move/from16 v10, p0

    goto :goto_4

    .end local v2           #colorValue:I
    .end local v3           #start:I
    .end local v4           #textLength:I
    .end local v5           #align:Lcom/android/internal/telephony/gsm/stk/TextAlignment;
    .end local v6           #size:Lcom/android/internal/telephony/gsm/stk/FontSize;
    .end local v7           #bold:Z
    .end local v8           #italic:Z
    .end local v9           #underlined:Z
    .end local v10           #format:I
    :cond_5
    move/from16 p0, v16

    .end local v16           #valueIndex:I
    .local p0, valueIndex:I
    move-object v2, v14

    .end local v12           #i:I
    .end local v13           #itemCount:I
    :goto_5
    return-object v2

    .end local p0           #valueIndex:I
    .restart local v12       #i:I
    .restart local v13       #itemCount:I
    .restart local v16       #valueIndex:I
    :catch_0
    move-exception p0

    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance p0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw p0

    .end local v12           #i:I
    .end local v13           #itemCount:I
    .end local v16           #valueIndex:I
    .local v2, valueIndex:I
    .local p0, length:I
    :cond_6
    const/16 p0, 0x0

    move/from16 v17, v2

    .end local v2           #valueIndex:I
    .local v17, valueIndex:I
    move-object/from16 v2, p0

    move/from16 p0, v17

    .end local v17           #valueIndex:I
    .local p0, valueIndex:I
    goto :goto_5
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .local v6, valueIndex:I
    const/4 v0, 0x0

    .local v0, codingScheme:B
    const/4 v3, 0x0

    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v5

    .local v5, textLen:I
    if-nez v5, :cond_0

    move-object v4, v3

    .end local v3           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_0
    return-object v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    :try_start_0
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    if-nez v0, :cond_1

    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .end local v3           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto :goto_0

    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    new-instance v3, Ljava/lang/String;

    .end local v3           #text:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3       #text:Ljava/lang/String;
    goto :goto_1

    :cond_3
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7
.end method

.method static retrieveUSSDstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v3

    .local v3, length:I
    add-int v8, v6, v3

    const/4 v9, 0x1

    sub-int v0, v8, v9

    .local v0, endOfUssdString:I
    if-eqz v3, :cond_1

    new-array v5, v3, [B

    .local v5, ussdString:[B
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :goto_0
    if-gt v7, v0, :cond_0

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, v4, v7

    aput-byte v8, v5, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_0

    :cond_0
    move v6, v7

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    move-object v8, v5

    .end local v2           #i:I
    .end local v5           #ussdString:[B
    :goto_1
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method
