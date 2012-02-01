.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "Gsm/SmsMessage"

.field public static mDay:I

.field public static mHour:I

.field public static mMin:I

.field public static mMonth:I

.field public static mSec:I

.field public static mTimezone:I

.field public static mYear:I

.field private static unsupportedDatacodingScheme:Z


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private protocolIdentifier:I

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return-void
.end method

.method public static ConvertDateStringToBCD(Ljava/lang/String;)[B
    .locals 8
    .parameter "mDate"

    .prologue
    const-string v0, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, year:Ljava/lang/String;
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, month:Ljava/lang/String;
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, day:Ljava/lang/String;
    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, hour:Ljava/lang/String;
    const/16 v2, 0x8

    const/16 v5, 0xa

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, min:Ljava/lang/String;
    const/16 v5, 0xa

    const/16 v6, 0xc

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .local p0, sec:Ljava/lang/String;
    const-string v5, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1. year:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " month:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hour:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .end local v4           #year:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .end local v3           #month:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0           #day:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0           #sec:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result p0

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    const/4 p0, 0x0

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    const/4 p0, 0x0

    .local p0, zone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    .end local p0           #zone:Ljava/util/TimeZone;
    int-to-long v2, p0

    .local v2, tzOffset:J
    const-string p0, "Gsm/SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timezeone"

    .end local v1           #hour:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    neg-long v2, v2

    const-wide/32 v0, 0xdbba0

    div-long v0, v2, v0

    .local v0, temp:J
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timezeone->temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p0, v0

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result p0

    .local p0, temp2:I
    div-int/lit8 v4, p0, 0xa

    shl-int/lit8 v4, v4, 0x4

    rem-int/lit8 p0, p0, 0xa

    .end local p0           #temp2:I
    add-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v4

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTimezone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2. year:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " month:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " day:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hour:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "%02d%02d%02d%02d%02d%02d%02x"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, timestamp:Ljava/lang/String;
    :goto_0
    const-string v0, "Gsm/SmsMessage"

    .end local v0           #temp:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp string: "

    .end local v2           #tzOffset:J
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0           #timestamp:Ljava/lang/String;
    return-object p0

    .restart local v2       #tzOffset:J
    :cond_0
    const-wide/32 v0, 0xdbba0

    div-long v0, v2, v0

    .restart local v0       #temp:J
    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timezeone->temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p0, v0

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result p0

    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTimezone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2. year:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " month:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " day:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hour:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "%02d%02d%02d%02d%02d%02d%02d"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #timestamp:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    return v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 4
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    const/16 v3, 0x8c

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .restart local v1       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .local v0, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    if-le v0, v3, :cond_1

    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_0
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .end local v0           #octets:I
    :cond_0
    return-object v1

    .restart local v0       #octets:I
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    sub-int v2, v3, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 5
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "encodingType"

    .prologue
    const/16 v4, 0x8c

    const/4 v3, 0x1

    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-ne p2, v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .restart local v1       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .local v0, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    if-le v0, v4, :cond_3

    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_1
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .end local v0           #octets:I
    :cond_0
    return-object v1

    :cond_1
    if-nez p2, :cond_2

    invoke-static {p0, v3}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    goto :goto_0

    .restart local v0       #octets:I
    :cond_3
    iput v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    sub-int v2, v4, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 9
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const-string v7, "Gsm/SmsMessage"

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    const-string v4, "Gsm/SmsMessage"

    const-string v5, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v4

    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x7

    iput v4, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    array-length v4, p1

    sub-int v3, v4, v5

    .local v3, size:I
    new-array v2, v3, [B

    .local v2, pdu:[B
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V

    const-string v4, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mti: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/SmsMessageBase;->mti:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " indexOnIcc :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " statusOnIcc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    goto :goto_0

    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "Gsm/SmsMessage"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v8

    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static decToBcd(I)I
    .locals 4
    .parameter "digit"

    .prologue
    const/4 v1, 0x0

    .local v1, left:I
    const/4 v2, 0x0

    .local v2, right:I
    const/4 v0, 0x0

    .local v0, bcd_value:I
    div-int/lit8 v1, p0, 0xa

    rem-int/lit8 v2, p0, 0xa

    mul-int/lit8 v3, v2, 0xa

    add-int v0, v3, v1

    return v0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, textPart:[B
    if-eqz p1, :cond_0

    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "date"
    .parameter "header"

    .prologue
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v3

    .local v3, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    .end local v3           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return-object p0

    .restart local v3       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    const/4 v1, 0x0

    .local v1, mtiByte:B
    const/4 v0, 0x0

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    if-eqz v3, :cond_2

    :try_start_1
    iget p1, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    .end local p1
    iget v0, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p2, p4, p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object p1

    .local p1, userData:[B
    move-object v0, p1

    .end local p1           #userData:[B
    .local v0, userData:[B
    :goto_1
    const/4 p1, 0x0

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xa0

    if-le p1, v1, :cond_3

    .end local v1           #mtiByte:B
    const/4 p0, 0x0

    goto :goto_0

    .end local v0           #userData:[B
    .restart local v1       #mtiByte:B
    .local p1, Address:Ljava/lang/String;
    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p2, p4, p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    .end local p1           #Address:Ljava/lang/String;
    move-result-object p1

    .local p1, userData:[B
    move-object v0, p1

    .end local p1           #userData:[B
    .restart local v0       #userData:[B
    goto :goto_1

    .end local v1           #mtiByte:B
    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p1, 0x7

    new-array p1, p1, [B

    .local p1, timestamp:[B
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x0

    array-length v3, p1

    .end local v3           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-virtual {p0, p1, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    array-length v1, v0

    .end local p1           #timestamp:[B
    invoke-virtual {p0, v0, p1, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v0           #userData:[B
    .end local p2
    .end local p3
    .end local p4
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v2, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    move-object p0, v2

    goto :goto_0

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #mtiByte:B
    .restart local v3       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .local p0, scAddress:Ljava/lang/String;
    .local p1, Address:Ljava/lang/String;
    .restart local p2
    .restart local p3
    .restart local p4
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v1           #mtiByte:B
    .end local v3           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :goto_3
    :try_start_2
    const-string p1, "utf-16be"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p1

    .local p1, textPart:[B
    if-eqz p4, :cond_4

    array-length p2, p4

    .end local p2
    array-length v0, p1

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .local p2, userData:[B
    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v3, p4

    invoke-static {p4, v0, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    array-length p4, p4

    .end local p4
    array-length v1, p1

    invoke-static {p1, v0, p2, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local p1           #textPart:[B
    :goto_4
    array-length p1, p2

    const/16 p4, 0x8c

    if-le p1, p4, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    .local p2, message:Ljava/lang/String;
    .restart local p4
    :catch_1
    move-exception p0

    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "Gsm/SmsMessage"

    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2           #message:Ljava/lang/String;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    goto :goto_0

    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #textPart:[B
    .restart local p2       #message:Ljava/lang/String;
    :cond_4
    move-object p1, p1

    .local p1, userData:[B
    move-object p2, p1

    .end local p1           #userData:[B
    .local p2, userData:[B
    goto :goto_4

    .end local p4
    :cond_5
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p1, 0x7

    new-array p1, p1, [B

    .local p1, timestamp:[B
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p3, 0x0

    array-length p4, p1

    .end local p3
    invoke-virtual {p0, p1, p3, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length p1, p2

    .end local p1           #timestamp:[B
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p1, 0x0

    array-length p3, p2

    invoke-virtual {p0, p2, p1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .local p2, message:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :catch_2
    move-exception p1

    goto :goto_3
.end method

.method private static getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .parameter "scAddress"
    .parameter "Address"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    const/4 v2, 0x0

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, daBytes:[B
    if-nez v1, :cond_1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object v0

    .end local v1           #daBytes:[B
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_1
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_2

    move v3, v6

    :goto_2
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2
.end method

.method public static getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 12
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "header"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-static {p2, v10}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .local v4, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v8, v11

    :goto_0
    return-object v8

    :cond_1
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v2, 0x1

    .local v2, mtiByte:B
    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-eqz v4, :cond_2

    :try_start_0
    iget v8, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iget v9, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p2, p3, v8, v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v7

    .local v7, userData:[B
    :goto_1
    const/4 v8, 0x0

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xa0

    if-le v8, v9, :cond_3

    move-object v8, v11

    goto :goto_0

    .end local v7           #userData:[B
    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p2, p3, v8, v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v7

    .restart local v7       #userData:[B
    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {v0, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, v3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v8, v3

    goto :goto_0

    .end local v7           #userData:[B
    :catch_0
    move-exception v8

    move-object v1, v8

    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v8, "utf-16be"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .local v5, textPart:[B
    if-eqz p3, :cond_4

    array-length v8, p3

    array-length v9, v5

    add-int/2addr v8, v9

    new-array v7, v8, [B

    .restart local v7       #userData:[B
    array-length v8, p3

    invoke-static {p3, v10, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, p3

    array-length v9, v5

    invoke-static {v5, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    array-length v8, v7

    const/16 v9, 0x8c

    if-le v8, v9, :cond_5

    move-object v8, v11

    goto :goto_0

    .end local v5           #textPart:[B
    .end local v7           #userData:[B
    :catch_1
    move-exception v8

    move-object v6, v8

    .local v6, uex:Ljava/io/UnsupportedEncodingException;
    const-string v8, "Gsm/SmsMessage"

    const-string v9, "Implausible UnsupportedEncodingException "

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v11

    goto :goto_0

    .end local v6           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #textPart:[B
    :cond_4
    move-object v7, v5

    .restart local v7       #userData:[B
    goto :goto_3

    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v8, v7

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v8, v7

    invoke-virtual {v0, v7, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2
.end method

.method private static getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .parameter "scAddress"
    .parameter "Address"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    const/4 v2, 0x0

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, daBytes:[B
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_1

    move v3, v6

    :goto_1
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object v0

    .end local v1           #daBytes:[B
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_1
    move v3, v5

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/16 v8, 0x8c

    const/4 v7, 0x0

    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .local v4, smsHeaderData:[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    if-le v5, v8, :cond_0

    const-string v5, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    sub-int v7, v8, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v5, v2

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 13
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "a"
    .parameter "b"

    .prologue
    if-gtz p8, :cond_0

    if-lez p9, :cond_1

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v2, Header:Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p8

    move-object v1, v2

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p9

    move-object v1, v2

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v2 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .end local v2           #Header:Lcom/android/internal/telephony/SmsHeader;
    move-result-object p0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v2 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p6
    :goto_0
    return-object p0

    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p6
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .local v1, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 v0, 0x40

    :goto_1
    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .local v0, mtiByte:B
    invoke-static {p0, p1, v0, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p5, :cond_2

    const/4 p5, 0x1

    :cond_2
    const/4 p1, 0x1

    if-ne p5, p1, :cond_4

    .end local p1
    :try_start_0
    invoke-static {p2, p4, p6, p7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .end local p3
    .end local p6
    .local p1, userData:[B
    :goto_2
    const/4 p2, 0x1

    if-ne p5, p2, :cond_6

    .end local p2
    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0xa0

    if-le p2, p3, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    .end local v0           #mtiByte:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p2
    .restart local p3
    .restart local p6
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .end local p1           #destinationAddress:Ljava/lang/String;
    .restart local v0       #mtiByte:B
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_1
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .local p1, userData:[B
    goto :goto_2

    .end local p1           #userData:[B
    :catch_0
    move-exception p1

    .local p1, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string p3, "Gsm/SmsMessage"

    .end local p3
    const-string p6, "Implausible UnsupportedEncodingException "

    .end local p6
    invoke-static {p3, p6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 p0, 0x0

    goto :goto_0

    .end local p1           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception p1

    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p1

    .local p1, userData:[B
    const/4 p5, 0x3

    goto :goto_2

    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :catch_2
    move-exception p0

    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "Gsm/SmsMessage"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    goto :goto_0

    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, userData:[B
    :cond_5
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_3
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object p0, v1

    goto :goto_0

    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    :cond_6
    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x8c

    if-le p2, p3, :cond_7

    const/4 p0, 0x0

    goto :goto_0

    :cond_7
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    const-string p7, "Gsm/SmsMessage"

    .end local p7
    const-string v0, "getSubmitPdu with Options"

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    :goto_0
    return-object p0

    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_1
    const-string p7, "Gsm/SmsMessage"

    const-string v0, "**getSubmitPdu_Options**"

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p7, "Gsm/SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replyPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p7, "Gsm/SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encodingType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p7, "Gsm/SmsMessage"

    const-string v0, "**********************"

    invoke-static {p7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .local v0, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 p7, 0x40

    :goto_1
    or-int/lit8 p7, p7, 0x1

    int-to-byte p7, p7

    .local p7, mtiByte:B
    if-eqz p5, :cond_a

    or-int/lit16 p5, p7, 0x80

    int-to-byte p5, p5

    .end local p7           #mtiByte:B
    .local p5, mtiByte:B
    const-string p7, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtiByte = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/16 p7, 0xff

    if-eq p6, p7, :cond_2

    or-int/lit8 p5, p5, 0x10

    int-to-byte p5, p5

    const-string p7, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtiByte = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p0, p1, p5, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 p1, 0x1

    if-ne p8, p1, :cond_4

    .end local p1
    :try_start_0
    new-instance p1, Lcom/android/internal/telephony/EncodeException;

    const-string p3, "Input Method is Unicode"

    .end local p3
    invoke-direct {p1, p3}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p5           #mtiByte:B
    :catch_0
    move-exception p1

    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string p1, "utf-16be"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .local p1, textPart:[B
    if-eqz p4, :cond_7

    array-length p2, p4

    .end local p2
    array-length p3, p1

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [B

    .local p2, userData:[B
    const/4 p3, 0x0

    array-length p5, p4

    int-to-byte p5, p5

    aput-byte p5, p2, p3

    const/4 p3, 0x0

    const/4 p5, 0x1

    array-length p7, p4

    invoke-static {p4, p3, p2, p5, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p3, 0x0

    array-length p4, p4

    .end local p4
    add-int/lit8 p4, p4, 0x1

    array-length p5, p1

    invoke-static {p1, p3, p2, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .end local p2           #userData:[B
    .local p1, userData:[B
    :goto_3
    array-length p2, p1

    const/16 p3, 0x8c

    if-le p2, p3, :cond_8

    const/4 p0, 0x0

    goto/16 :goto_0

    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .local p2, message:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .local p5, replyPath:Z
    :cond_3
    const/4 p7, 0x0

    goto :goto_1

    .end local p1           #destinationAddress:Ljava/lang/String;
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p5, mtiByte:B
    :cond_4
    :try_start_2
    invoke-static {p2, p4, p9, p10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object p1

    .local p1, userData:[B
    const/4 p3, 0x0

    aget-byte p3, p1, p3

    .end local p3
    and-int/lit16 p3, p3, 0xff

    const/16 p5, 0xa0

    if-le p3, p5, :cond_5

    .end local p5           #mtiByte:B
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 p3, 0xff

    if-eq p6, p3, :cond_6

    invoke-virtual {p0, p6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string p3, "Gsm/SmsMessage"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "expirty = "

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p3, 0x0

    array-length p5, p1

    invoke-virtual {p0, p1, p3, p5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    .end local p2           #message:Ljava/lang/String;
    .end local p4
    :goto_4
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object p0, v0

    goto/16 :goto_0

    .end local p1           #userData:[B
    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #message:Ljava/lang/String;
    .restart local p4
    :catch_1
    move-exception p0

    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "Gsm/SmsMessage"

    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2           #message:Ljava/lang/String;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    goto/16 :goto_0

    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, textPart:[B
    .restart local p2       #message:Ljava/lang/String;
    :cond_7
    move-object p1, p1

    .local p1, userData:[B
    goto :goto_3

    .end local p2           #message:Ljava/lang/String;
    .end local p4
    :cond_8
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 p2, 0xff

    if-eq p6, p2, :cond_9

    invoke-virtual {p0, p6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string p2, "Gsm/SmsMessage"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "expirty = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    array-length p2, p1

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p2       #message:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .local p5, replyPath:Z
    .restart local p7       #mtiByte:B
    :cond_a
    move p5, p7

    .end local p7           #mtiByte:B
    .local p5, mtiByte:B
    goto/16 :goto_2
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    :goto_0
    if-eqz p3, :cond_0

    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS status report requested"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, daBytes:[B
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_2

    move v3, v6

    :goto_1
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object v0

    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .local v0, len:I
    const/4 v1, 0x0

    .local v1, smscLen:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sub-int v2, v0, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    const-string v0, "Gsm/SmsMessage"

    const-string v1, "newFromCMTI: not yet supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2
    .parameter "p"

    .prologue
    const-string v0, "Gsm/SmsMessage"

    const-string v1, "newFromParcel: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private parsePdu([B)V
    .locals 5
    .parameter "pdu"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "Gsm/SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS SC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mti:I

    iget v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mti:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "Gsm/SmsMessage"

    and-int/lit16 v1, p2, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    :cond_0
    const-string v1, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "originatingAddress.address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    const-string v1, "Gsm/SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS SC timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    move v0, v5

    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .local v0, extraParams:I
    move v2, v0

    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v6

    goto :goto_0

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5

    move v1, v5

    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v6

    goto :goto_2
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    and-int/lit16 v1, p2, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    shr-int/lit8 v1, p2, 0x3

    and-int/lit8 v1, v1, 0x3

    iput v1, p1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->validityPeriodFormat:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v1, "Gsm/SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipientAddress.address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    move v0, v5

    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 12
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    const/16 v11, 0xe0

    const/16 v10, 0xc0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "Gsm/SmsMessage"

    const/4 v3, 0x0

    .local v3, hasMessageClass:Z
    const/4 v4, 0x0

    .local v4, userDataCompressed:Z
    const/4 v2, 0x0

    .local v2, encodingType:I
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0x84

    const/16 v6, 0x84

    if-ne v5, v6, :cond_1

    const/4 v2, 0x4

    :goto_0
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasUserDataHeader : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v8, :cond_f

    move v5, v8

    :goto_1
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    packed-switch v2, :pswitch_data_0

    :goto_2
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageBody : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const-string v6, "\r\n"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    :cond_0
    if-nez v3, :cond_12

    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    :goto_3
    return-void

    .end local v1           #count:I
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2

    move v5, v8

    :goto_4
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_3

    move v4, v8

    :goto_5
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    move v3, v8

    :goto_6
    if-eqz v4, :cond_5

    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    :cond_2
    move v5, v7

    goto :goto_4

    :cond_3
    move v4, v7

    goto :goto_5

    :cond_4
    move v3, v7

    goto :goto_6

    :cond_5
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const/4 v2, 0x1

    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    :pswitch_1
    const/4 v2, 0x3

    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    :pswitch_2
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    const/4 v2, 0x2

    goto/16 :goto_0

    :pswitch_3
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    const/4 v2, 0x4

    goto/16 :goto_0

    :cond_6
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_8

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_7

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x2

    goto/16 :goto_0

    :cond_8
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-eq v5, v10, :cond_9

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_9

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v11, :cond_e

    :cond_9
    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v11, :cond_a

    const/4 v2, 0x3

    :goto_7
    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_b

    move v0, v8

    .local v0, active:Z
    :goto_8
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_d

    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v10, :cond_c

    move v5, v8

    :goto_9
    iput-boolean v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    goto/16 :goto_0

    .end local v0           #active:Z
    :cond_a
    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    move v0, v7

    goto :goto_8

    .restart local v0       #active:Z
    :cond_c
    move v5, v7

    goto :goto_9

    :cond_d
    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MWI for fax, email, or other "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #active:Z
    :cond_e
    const-string v5, "Gsm/SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v8, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    :cond_f
    move v5, v7

    goto/16 :goto_1

    .restart local v1       #count:I
    :pswitch_4
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_5
    if-eqz p2, :cond_10

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    :goto_a
    if-eqz p2, :cond_11

    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :goto_b
    invoke-virtual {p1, v1, v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    move v5, v7

    goto :goto_a

    :cond_11
    move v6, v7

    goto :goto_b

    :pswitch_6
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataEUC_KR(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    :cond_12
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_3

    :pswitch_8
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    :pswitch_9
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    :pswitch_a
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    :pswitch_b
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-nez v0, :cond_0

    move v0, v1

    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-ne v0, v1, :cond_0

    move v0, v1

    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
