.class Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# instance fields
.field private digit0:B

.field private digit1:B

.field private length:B

.field private tag:B

.field private timeInfo:[B


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "min"
    .parameter "sec"
    .parameter "zone"

    .prologue
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/16 v0, -0x5a

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->tag:B

    iput-byte v1, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->length:B

    rem-int/lit8 v0, p1, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    rem-int/lit8 v0, p1, 0x64

    div-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 p2, p2, 0x1

    rem-int/lit8 v0, p2, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    div-int/lit8 v0, p2, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    rem-int/lit8 v0, p3, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    div-int/lit8 v0, p3, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x2

    iget-byte v2, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    rem-int/lit8 v0, p4, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    div-int/lit8 v0, p4, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x3

    iget-byte v2, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    rem-int/lit8 v0, p5, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    div-int/lit8 v0, p5, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x4

    iget-byte v2, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    rem-int/lit8 v0, p6, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    div-int/lit8 v0, p6, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x5

    iget-byte v2, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x6

    int-to-byte v2, p7

    aput-byte v2, v0, v1

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .parameter "buf"

    .prologue
    iget-byte v1, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->tag:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-byte v1, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->length:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
