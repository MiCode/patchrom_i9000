.class Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$OemCommands;
.super Ljava/lang/Object;
.source "GsmMultiDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemCommands"
.end annotation


# static fields
.field static final OEM_FUNCTION_ID_GPRS:I = 0x9

.field static final OEM_GPRS_DISCONNECT_DUN:I = 0x3

.field static final OEM_GPRS_EXEC_DUN_PIN_CTRL:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$OemCommands;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
