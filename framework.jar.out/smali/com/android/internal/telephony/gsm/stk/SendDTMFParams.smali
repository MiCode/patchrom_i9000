.class Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;
.super Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field dtmfString:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;[B)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "dtmfString"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    return-void
.end method
