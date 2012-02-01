.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 4
    .parameter "headers"

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .local v0, messageType:I
    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .local v1, mmsVersion:I
    if-nez v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .local v0, srContentType:[B
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #srContentType:[B
    move-result-object v0

    .local v0, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p0

    .local p0, srTransactionId:[B
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto :goto_0

    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_1
    const/16 v0, 0x92

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .local v0, scResponseStatus:I
    if-nez v0, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #scResponseStatus:I
    move-result-object p0

    .local p0, scTransactionId:[B
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto :goto_0

    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_2
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .local v0, niContentLocation:[B
    if-nez v0, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    :cond_5
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niContentLocation:[B
    move-result-wide v0

    .end local v1           #mmsVersion:I
    .local v0, niExpiry:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    .end local v0           #niExpiry:J
    const/4 p0, 0x0

    goto :goto_0

    :cond_6
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .local v0, niMessageClass:[B
    if-nez v0, :cond_7

    const/4 p0, 0x0

    goto :goto_0

    :cond_7
    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niMessageClass:[B
    move-result-wide v0

    .local v0, niMessageSize:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_8

    .end local v0           #niMessageSize:J
    const/4 p0, 0x0

    goto :goto_0

    :cond_8
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .local p0, niTransactionId:[B
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_3
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .local v0, nriStatus:I
    if-nez v0, :cond_9

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #nriStatus:I
    move-result-object p0

    .local p0, nriTransactionId:[B
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_4
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .local v0, rcContentType:[B
    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #rcContentType:[B
    move-result-wide v0

    .end local v1           #mmsVersion:I
    .local v0, rcDate:J
    const-wide/16 v2, -0x1

    cmp-long p0, v2, v0

    if-nez p0, :cond_15

    .end local p0           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .restart local p0       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_5
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .end local v1           #mmsVersion:I
    .local v0, diDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_b

    .end local v0           #diDate:J
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .local v0, diMessageId:[B
    if-nez v0, :cond_c

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #diMessageId:[B
    move-result v0

    .local v0, diStatus:I
    if-nez v0, :cond_d

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #diStatus:I
    move-result-object p0

    .local p0, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_6
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object p0

    .local p0, aiTransactionId:[B
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .restart local v0       #messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_7
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .end local v1           #mmsVersion:I
    .local v0, roDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_e

    .end local v0           #roDate:J
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .local v0, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_f

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .local v0, roMessageId:[B
    if-nez v0, :cond_10

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #roMessageId:[B
    move-result v0

    .local v0, roReadStatus:I
    if-nez v0, :cond_11

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #roReadStatus:I
    move-result-object p0

    .local p0, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_8
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #messageType:I
    move-result-object v0

    .local v0, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_12

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .local v0, rrMessageId:[B
    if-nez v0, :cond_13

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #rrMessageId:[B
    move-result v0

    .local v0, rrReadStatus:I
    if-nez v0, :cond_14

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #rrReadStatus:I
    move-result-object p0

    .local p0, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    .end local v1           #mmsVersion:I
    .end local p0           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/4 p0, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .parameter "part"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .local v0, contentId:[B
    if-eqz v0, :cond_2

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_2

    move v2, v4

    goto :goto_0

    .end local v0           #contentId:[B
    :cond_2
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .local v1, contentType:[B
    if-eqz v1, :cond_3

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_3

    move v2, v4

    goto :goto_0

    .end local v1           #contentType:[B
    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-lt p0, v0, :cond_2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 7
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    .local v0, contentType:[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .local v2, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v2, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v1, v2, 0xff

    .local v1, cur:I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_8

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .local v2, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .local v3, startPos:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .end local v1           #cur:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .local v4, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-ne v1, v4, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v1, v4, 0xff

    .local v1, first:I
    const/16 v5, 0x20

    if-lt v1, v5, :cond_4

    const/16 v5, 0x7f

    if-gt v1, v5, :cond_4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #contentType:[B
    move-result-object v0

    .end local v1           #first:I
    .restart local v0       #contentType:[B
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .local v1, endPos:I
    sub-int v1, v3, v1

    sub-int v1, v2, v1

    .local v1, parameterLen:I
    if-lez v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2           #length:I
    invoke-static {p0, p1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    :cond_3
    if-gez v1, :cond_7

    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt MMS message"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .local v6, contentType:[B
    move-object v0, p0

    move-object p0, v6

    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .end local v6           #contentType:[B
    .local p0, contentType:[B
    :goto_1
    return-object v0

    .restart local v0       #contentType:[B
    .local v1, first:I
    .restart local v2       #length:I
    .restart local v3       #startPos:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_4
    const/16 v5, 0x7f

    if-le v1, v5, :cond_6

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #first:I
    array-length v1, v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, contentType:[B
    goto :goto_0

    .local v0, index:I
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #index:I
    move-result-object v0

    .local v0, contentType:[B
    goto :goto_0

    .restart local v1       #first:I
    :cond_6
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt content-type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .restart local v6       #contentType:[B
    move-object v0, p0

    move-object p0, v6

    .end local v6           #contentType:[B
    .local p0, contentType:[B
    goto :goto_1

    .end local v2           #length:I
    .restart local v0       #contentType:[B
    .local v1, parameterLen:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_7
    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object p0, v0

    .end local v0           #contentType:[B
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .local p0, contentType:[B
    :goto_2
    move-object v0, p0

    goto :goto_1

    .restart local v0       #contentType:[B
    .local v1, cur:I
    .local v2, temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_8
    const/16 p1, 0x7f

    if-gt v1, p1, :cond_9

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .local p1, temp:I
    goto :goto_2

    .end local p1           #temp:I
    .restart local v0       #contentType:[B
    .restart local v2       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_9
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .restart local p1       #temp:I
    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 5
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_0
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .local v2, startPos:I
    const/4 v1, 0x0

    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, lastLen:I
    move v3, v1

    .end local v1           #tempPos:I
    .local v3, tempPos:I
    :goto_0
    if-lez v0, :cond_c

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, param:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    const/4 v4, -0x1

    if-ne v4, v1, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_2
    add-int/lit8 v0, v0, -0x1

    sparse-switch v1, :sswitch_data_0

    const/4 v1, -0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v1           #param:I
    move-result v4

    if-ne v1, v4, :cond_b

    const-string v1, "PduParser"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    :goto_1
    move v3, v1

    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    goto :goto_0

    .local v1, param:I
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .local v0, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x7f

    if-le v0, v1, :cond_4

    .end local v1           #param:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, type:[B
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #type:[B
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .local v0, lastLen:I
    goto :goto_1

    .end local v1           #tempPos:I
    .local v0, first:I
    .restart local v3       #tempPos:I
    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #first:I
    move-result-object v0

    .local v0, type:[B
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .local v0, start:[B
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #start:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .local v0, lastLen:I
    goto :goto_1

    .local v1, param:I
    .restart local v3       #tempPos:I
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .local v0, firstValue:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x20

    if-le v0, v1, :cond_6

    .end local v1           #param:I
    const/16 v1, 0x7f

    if-lt v0, v1, :cond_7

    :cond_6
    if-nez v0, :cond_9

    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #firstValue:I
    move-result-object v1

    .local v1, charsetStr:[B
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v0

    .local v0, charsetInt:I
    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v3           #tempPos:I
    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charsetInt:I
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #charsetStr:[B
    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .local v0, lastLen:I
    goto/16 :goto_1

    .end local v0           #lastLen:I
    .local v1, charsetStr:[B
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "PduParser"

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .end local v1           #charsetStr:[B
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .local v0, firstValue:I
    .restart local v3       #tempPos:I
    :cond_9
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    .end local v0           #firstValue:I
    long-to-int v0, v0

    .local v0, charset:I
    if-eqz p1, :cond_8

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charset:I
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .local v0, name:[B
    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #name:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .local v0, lastLen:I
    goto/16 :goto_1

    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_b
    const/4 v0, 0x0

    move v1, v3

    .end local v3           #tempPos:I
    .restart local v1       #tempPos:I
    goto/16 :goto_1

    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_c
    if-eqz v0, :cond_d

    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Content-Type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 9
    .parameter "pduDataStream"

    .prologue
    const/4 v8, 0x0

    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    const/4 v3, 0x0

    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .local v5, temp:I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    const/4 v7, -0x1

    if-ne v7, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_1
    if-nez v5, :cond_2

    move-object v7, v8

    :goto_0
    return-object v7

    :cond_2
    and-int/lit16 v2, v5, 0xff

    .local v2, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v7, 0x20

    if-ge v2, v7, :cond_3

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    :cond_3
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .local v6, textString:[B
    if-eqz v0, :cond_4

    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    move-object v7, v3

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/Exception;
    move-object v7, v8

    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .parameter "pduDataStream"

    .prologue
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    :goto_0
    return-wide v1

    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 9
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v7, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1
    and-int/lit16 v0, v4, 0xff

    .local v0, count:I
    if-le v0, v8, :cond_2

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    const-wide/16 v2, 0x0

    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v7, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_3
    shl-long/2addr v2, v8

    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 6
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_0
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_1
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gtz p2, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .local v2, startPos:I
    const/4 v1, 0x0

    .local v1, tempPos:I
    move v0, p2

    .local v0, lastLen:I
    move v3, v1

    .end local v1           #tempPos:I
    .local v3, tempPos:I
    move v1, v0

    .end local v0           #lastLen:I
    .local v1, lastLen:I
    :goto_0
    if-lez v1, :cond_10

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, header:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    const/4 v4, -0x1

    if-ne v4, v0, :cond_3

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .restart local p0
    :cond_3
    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x7f

    if-le v0, v4, :cond_c

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v4

    if-ne v0, v4, :cond_b

    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    :goto_1
    return p1

    .restart local v0       #header:I
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .local v0, contentLocation:[B
    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    :goto_2
    move v3, v1

    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    move v1, v0

    .end local v0           #lastLen:I
    .local v1, lastLen:I
    goto :goto_0

    .local v0, header:I
    :sswitch_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .local v0, contentId:[B
    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    goto :goto_2

    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :sswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .end local v0           #header:I
    const v4, 0x10d001b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, contentDisposition:Z
    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .local v0, len:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .end local v1           #lastLen:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .local v4, thisStartPos:I
    const/4 v1, 0x0

    .local v1, thisEndPos:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .local v3, value:I
    const/16 v1, 0x80

    if-ne v3, v1, :cond_8

    .end local v1           #thisEndPos:I
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .restart local v1       #thisEndPos:I
    sub-int v5, v4, v1

    if-ge v5, v0, :cond_12

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .end local v3           #value:I
    .local v5, value:I
    const/16 v1, 0x98

    if-ne v5, v1, :cond_6

    .end local v1           #thisEndPos:I
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    :cond_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .local v3, thisEndPos:I
    sub-int v1, v4, v3

    if-ge v1, v0, :cond_7

    sub-int v1, v4, v3

    sub-int/2addr v0, v1

    .local v0, last:I
    new-array v1, v0, [B

    .local v1, temp:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .end local v0           #last:I
    .end local v1           #temp:[B
    .end local v4           #thisStartPos:I
    :cond_7
    move v1, v5

    .end local v5           #value:I
    .local v1, value:I
    move v0, v3

    .end local v3           #thisEndPos:I
    .local v0, thisEndPos:I
    :goto_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    goto :goto_2

    .end local v1           #tempPos:I
    .local v0, len:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I
    :cond_8
    const/16 v1, 0x81

    if-ne v3, v1, :cond_9

    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    :cond_9
    const/16 v1, 0x82

    if-ne v3, v1, :cond_a

    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .end local v0           #len:I
    .end local v4           #thisStartPos:I
    .local v1, lastLen:I
    .local v3, tempPos:I
    :cond_b
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_c
    const/16 v4, 0x20

    if-lt v0, v4, :cond_e

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_e

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .local v0, tempHeader:[B
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v1           #lastLen:I
    move-result-object v1

    .local v1, tempValue:[B
    const/4 v3, 0x1

    const-string v4, "Content-Transfer-Encoding"

    .end local v3           #tempPos:I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #tempHeader:[B
    if-ne v3, v0, :cond_d

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    :cond_d
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    goto/16 :goto_2

    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_e
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v4

    if-ne v0, v4, :cond_f

    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_f
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    .end local v0           #lastLen:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I
    :cond_10
    if-eqz v1, :cond_11

    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_11
    const/4 p0, 0x1

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .local v0, len:I
    .local v1, thisEndPos:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_12
    move v0, v1

    .end local v1           #thisEndPos:I
    .local v0, thisEndPos:I
    move v1, v3

    .end local v3           #value:I
    .local v1, value:I
    goto/16 :goto_4

    .end local v4           #thisStartPos:I
    .local v0, contentDisposition:Z
    .local v1, lastLen:I
    .local v3, tempPos:I
    :cond_13
    move v0, v1

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;
    .locals 9
    .parameter "pduDataStream"
    .parameter "contType"

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .restart local p0
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    .local v1, count:I
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .local v2, ctTypeStr:Ljava/lang/String;
    const-string p1, "application/vnd.wap.multipart.mixed"

    .end local p1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_1
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    const/4 p1, 0x0

    .local p1, i:I
    move v4, p1

    .end local v2           #ctTypeStr:Ljava/lang/String;
    .end local p1           #i:I
    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_d

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .local v3, headerLength:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .local v2, dataLength:I
    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .local v7, startPos:I
    if-gtz v7, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, v5}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object p1

    .local p1, contentType:[B
    if-eqz p1, :cond_5

    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .end local p1           #contentType:[B
    :goto_2
    const/16 p1, 0x97

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    .local p1, name:[B
    if-eqz p1, :cond_3

    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    :cond_3
    const/16 p1, 0x81

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p1           #name:[B
    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .local p1, charset:Ljava/lang/Integer;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1           #charset:Ljava/lang/Integer;
    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    .local p1, endPos:I
    sub-int p1, v7, p1

    sub-int p1, v3, p1

    .local p1, partHeaderLen:I
    if-lez p1, :cond_6

    invoke-static {p0, v6, p1}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result p1

    .end local p1           #partHeaderLen:I
    if-nez p1, :cond_7

    const/4 p0, 0x0

    goto :goto_0

    .local p1, contentType:[B
    :cond_5
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local p1           #contentType:[B
    const/4 v8, 0x0

    aget-object p1, p1, v8

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .local p1, partHeaderLen:I
    :cond_6
    if-gez p1, :cond_7

    const/4 p0, 0x0

    goto/16 :goto_0

    .end local p1           #partHeaderLen:I
    :cond_7
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object p1

    if-nez p1, :cond_8

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object p1

    if-nez p1, :cond_8

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object p1

    if-nez p1, :cond_8

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .end local v7           #startPos:I
    invoke-static {v7, v8}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_8
    if-lez v2, :cond_b

    new-array v3, v2, [B

    .local v3, partData:[B
    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v2

    .local v2, partDataEncoding:[B
    if-eqz v2, :cond_10

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    .local p1, encoding:Ljava/lang/String;
    const-string v2, "base64"

    .end local v2           #partDataEncoding:[B
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v3}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object p1

    .end local v3           #partData:[B
    .local p1, partData:[B
    :goto_3
    if-nez p1, :cond_a

    const-string p0, "Decode part data error!"

    .end local p0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto/16 :goto_0

    .restart local v3       #partData:[B
    .restart local p0
    .local p1, encoding:Ljava/lang/String;
    :cond_9
    const-string v2, "quoted-printable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .end local p1           #encoding:Ljava/lang/String;
    if-eqz p1, :cond_10

    invoke-static {v3}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object p1

    .end local v3           #partData:[B
    .local p1, partData:[B
    goto :goto_3

    :cond_a
    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .end local p1           #partData:[B
    :cond_b
    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    :goto_4
    add-int/lit8 p1, v4, 0x1

    .end local v4           #i:I
    .local p1, i:I
    move v4, p1

    .end local p1           #i:I
    .restart local v4       #i:I
    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_4

    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_d
    move p0, v1

    .end local v1           #count:I
    .end local v4           #i:I
    .local p0, count:I
    :goto_5
    move-object p0, v0

    goto/16 :goto_0

    .restart local v1       #count:I
    .local v2, ctTypeStr:Ljava/lang/String;
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_e
    const-string p1, "text/plain"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p1, Ljava/lang/String;

    const-string v2, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    .end local v2           #ctTypeStr:Ljava/lang/String;
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local p1, smilDoc:Ljava/lang/String;
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .local v2, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v3, "smil.txt"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    const-string v3, "smil.txt"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    const-string v3, "application/smil"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .end local p1           #smilDoc:Ljava/lang/String;
    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    .end local v2           #smilPart:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    const-string p1, "attach.txt"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    const-string p1, "attach.txt"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    const-string p1, "text/plain"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    .local p1, dataLength:I
    new-array v3, p1, [B

    .restart local v3       #partData:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v3           #partData:[B
    .end local p1           #dataLength:I
    :cond_f
    move p0, v1

    .end local v1           #count:I
    .local p0, count:I
    goto :goto_5

    .restart local v1       #count:I
    .restart local v3       #partData:[B
    .restart local v4       #i:I
    .restart local v5       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v6       #part:Lcom/google/android/mms/pdu/PduPart;
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_10
    move-object p1, v3

    .end local v3           #partData:[B
    .local p1, partData:[B
    goto/16 :goto_3
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    const/4 v0, 0x0

    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, temp:I
    if-ne v1, v3, :cond_1

    move v2, v1

    :goto_0
    return v2

    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_2
    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    and-int/lit16 v0, v1, 0xff

    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    move v2, v0

    :goto_0
    return v2

    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    new-array v0, p1, [B

    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .local v1, readLen:I
    if-ge v1, p1, :cond_1

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 19

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    const/16 v16, 0x0

    :goto_0
    return-object v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    const/16 v17, 0x8c

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .local v8, messageType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    const/16 v17, 0x84

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .local v4, contType:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "check mandatory headers failed!"

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    const/16 v16, 0x80

    move/from16 v0, v16

    move v1, v8

    if-eq v0, v1, :cond_3

    const/16 v16, 0x84

    move/from16 v0, v16

    move v1, v8

    if-ne v0, v1, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    const/16 v16, 0x0

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    .local v6, ctTypeStr:Ljava/lang/String;
    const-string v16, "text/plain"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    const-string v17, "application/vnd.wap.multipart.mixed"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x84

    invoke-virtual/range {v16 .. v18}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .end local v6           #ctTypeStr:Ljava/lang/String;
    :cond_5
    packed-switch v8, :pswitch_data_0

    const-string v16, "Parser doesn\'t support this message type in this version!"

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v16, 0x0

    goto/16 :goto_0

    :pswitch_0
    new-instance v15, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v15, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v16, v15

    goto/16 :goto_0

    .end local v15           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v14, Lcom/google/android/mms/pdu/SendConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v14, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object/from16 v16, v14

    goto/16 :goto_0

    .end local v14           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v9, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v9, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object/from16 v16, v9

    goto/16 :goto_0

    .end local v9           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v10, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object/from16 v16, v10

    goto/16 :goto_0

    .end local v10           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v13, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v13, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v5

    .local v5, contentType:[B
    if-nez v5, :cond_6

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .restart local v6       #ctTypeStr:Ljava/lang/String;
    const-string v16, "application/vnd.wap.multipart.mixed"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    const-string v16, "application/vnd.wap.multipart.related"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    const-string v16, "text/plain"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    :cond_7
    move-object/from16 v16, v13

    goto/16 :goto_0

    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_0

    .end local v5           #contentType:[B
    .end local v6           #ctTypeStr:Ljava/lang/String;
    .end local v13           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v7, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v7, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object/from16 v16, v7

    goto/16 :goto_0

    .end local v7           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v3, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v3, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object/from16 v16, v3

    goto/16 :goto_0

    .end local v3           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v11, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v11, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object/from16 v16, v11

    goto/16 :goto_0

    .end local v11           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v12, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v12, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object/from16 v16, v12

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 31
    .parameter "pduDataStream"

    .prologue
    if-nez p1, :cond_0

    const/16 v27, 0x0

    .end local p0
    :goto_0
    return-object v27

    .restart local p0
    :cond_0
    const/4 v12, 0x1

    .local v12, keepParsing:Z
    new-instance v11, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .end local p0
    .local v11, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_1
    :goto_1
    if-eqz v12, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v27

    if-lez v27, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .local v10, headerField:I
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    const-string v27, "Unknown header"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v16

    .local v16, messageType:I
    packed-switch v16, :pswitch_data_1

    :try_start_0
    move-object v0, v11

    move/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v6

    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto :goto_0

    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/16 v27, 0x0

    goto :goto_0

    :catch_1
    move-exception v6

    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v16           #messageType:I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .local v24, value:I
    :try_start_1
    move-object v0, v11

    move/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_2
    move-exception v6

    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v6

    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .local v24, value:J
    move-object v0, v11

    move-wide/from16 v1, v24

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .end local v24           #value:J
    :catch_4
    move-exception v27

    move-object/from16 v6, v27

    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .restart local v24       #value:J
    move-object v0, v11

    move-wide/from16 v1, v24

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .end local v24           #value:J
    :catch_5
    move-exception v27

    move-object/from16 v6, v27

    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v24

    .local v24, value:[B
    if-eqz v24, :cond_1

    :try_start_4
    move-object v0, v11

    move-object/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    :catch_6
    move-exception v6

    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_7
    move-exception v6

    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:[B
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .local v24, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_1

    :try_start_5
    move-object v0, v11

    move-object/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    :catch_8
    move-exception v6

    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_9
    move-exception v6

    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .restart local v24       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .local v4, address:[B
    if-eqz v4, :cond_3

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .local v20, str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .local v7, endIndex:I
    if-lez v7, :cond_2

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    :cond_2
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_3
    :try_start_7
    move-object v0, v11

    move-object/from16 v1, v24

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    :catch_a
    move-exception v6

    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v7       #endIndex:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_b
    move-exception v27

    move-object/from16 v6, v27

    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :catch_c
    move-exception v6

    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v4           #address:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v23

    .local v23, token:I
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v21

    .local v21, timeValue:J
    const/16 v27, 0x81

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    add-long v21, v21, v27

    :cond_4
    :try_start_9
    move-object v0, v11

    move-wide/from16 v1, v21

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    :catch_d
    move-exception v6

    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v21           #timeValue:J
    :catch_e
    move-exception v6

    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v23           #token:I
    :pswitch_a
    const/4 v8, 0x0

    .local v8, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .local v9, fromToken:I
    const/16 v27, 0x80

    move/from16 v0, v27

    move v1, v9

    if-ne v0, v1, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .restart local v4       #address:[B
    if-eqz v4, :cond_6

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v20       #str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .restart local v7       #endIndex:I
    if-lez v7, :cond_5

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    :cond_5
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .end local v4           #address:[B
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_6
    :goto_2
    const/16 v27, 0x89

    :try_start_b
    move-object v0, v11

    move-object v1, v8

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_1

    :catch_f
    move-exception v6

    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v4       #address:[B
    .restart local v7       #endIndex:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_10
    move-exception v27

    move-object/from16 v6, v27

    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v4           #address:[B
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_7
    :try_start_c
    new-instance v8, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v27, "insert-address-token"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2

    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_11
    move-exception v27

    move-object/from16 v6, v27

    .restart local v6       #e:Ljava/lang/NullPointerException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_12
    move-exception v6

    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #fromToken:I
    :pswitch_b
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v14

    .local v14, messageClass:I
    const/16 v27, 0x80

    move v0, v14

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    const/16 v27, 0x80

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_8

    :try_start_d
    const-string v27, "personal"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    :catch_13
    move-exception v27

    move-object/from16 v6, v27

    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_8
    const/16 v27, 0x81

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_9

    :try_start_e
    const-string v27, "advertisement"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    :catch_14
    move-exception v27

    move-object/from16 v6, v27

    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_9
    const/16 v27, 0x82

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_a

    :try_start_f
    const-string v27, "informational"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    :cond_a
    const/16 v27, 0x83

    move/from16 v0, v27

    move v1, v14

    if-ne v0, v1, :cond_1

    const-string v27, "auto"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object v0, v11

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .local v15, messageClassString:[B
    if-eqz v15, :cond_1

    const/16 v27, 0x8a

    :try_start_10
    move-object v0, v11

    move-object v1, v15

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_1

    :catch_15
    move-exception v6

    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_16
    move-exception v6

    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v14           #messageClass:I
    .end local v15           #messageClassString:[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .local v26, version:I
    const/16 v27, 0x8d

    :try_start_11
    move-object v0, v11

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_11
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_18

    goto/16 :goto_1

    :catch_17
    move-exception v6

    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_18
    move-exception v6

    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v26           #version:I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    :try_start_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    .local v19, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v19, :cond_1

    const/16 v27, 0xa0

    :try_start_13
    move-object v0, v11

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_1

    :catch_19
    move-exception v6

    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1a
    move-exception v6

    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v19       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1b
    move-exception v6

    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    .local v17, perviouslySentDate:J
    const/16 v27, 0xa1

    move-object v0, v11

    move-wide/from16 v1, v17

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c

    goto/16 :goto_1

    .end local v17           #perviouslySentDate:J
    :catch_1c
    move-exception v27

    move-object/from16 v6, v27

    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v6

    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_1

    :catch_1e
    move-exception v6

    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    :pswitch_12
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v5

    .local v5, contentType:[B
    if-eqz v5, :cond_c

    const/16 v27, 0x84

    :try_start_17
    move-object v0, v11

    move-object v1, v5

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    :cond_c
    :goto_3
    const/16 v27, 0x99

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const/16 v27, 0x83

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    const/4 v12, 0x0

    goto/16 :goto_1

    :catch_1f
    move-exception v6

    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_20
    move-exception v6

    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/16 v27, 0x0

    goto/16 :goto_0

    .end local v5           #contentType:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v10           #headerField:I
    .end local v13           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_d
    move-object/from16 v27, v11

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
