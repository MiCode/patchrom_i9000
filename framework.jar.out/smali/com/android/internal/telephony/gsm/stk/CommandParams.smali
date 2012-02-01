.class Lcom/android/internal/telephony/gsm/stk/CommandParams;
.super Ljava/lang/Object;
.source "CommandParams.java"


# instance fields
.field cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V
    .locals 0
    .parameter "cmdDet"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    return-void
.end method


# virtual methods
.method getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    const/4 v0, 0x1

    return v0
.end method
