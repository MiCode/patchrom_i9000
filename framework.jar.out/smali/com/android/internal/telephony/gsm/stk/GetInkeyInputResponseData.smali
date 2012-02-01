.class Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "inData"
    .parameter "ucs2"
    .parameter "packed"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    iput-boolean p3, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "yesNoResponse"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 14
    .parameter "buf"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v7, v9, 0x80

    .local v7, tag:I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v9, :cond_4

    new-array v2, v13, [B

    .local v2, data:[B
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v9, :cond_3

    move v9, v13

    :goto_0
    aput-byte v9, v2, v12

    :goto_1
    array-length v9, v2

    const/16 v10, 0x80

    if-lt v9, v10, :cond_2

    array-length v9, v2

    const/16 v10, 0xff

    if-gt v9, v10, :cond_2

    const/16 v9, 0x81

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_9

    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    move-object v0, v2

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v5, :cond_0

    aget-byte v1, v0, v4

    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    move v9, v12

    goto :goto_0

    .end local v2           #data:[B
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    :try_start_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v10, "UTF-16BE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1

    .end local v2           #data:[B
    :cond_5
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, size:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v8

    .local v8, tempData:[B
    array-length v9, v8

    if-le v9, v13, :cond_6

    array-length v9, v8

    sub-int/2addr v9, v13

    new-array v2, v9, [B

    .restart local v2       #data:[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    array-length v11, v8

    sub-int/2addr v11, v13

    invoke-static {v8, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .end local v2           #data:[B
    .end local v6           #size:I
    .end local v8           #tempData:[B
    :catch_0
    move-exception v9

    move-object v3, v9

    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-array v2, v12, [B

    .restart local v2       #data:[B
    goto :goto_1

    .end local v2           #data:[B
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #size:I
    .restart local v8       #tempData:[B
    :cond_6
    :try_start_1
    new-array v2, v6, [B

    .restart local v2       #data:[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v8, v9, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v2           #data:[B
    .end local v6           #size:I
    .end local v8           #tempData:[B
    :catch_1
    move-exception v9

    move-object v3, v9

    .local v3, e:Lcom/android/internal/telephony/EncodeException;
    new-array v2, v12, [B

    .restart local v2       #data:[B
    goto :goto_1

    .end local v2           #data:[B
    .end local v3           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_7
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1

    .end local v2           #data:[B
    :cond_8
    new-array v2, v12, [B

    .restart local v2       #data:[B
    goto/16 :goto_1

    :cond_9
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_a

    invoke-virtual {p1, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_a
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method
