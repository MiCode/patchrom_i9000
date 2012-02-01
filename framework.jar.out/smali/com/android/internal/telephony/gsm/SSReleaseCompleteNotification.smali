.class public Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
.super Ljava/lang/Object;
.source "SSReleaseCompleteNotification.java"


# static fields
.field public static final RIL_PARAM_SSDI_DATA:I = 0x2

.field public static final RIL_PARAM_SSDI_STATUS:I = 0x1


# instance fields
.field public data:Ljava/lang/String;

.field public dataLen:I

.field public params:I

.field public size:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->size:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->params:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->status:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    return-void
.end method
