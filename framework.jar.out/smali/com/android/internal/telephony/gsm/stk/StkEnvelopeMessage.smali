.class public Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;
.super Ljava/lang/Object;
.source "StkEnvelopeMessage.java"


# instance fields
.field additionalInfo:[B

.field destinationID:I

.field event:I

.field sourceID:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 1
    .parameter "event"
    .parameter "sourceID"
    .parameter "destinationID"
    .parameter "additionalInfo"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->event:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->sourceID:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->destinationID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->additionalInfo:[B

    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->event:I

    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->sourceID:I

    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->destinationID:I

    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->additionalInfo:[B

    return-void
.end method
