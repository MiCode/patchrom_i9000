.class Lcom/android/internal/telephony/MccTable$MccEntry;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MccEntry"
.end annotation


# instance fields
.field iso:Ljava/lang/String;

.field language:Ljava/lang/String;

.field mcc:I

.field smallestDigitsMnc:I

.field zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "mnc"
    .parameter "zoneId"
    .parameter "iso"
    .parameter "smallestDigitsMCC"

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "mnc"
    .parameter "zoneId"
    .parameter "iso"
    .parameter "smallestDigitsMCC"
    .parameter "language"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mcc:I

    iput-object p2, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->zoneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->iso:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->smallestDigitsMnc:I

    iput-object p5, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->language:Ljava/lang/String;

    return-void
.end method
