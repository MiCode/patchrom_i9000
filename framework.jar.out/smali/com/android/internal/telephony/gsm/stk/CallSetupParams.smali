.class Lcom/android/internal/telephony/gsm/stk/CallSetupParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field address:Ljava/lang/String;

.field callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;)V
    .locals 1
    .parameter "cmdDet"
    .parameter "confirmMsg"
    .parameter "callMsg"
    .parameter "address"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->address:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
