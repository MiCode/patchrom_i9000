.class Lcom/android/internal/telephony/gsm/stk/SendSSParams;
.super Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field ssString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "ssString"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/SendSSParams;->ssString:Ljava/lang/String;

    return-void
.end method
