.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PduParser"
.end annotation


# instance fields
.field cur:I

.field mUserDataSeptetPadding:I

.field mUserDataSize:I

.field pdu:[B

.field userData:[B

.field userDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field validityPeriodFormat:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->validityPeriodFormat:I

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .locals 14
    .parameter "hasUserDataHeader"
    .parameter "dataInSeptets"

    .prologue
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .local v5, offset:I
    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->validityPeriodFormat:I

    packed-switch v10, :pswitch_data_0

    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .local v6, offset:I
    aget-byte v10, v10, v5

    and-int/lit16 v9, v10, 0xff

    .local v9, userDataLength:I
    const/4 v4, 0x0

    .local v4, headerSeptets:I
    const/4 v8, 0x0

    .local v8, userDataHeaderLength:I
    if-eqz p1, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6           #offset:I
    .restart local v5       #offset:I
    aget-byte v10, v10, v6

    and-int/lit16 v8, v10, 0xff

    new-array v7, v8, [B

    .local v7, udh:[B
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    const/4 v11, 0x0

    invoke-static {v10, v5, v7, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    add-int/2addr v5, v8

    add-int/lit8 v10, v8, 0x1

    mul-int/lit8 v3, v10, 0x8

    .local v3, headerBits:I
    div-int/lit8 v4, v3, 0x7

    rem-int/lit8 v10, v3, 0x7

    if-lez v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    add-int/2addr v4, v10

    mul-int/lit8 v10, v4, 0x7

    sub-int/2addr v10, v3

    iput v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .end local v3           #headerBits:I
    .end local v7           #udh:[B
    :goto_2
    if-eqz p2, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v10, v10

    sub-int v1, v10, v5

    .local v1, bufferLen:I
    :cond_0
    :goto_3
    new-array v10, v1, [B

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->access$000()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v13, v13

    invoke-static {v10, v5, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    if-eqz p2, :cond_7

    sub-int v2, v9, v4

    .local v2, count:I
    if-gez v2, :cond_6

    const/4 v10, 0x0

    .end local v2           #count:I
    :goto_5
    return v10

    .end local v1           #bufferLen:I
    .end local v4           #headerSeptets:I
    .end local v8           #userDataHeaderLength:I
    .end local v9           #userDataLength:I
    :pswitch_0
    const/4 v5, 0x7

    goto :goto_0

    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .restart local v3       #headerBits:I
    .restart local v4       #headerSeptets:I
    .restart local v7       #udh:[B
    .restart local v8       #userDataHeaderLength:I
    .restart local v9       #userDataLength:I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .end local v3           #headerBits:I
    .end local v7           #udh:[B
    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v10, v8, 0x1

    :goto_6
    sub-int v1, v9, v10

    .restart local v1       #bufferLen:I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_3

    .end local v1           #bufferLen:I
    :cond_3
    const/4 v10, 0x0

    goto :goto_6

    .restart local v1       #bufferLen:I
    :cond_4
    if-eqz p1, :cond_5

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v13, v13

    invoke-static {v10, v5, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_5
    const-string v10, "Gsm/SmsMessage"

    const-string v11, "array copy skip! if dataCodingScheme is unsupporting,\n encodingType is Unknown and messageBody is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .restart local v2       #count:I
    :cond_6
    move v10, v2

    goto :goto_5

    .end local v2           #count:I
    :cond_7
    move v0, v9

    .local v0, UCS2Count:I
    if-eqz p1, :cond_8

    sub-int v10, v0, v8

    const/4 v11, 0x1

    sub-int v0, v10, v11

    :cond_8
    move v10, v0

    goto :goto_5

    .end local v0           #UCS2Count:I
    .end local v1           #bufferLen:I
    .end local v5           #offset:I
    .restart local v6       #offset:I
    :cond_9
    move v5, v6

    .end local v6           #offset:I
    .restart local v5       #offset:I
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .local v0, addressLength:I
    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x2

    .local v1, lengthBytes:I
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    .local v2, ret:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    return-object v2
.end method

.method getByte()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .local v0, len:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    return-object v1

    .end local v1           #ret:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0

    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, tr:Ljava/lang/RuntimeException;
    const-string v3, "Gsm/SmsMessage"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method getSCTimestampMillis()J
    .locals 13

    .prologue
    const/4 v12, 0x1

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .local v8, year:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .local v3, month:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .local v0, day:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .local v1, hour:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .local v2, minute:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .local v4, second:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v7, v9, v10

    .local v7, tzByte:B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .local v6, timezoneOffset:I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_0

    :goto_0
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v5, time:Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v8, v9, :cond_1

    add-int/lit16 v9, v8, 0x76c

    :goto_1
    iput v9, v5, Landroid/text/format/Time;->year:I

    sub-int v9, v3, v12

    iput v9, v5, Landroid/text/format/Time;->month:I

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    iput v1, v5, Landroid/text/format/Time;->hour:I

    iput v2, v5, Landroid/text/format/Time;->minute:I

    iput v4, v5, Landroid/text/format/Time;->second:I

    invoke-virtual {v5, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9

    .end local v5           #time:Landroid/text/format/Time;
    :cond_0
    neg-int v9, v6

    move v6, v9

    goto :goto_0

    .restart local v5       #time:Landroid/text/format/Time;
    :cond_1
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_1
.end method

.method getUserData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    return-object v0
.end method

.method getUserDataEUC_KR(I)Ljava/lang/String;
    .locals 5
    .parameter "byteCount"

    .prologue
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v4, "EUC_KR"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    return-object v1

    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getUserDataGSM7Bit(III)Ljava/lang/String;
    .locals 7
    .parameter "septetCount"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v6

    .local v6, ret:Ljava/lang/String;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    mul-int/lit8 v1, p1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    return-object v6
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataSeptetPadding()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    return v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .locals 5
    .parameter "byteCount"

    .prologue
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    return-object v1

    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method moreDataPresent()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
