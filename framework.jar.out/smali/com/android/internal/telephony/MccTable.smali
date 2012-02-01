.class public final Lcom/android/internal/telephony/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MccTable$MccEntry;
    }
.end annotation


# static fields
.field private static final IND_CODES:[I = null

.field private static final LANG_STRINGS:[Ljava/lang/String; = null

.field static final LOG_TAG:Ljava/lang/String; = "MccTable"

.field private static final MCC_CODES:[S

.field static MccTableExt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MccTable$MccEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final TZ_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v12, 0x3

    const/4 v4, 0x2

    const-string v2, "Asia/Seoul"

    const-string v13, "en"

    const-string v11, ""

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, ""

    aput-object v11, v0, v1

    const/4 v1, 0x1

    const-string v3, "Africa/Johannesburg"

    aput-object v3, v0, v1

    const-string v1, "Asia/Beijing"

    aput-object v1, v0, v4

    const-string v1, "Asia/Seoul"

    aput-object v2, v0, v12

    const/4 v1, 0x4

    const-string v3, "Asia/Singapore"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "Asia/Tokyo"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "Australia/Sydney"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "Europe/Amsterdam"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "Europe/Berlin"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "Europe/Dublin"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "Europe/London"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "Europe/Madrid"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "Europe/Paris"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "Europe/Prague"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "Europe/Rome"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "Europe/Vienna"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "Europe/Warsaw"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-string v3, "Europe/Zurich"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "Pacific/Auckland"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->TZ_STRINGS:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, ""

    aput-object v11, v0, v1

    const/4 v1, 0x1

    const-string v3, "cs"

    aput-object v3, v0, v1

    const-string v1, "de"

    aput-object v1, v0, v4

    const-string v1, "en"

    aput-object v13, v0, v12

    const/4 v1, 0x4

    const-string v3, "es"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "fr"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "it"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "ja"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "ko"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "nl"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "zh"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->LANG_STRINGS:[Ljava/lang/String;

    const/16 v0, 0xea

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    const/16 v0, 0xea

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/4 v1, 0x1

    const-string v3, "Asia/Seoul"

    const-string v3, "kr"

    const-string v5, "ko"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v1, "Asia/Seoul"

    const-string v3, "kr"

    const-string v5, "ko"

    move v1, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v1, "Asia/Seoul"

    const-string v3, "kr"

    const-string v5, "ko"

    move v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xca

    const-string v5, "Europe/Athens"

    const-string v6, "gr"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0xcc

    const-string v7, "Europe/Amsterdam"

    const-string v8, "nl"

    const-string v10, "nl"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xce

    const-string v5, "Europe/Luxembourg"

    const-string v6, "be"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0xd0

    const-string v7, "Europe/Paris"

    const-string v8, "fr"

    const-string v10, "fr"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xd4

    const-string v5, "Europe/Monaco"

    const-string v6, "mc"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xd5

    const-string v5, "Europe/Andorra"

    const-string v6, "ad"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0xd6

    const-string v7, "Europe/Madrid"

    const-string v8, "es"

    const-string v10, "es"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xd8

    const-string v5, "Europe/Budapest"

    const-string v6, "hu"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xda

    const-string v5, "Europe/Sarajevo"

    const-string v6, "ba"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xdb

    const-string v5, "Europe/Zagreb"

    const-string v6, "hr"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xdc

    const-string v5, "Europe/Podgorica"

    const-string v6, "rs"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0xde

    const-string v7, "Europe/Rome"

    const-string v8, "it"

    const-string v10, "it"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0xe1

    const-string v7, "Europe/Vatican"

    const-string v8, "va"

    const-string v10, "it"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xe2

    const-string v5, "Europe/Bucharest"

    const-string v6, "ro"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0xe4

    const-string v7, "Europe/Zurich"

    const-string v8, "ch"

    const-string v10, "de"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0xe6

    const-string v7, "Europe/Prague"

    const-string v8, "cz"

    const-string v10, "cs"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xe7

    const-string v5, "Europe/Bratislava"

    const-string v6, "sk"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0xe8

    const-string v7, "Europe/Vienna"

    const-string v8, "at"

    const-string v10, "de"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0xea

    const-string v7, "Europe/London"

    const-string v8, "gb"

    const-string v1, "en"

    move v9, v4

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0xeb

    const-string v7, "Europe/London"

    const-string v8, "gb"

    const-string v1, "en"

    move v9, v4

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xee

    const-string v5, "Europe/Copenhagen"

    const-string v6, "dk"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xf0

    const-string v5, "Europe/Stockholm"

    const-string v6, "se"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xf2

    const-string v5, "Europe/Oslo"

    const-string v6, "no"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xf4

    const-string v5, "Europe/Helsinki"

    const-string v6, "fi"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xf6

    const-string v5, "Europe/Vilnius"

    const-string v6, "lt"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xf7

    const-string v5, "Europe/Riga"

    const-string v6, "lv"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xf8

    const-string v5, "Europe/Tallinn"

    const-string v6, "ee"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xfa

    const-string v5, ""

    const-string v5, "ru"

    invoke-direct {v1, v3, v11, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xff

    const-string v5, "Europe/Kiev"

    const-string v6, "ua"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x101

    const-string v5, "Europe/Minsk"

    const-string v6, "by"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x103

    const-string v5, "Europe/Chisinau"

    const-string v6, "md"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x104

    const-string v5, "Europe/Warsaw"

    const-string v6, "pl"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x106

    const-string v7, "Europe/Berlin"

    const-string v8, "de"

    const-string v10, "de"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x10a

    const-string v5, "Europe/Gibraltar"

    const-string v6, "gi"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x10c

    const-string v5, "Europe/Lisbon"

    const-string v6, "pt"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x10e

    const-string v5, "Europe/Luxembourg"

    const-string v6, "lu"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x110

    const-string v7, "Europe/Dublin"

    const-string v8, "ie"

    const-string v1, "en"

    move v9, v4

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x112

    const-string v5, "Atlantic/Reykjavik"

    const-string v6, "is"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x114

    const-string v5, "Europe/Tirane"

    const-string v6, "al"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x116

    const-string v5, "Europe/Malta"

    const-string v6, "mt"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x118

    const-string v5, "Asia/Nicosia"

    const-string v6, "cy"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x11a

    const-string v5, "Asia/Tbilisi"

    const-string v6, "ge"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x11b

    const-string v5, "Asia/Yerevan"

    const-string v6, "am"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x11c

    const-string v5, "Europe/Sofia"

    const-string v6, "bg"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x11e

    const-string v5, "Europe/Istanbul"

    const-string v6, "tr"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x120

    const-string v5, "Europe/Copenhagen"

    const-string v6, "fo"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x121

    const-string v5, ""

    const-string v5, "ge"

    invoke-direct {v1, v3, v11, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x122

    const-string v5, "America/Godthab"

    const-string v6, "gl"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x124

    const-string v5, "Europe/San_Marino"

    const-string v6, "sm"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x125

    const-string v5, "Europe/Ljubljana"

    const-string v6, "sl"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x126

    const-string v5, "Europe/Skopje"

    const-string v6, "mk"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x127

    const-string v5, "Europe/Vaduz"

    const-string v6, "li"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x129

    const-string v5, "Europe/Podgorica"

    const-string v6, "me"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x12e

    const-string v1, ""

    const-string v8, "ca"

    const-string v1, ""

    move-object v7, v11

    move v9, v12

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x134

    const-string v5, "America/Miquelon"

    const-string v6, "pm"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x136

    const-string v1, ""

    const-string v8, "us"

    const-string v1, "en"

    move-object v7, v11

    move v9, v12

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x137

    const-string v1, ""

    const-string v8, "us"

    const-string v1, "en"

    move-object v7, v11

    move v9, v12

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x138

    const-string v1, ""

    const-string v8, "us"

    const-string v1, "en"

    move-object v7, v11

    move v9, v12

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x139

    const-string v1, ""

    const-string v8, "us"

    const-string v1, "en"

    move-object v7, v11

    move v9, v12

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x13a

    const-string v1, ""

    const-string v8, "us"

    const-string v1, "en"

    move-object v7, v11

    move v9, v12

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x13b

    const-string v1, ""

    const-string v8, "us"

    const-string v1, "en"

    move-object v7, v11

    move v9, v12

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x13c

    const-string v1, ""

    const-string v8, "us"

    const-string v1, "en"

    move-object v7, v11

    move v9, v12

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x14a

    const-string v5, "America/Puerto_Rico"

    const-string v6, "pr"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x14c

    const-string v5, "America/St_Thomas"

    const-string v6, "vi"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x14e

    const-string v5, ""

    const-string v5, "mx"

    invoke-direct {v1, v3, v11, v5, v12}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x152

    const-string v5, "America/Jamaica"

    const-string v6, "jm"

    invoke-direct {v1, v3, v5, v6, v12}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x154

    const-string v5, "America/Guadeloupe"

    const-string v6, "gp"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x156

    const-string v5, "America/Barbados"

    const-string v6, "bb"

    invoke-direct {v1, v3, v5, v6, v12}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x158

    const-string v5, "America/Antigua"

    const-string v6, "ag"

    invoke-direct {v1, v3, v5, v6, v12}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x15a

    const-string v5, "America/Cayman"

    const-string v6, "ky"

    invoke-direct {v1, v3, v5, v6, v12}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x15c

    const-string v5, "America/Tortola"

    const-string v6, "vg"

    invoke-direct {v1, v3, v5, v6, v12}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x15e

    const-string v5, "Atlantic/Bermuda"

    const-string v6, "bm"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x160

    const-string v5, "America/Grenada"

    const-string v6, "gd"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x162

    const-string v5, "America/Montserrat"

    const-string v6, "ms"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x164

    const-string v5, "America/St_Kitts"

    const-string v6, "kn"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x166

    const-string v5, "America/St_Lucia"

    const-string v6, "lc"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x168

    const-string v5, "America/St_Vincent"

    const-string v6, "vc"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x16a

    const-string v5, "America/Aruba"

    const-string v6, "nl"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x16b

    const-string v5, "America/Aruba"

    const-string v6, "aw"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x16c

    const-string v5, "America/Nassau"

    const-string v6, "bs"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x16d

    const-string v5, "America/Anguilla"

    const-string v6, "ai"

    invoke-direct {v1, v3, v5, v6, v12}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x16e

    const-string v5, "America/Dominica"

    const-string v6, "dm"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x170

    const-string v5, "America/Havana"

    const-string v6, "cu"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x172

    const-string v5, "America/Santo_Domingo"

    const-string v6, "do"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x174

    const-string v5, "America/Port-au-Prince"

    const-string v6, "ht"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x176

    const-string v5, "America/Port_of_Spain"

    const-string v6, "tt"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x178

    const-string v5, "America/Grand_Turk"

    const-string v6, "tc"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x190

    const-string v5, "Asia/Baku"

    const-string v6, "az"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x191

    const-string v5, "Asia/Almaty"

    const-string v6, "kz"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x192

    const-string v5, "Asia/Thimphu"

    const-string v6, "bt"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x194

    const-string v5, "Asia/Kolkata"

    const-string v6, "in"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x195

    const-string v5, "Asia/Kolkata"

    const-string v6, "in"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x19a

    const-string v5, "Asia/Karachi"

    const-string v6, "pk"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x19c

    const-string v5, "Asia/Kabul"

    const-string v6, "af"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x19d

    const-string v5, "Asia/Colombo"

    const-string v6, "lk"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x19e

    const-string v5, "Asia/Rangoon"

    const-string v6, "mm"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x19f

    const-string v5, "Asia/Beirut"

    const-string v6, "lb"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1a0

    const-string v5, "Asia/Amman"

    const-string v6, "jo"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1a1

    const-string v5, "Asia/Damascus"

    const-string v6, "sy"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1a2

    const-string v5, "Asia/Baghdad"

    const-string v6, "iq"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1a3

    const-string v5, "Asia/Kuwait"

    const-string v6, "kw"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1a4

    const-string v5, "Asia/Riyadh"

    const-string v6, "sa"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1a5

    const-string v5, "Asia/Aden"

    const-string v6, "ye"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1a6

    const-string v5, "Asia/Muscat"

    const-string v6, "om"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1a7

    const-string v5, "Asia/Muscat"

    const-string v6, "ps"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1a8

    const-string v5, "Asia/Dubai"

    const-string v6, "ae"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1a9

    const-string v5, "Asia/Jerusalem"

    const-string v6, "il"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1aa

    const-string v5, "Asia/Bahrain"

    const-string v6, "bh"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1ab

    const-string v5, "Asia/Qatar"

    const-string v6, "qa"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1ac

    const-string v5, ""

    const-string v5, "mn"

    invoke-direct {v1, v3, v11, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1ad

    const-string v5, "Asia/Kathmandu"

    const-string v6, "np"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1ae

    const-string v5, "Asia/Dubai"

    const-string v6, "ae"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1af

    const-string v5, "Asia/Dubai"

    const-string v6, "ae"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1b0

    const-string v5, "Asia/Tehran"

    const-string v6, "ir"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1b2

    const-string v5, "Asia/Tashkent"

    const-string v6, "uz"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1b4

    const-string v5, "Asia/Dushanbe"

    const-string v6, "tj"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1b5

    const-string v5, "Asia/Bishkek"

    const-string v6, "kg"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1b6

    const-string v5, "Asia/Ashgabat"

    const-string v6, "tm"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x1b8

    const-string v7, "Asia/Tokyo"

    const-string v8, "jp"

    const-string v10, "ja"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x1b9

    const-string v7, "Asia/Tokyo"

    const-string v8, "jp"

    const-string v10, "ja"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x1c2

    const-string v3, "Asia/Seoul"

    const-string v3, "kr"

    const-string v5, "ko"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1c4

    const-string v5, "Asia/Ho_Chi_Minh"

    const-string v6, "vn"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1c6

    const-string v5, "Asia/Hong_Kong"

    const-string v6, "hk"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1c7

    const-string v5, "Asia/Macao"

    const-string v6, "mo"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1c8

    const-string v5, "Asia/Phnom_Penh"

    const-string v6, "kh"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1c9

    const-string v5, "Asia/Vientiane"

    const-string v6, "la"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x1cc

    const-string v7, "Asia/Harbin"

    const-string v8, "cn"

    const-string v10, "zh"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x1cd

    const-string v7, "Asia/Harbin"

    const-string v8, "cn"

    const-string v10, "zh"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1d2

    const-string v5, "Asia/Taipei"

    const-string v6, "tw"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1d3

    const-string v5, "Asia/Pyongyang"

    const-string v6, "kp"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1d6

    const-string v5, "Asia/Dhaka"

    const-string v6, "bd"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1d8

    const-string v5, "Indian/Maldives"

    const-string v6, "mv"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1f6

    const-string v5, "Asia/Kuala_Lumpur"

    const-string v6, "my"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x1f9

    const-string v1, ""

    const-string v8, "au"

    const-string v1, "en"

    move-object v7, v11

    move v9, v4

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x1fe

    const-string v5, ""

    const-string v5, "id"

    invoke-direct {v1, v3, v11, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x202

    const-string v5, "Asia/Dili"

    const-string v6, "tl"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x203

    const-string v5, "Asia/Manila"

    const-string v6, "ph"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x208

    const-string v5, "Asia/Bangkok"

    const-string v6, "th"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x20d

    const-string v7, "Asia/Singapore"

    const-string v8, "sg"

    const-string v1, "en"

    move v9, v4

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x210

    const-string v5, "Asia/Brunei"

    const-string v6, "bn"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x212

    const-string v7, "Pacific/Auckland"

    const-string v8, "nz"

    const-string v1, "en"

    move v9, v4

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x216

    const-string v5, "Pacific/Saipan"

    const-string v6, "mp"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x217

    const-string v5, "Pacific/Guam"

    const-string v6, "gu"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x218

    const-string v5, "Pacific/Nauru"

    const-string v6, "nr"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x219

    const-string v5, "Pacific/Port_Moresby"

    const-string v6, "pg"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x21b

    const-string v5, "Pacific/Tongatapu"

    const-string v6, "to"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x21c

    const-string v5, "Pacific/Guadalcanal"

    const-string v6, "sb"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x21d

    const-string v5, "Pacific/Efate"

    const-string v6, "vu"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x21e

    const-string v5, "Pacific/Fiji"

    const-string v6, "fj"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x21f

    const-string v5, "Pacific/Wallis"

    const-string v6, "wf"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x220

    const-string v5, "Pacific/Pago_Pago"

    const-string v6, "as"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x221

    const-string v5, ""

    const-string v5, "ki"

    invoke-direct {v1, v3, v11, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x222

    const-string v5, "Pacific/Noumea"

    const-string v6, "nc"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x223

    const-string v5, ""

    const-string v5, "pf"

    invoke-direct {v1, v3, v11, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x224

    const-string v5, "Pacific/Rarotonga"

    const-string v6, "ck"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x225

    const-string v5, "Pacific/Apia"

    const-string v6, "ws"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x226

    const-string v5, ""

    const-string v5, "fm"

    invoke-direct {v1, v3, v11, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x227

    const-string v5, "Pacific/Majuro"

    const-string v6, "mh"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x228

    const-string v5, "Pacific/Palau"

    const-string v6, "pw"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x25a

    const-string v5, "Africa/Cairo"

    const-string v6, "eg"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x25b

    const-string v5, "Africa/Algiers"

    const-string v6, "dz"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x25c

    const-string v5, "Africa/Casablanca"

    const-string v6, "ma"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x25d

    const-string v5, "Africa/Tunis"

    const-string v6, "tn"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x25e

    const-string v5, "Africa/Tripoli"

    const-string v6, "ly"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x25f

    const-string v5, "Africa/Banjul"

    const-string v6, "gm"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x260

    const-string v5, "Africa/Dakar"

    const-string v6, "sn"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x261

    const-string v5, "Africa/Nouakchott"

    const-string v6, "mr"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x262

    const-string v5, "Africa/Bamako"

    const-string v6, "ml"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x263

    const-string v5, "Africa/Conakry"

    const-string v6, "gn"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x264

    const-string v5, "Africa/Abidjan"

    const-string v6, "ci"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x265

    const-string v5, "Africa/Ouagadougou"

    const-string v6, "bf"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x266

    const-string v5, "Africa/Niamey"

    const-string v6, "ne"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x267

    const-string v5, "Africa/Lome"

    const-string v6, "tg"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x268

    const-string v5, "Africa/Porto-Novo"

    const-string v6, "bj"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x269

    const-string v5, "Indian/Mauritius"

    const-string v6, "mu"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x26a

    const-string v5, "Africa/Monrovia"

    const-string v6, "lr"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x26b

    const-string v5, "Africa/Freetown"

    const-string v6, "sl"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x26c

    const-string v5, "Africa/Accra"

    const-string v6, "gh"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x26d

    const-string v5, "Africa/Lagos"

    const-string v6, "ng"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x26e

    const-string v5, "Africa/Ndjamena"

    const-string v6, "td"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x26f

    const-string v5, "Africa/Bangui"

    const-string v6, "cf"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x270

    const-string v5, "Africa/Douala"

    const-string v6, "cm"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x271

    const-string v5, "Atlantic/Cape_Verde"

    const-string v6, "cv"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x272

    const-string v5, "Africa/Sao_Tome"

    const-string v6, "st"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x273

    const-string v5, "Africa/Malabo"

    const-string v6, "gq"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x274

    const-string v5, "Africa/Libreville"

    const-string v6, "ga"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x275

    const-string v5, "Africa/Brazzaville"

    const-string v6, "cg"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x276

    const-string v5, ""

    const-string v5, "cg"

    invoke-direct {v1, v3, v11, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x277

    const-string v5, "Africa/Luanda"

    const-string v6, "ao"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x278

    const-string v5, "Africa/Bissau"

    const-string v6, "gw"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x279

    const-string v5, "Indian/Mahe"

    const-string v6, "sc"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x27a

    const-string v5, "Africa/Khartoum"

    const-string v6, "sd"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x27b

    const-string v5, "Africa/Kigali"

    const-string v6, "rw"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x27c

    const-string v5, "Africa/Addis_Ababa"

    const-string v6, "et"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x27d

    const-string v5, "Africa/Mogadishu"

    const-string v6, "so"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x27e

    const-string v5, "Africa/Djibouti"

    const-string v6, "dj"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x27f

    const-string v5, "Africa/Nairobi"

    const-string v6, "ke"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x280

    const-string v5, "Africa/Dar_es_Salaam"

    const-string v6, "tz"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x281

    const-string v5, "Africa/Kampala"

    const-string v6, "ug"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x282

    const-string v5, "Africa/Bujumbura"

    const-string v6, "bi"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x283

    const-string v5, "Africa/Maputo"

    const-string v6, "mz"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x285

    const-string v5, "Africa/Lusaka"

    const-string v6, "zm"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x286

    const-string v5, "Indian/Antananarivo"

    const-string v6, "mg"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x287

    const-string v5, "Indian/Reunion"

    const-string v6, "re"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x288

    const-string v5, "Africa/Harare"

    const-string v6, "zw"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x289

    const-string v5, "Africa/Windhoek"

    const-string v6, "na"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x28a

    const-string v5, "Africa/Blantyre"

    const-string v6, "mw"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x28b

    const-string v5, "Africa/Maseru"

    const-string v6, "ls"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x28c

    const-string v5, "Africa/Gaborone"

    const-string v6, "bw"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x28d

    const-string v5, "Africa/Mbabane"

    const-string v6, "sz"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x28e

    const-string v5, "Indian/Comoro"

    const-string v6, "km"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v6, 0x28f

    const-string v7, "Africa/Johannesburg"

    const-string v8, "za"

    const-string v1, "en"

    move v9, v4

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x291

    const-string v5, "Africa/Asmara"

    const-string v6, "er"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2be

    const-string v5, "America/Belize"

    const-string v6, "bz"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2c0

    const-string v5, "America/Guatemala"

    const-string v6, "gt"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2c2

    const-string v5, "America/El_Salvador"

    const-string v6, "sv"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2c4

    const-string v5, "America/Tegucigalpa"

    const-string v6, "hn"

    invoke-direct {v1, v3, v5, v6, v12}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2c6

    const-string v5, "America/Managua"

    const-string v6, "ni"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2c8

    const-string v5, "America/Costa_Rica"

    const-string v6, "cr"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2ca

    const-string v5, "America/Panama"

    const-string v6, "pa"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2cc

    const-string v5, "America/Lima"

    const-string v6, "pe"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2d2

    const-string v5, "America/Argentina/Buenos_Aires"

    const-string v6, "ar"

    invoke-direct {v1, v3, v5, v6, v12}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2d4

    const-string v5, ""

    const-string v5, "br"

    invoke-direct {v1, v3, v11, v5, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2da

    const-string v5, "America/Santiago"

    const-string v6, "cl"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2dc

    const-string v5, "America/Bogota"

    const-string v6, "co"

    invoke-direct {v1, v3, v5, v6, v12}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2de

    const-string v5, "America/Caracas"

    const-string v6, "ve"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2e0

    const-string v5, "America/La_Paz"

    const-string v6, "bo"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2e2

    const-string v5, "America/Guyana"

    const-string v6, "gy"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2e4

    const-string v5, "America/Guayaquil"

    const-string v6, "ec"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2e6

    const-string v5, "America/Cayenne"

    const-string v6, "gf"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2e8

    const-string v5, "America/Asuncion"

    const-string v6, "py"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2ea

    const-string v5, "America/Paramaribo"

    const-string v6, "sr"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2ec

    const-string v5, "America/Montevideo"

    const-string v6, "uy"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0x2ee

    const-string v5, "Atlantic/Stanley"

    const-string v6, "fk"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v1, 0x3e7

    const-string v3, "Asia/Seoul"

    const-string v3, "kr"

    const-string v5, "ko"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/4 v1, 0x1

    const-string v3, "Asia/Seoul"

    const-string v3, "kr"

    const-string v5, "ko"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/4 v2, -0x1

    const-string v3, ""

    const-string v3, ""

    const/4 v3, 0x0

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 0x2
        0xcat 0x0t
        0xcct 0x0t
        0xcet 0x0t
        0xd0t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd8t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0xdet 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe4t 0x0t
        0xe6t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xeet 0x0t
        0xf0t 0x0t
        0xf2t 0x0t
        0xf4t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xfat 0x0t
        0xfft 0x0t
        0x1t 0x1t
        0x3t 0x1t
        0x4t 0x1t
        0x6t 0x1t
        0xat 0x1t
        0xct 0x1t
        0xet 0x1t
        0x10t 0x1t
        0x12t 0x1t
        0x14t 0x1t
        0x16t 0x1t
        0x18t 0x1t
        0x1at 0x1t
        0x1bt 0x1t
        0x1ct 0x1t
        0x1et 0x1t
        0x20t 0x1t
        0x21t 0x1t
        0x22t 0x1t
        0x24t 0x1t
        0x25t 0x1t
        0x26t 0x1t
        0x27t 0x1t
        0x29t 0x1t
        0x2et 0x1t
        0x34t 0x1t
        0x36t 0x1t
        0x37t 0x1t
        0x38t 0x1t
        0x39t 0x1t
        0x3at 0x1t
        0x3bt 0x1t
        0x3ct 0x1t
        0x4at 0x1t
        0x4ct 0x1t
        0x4et 0x1t
        0x52t 0x1t
        0x54t 0x1t
        0x56t 0x1t
        0x58t 0x1t
        0x5at 0x1t
        0x5ct 0x1t
        0x5et 0x1t
        0x60t 0x1t
        0x62t 0x1t
        0x64t 0x1t
        0x66t 0x1t
        0x68t 0x1t
        0x6at 0x1t
        0x6bt 0x1t
        0x6ct 0x1t
        0x6dt 0x1t
        0x6et 0x1t
        0x70t 0x1t
        0x72t 0x1t
        0x74t 0x1t
        0x76t 0x1t
        0x78t 0x1t
        0x90t 0x1t
        0x91t 0x1t
        0x92t 0x1t
        0x94t 0x1t
        0x95t 0x1t
        0x9at 0x1t
        0x9ct 0x1t
        0x9dt 0x1t
        0x9et 0x1t
        0x9ft 0x1t
        0xa0t 0x1t
        0xa1t 0x1t
        0xa2t 0x1t
        0xa3t 0x1t
        0xa4t 0x1t
        0xa5t 0x1t
        0xa6t 0x1t
        0xa7t 0x1t
        0xa8t 0x1t
        0xa9t 0x1t
        0xaat 0x1t
        0xabt 0x1t
        0xact 0x1t
        0xadt 0x1t
        0xaet 0x1t
        0xaft 0x1t
        0xb0t 0x1t
        0xb2t 0x1t
        0xb4t 0x1t
        0xb5t 0x1t
        0xb6t 0x1t
        0xb8t 0x1t
        0xb9t 0x1t
        0xc2t 0x1t
        0xc4t 0x1t
        0xc6t 0x1t
        0xc7t 0x1t
        0xc8t 0x1t
        0xc9t 0x1t
        0xcct 0x1t
        0xcdt 0x1t
        0xd2t 0x1t
        0xd3t 0x1t
        0xd6t 0x1t
        0xd8t 0x1t
        0xf6t 0x1t
        0xf9t 0x1t
        0xfet 0x1t
        0x2t 0x2t
        0x3t 0x2t
        0x8t 0x2t
        0xdt 0x2t
        0x10t 0x2t
        0x12t 0x2t
        0x16t 0x2t
        0x17t 0x2t
        0x18t 0x2t
        0x19t 0x2t
        0x1bt 0x2t
        0x1ct 0x2t
        0x1dt 0x2t
        0x1et 0x2t
        0x1ft 0x2t
        0x20t 0x2t
        0x21t 0x2t
        0x22t 0x2t
        0x23t 0x2t
        0x24t 0x2t
        0x25t 0x2t
        0x26t 0x2t
        0x27t 0x2t
        0x28t 0x2t
        0x5at 0x2t
        0x5bt 0x2t
        0x5ct 0x2t
        0x5dt 0x2t
        0x5et 0x2t
        0x5ft 0x2t
        0x60t 0x2t
        0x61t 0x2t
        0x62t 0x2t
        0x63t 0x2t
        0x64t 0x2t
        0x65t 0x2t
        0x66t 0x2t
        0x67t 0x2t
        0x68t 0x2t
        0x69t 0x2t
        0x6at 0x2t
        0x6bt 0x2t
        0x6ct 0x2t
        0x6dt 0x2t
        0x6et 0x2t
        0x6ft 0x2t
        0x70t 0x2t
        0x71t 0x2t
        0x72t 0x2t
        0x73t 0x2t
        0x74t 0x2t
        0x75t 0x2t
        0x76t 0x2t
        0x77t 0x2t
        0x78t 0x2t
        0x79t 0x2t
        0x7at 0x2t
        0x7bt 0x2t
        0x7ct 0x2t
        0x7dt 0x2t
        0x7et 0x2t
        0x7ft 0x2t
        0x80t 0x2t
        0x81t 0x2t
        0x82t 0x2t
        0x83t 0x2t
        0x85t 0x2t
        0x86t 0x2t
        0x87t 0x2t
        0x88t 0x2t
        0x89t 0x2t
        0x8at 0x2t
        0x8bt 0x2t
        0x8ct 0x2t
        0x8dt 0x2t
        0x8et 0x2t
        0x8ft 0x2t
        0x91t 0x2t
        0xbet 0x2t
        0xc0t 0x2t
        0xc2t 0x2t
        0xc4t 0x2t
        0xc6t 0x2t
        0xc8t 0x2t
        0xcat 0x2t
        0xcct 0x2t
        0xd2t 0x2t
        0xd4t 0x2t
        0xdat 0x2t
        0xdct 0x2t
        0xdet 0x2t
        0xe0t 0x2t
        0xe2t 0x2t
        0xe4t 0x2t
        0xe6t 0x2t
        0xe8t 0x2t
        0xeat 0x2t
        0xect 0x2t
        0xeet 0x2t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x4t 0x72t 0x67t
        0x79t 0x6ct 0x6ct 0x6et
        0x0t 0x4t 0x65t 0x62t
        0xc5t 0x4t 0x72t 0x66t
        0x0t 0x4t 0x63t 0x6dt
        0x0t 0x4t 0x64t 0x61t
        0xb4t 0x4t 0x73t 0x65t
        0x0t 0x4t 0x75t 0x68t
        0x0t 0x4t 0x61t 0x62t
        0x0t 0x4t 0x72t 0x68t
        0x0t 0x4t 0x73t 0x72t
        0xe6t 0x4t 0x74t 0x69t
        0xe6t 0x4t 0x61t 0x76t
        0x0t 0x4t 0x6ft 0x72t
        0x12t 0x5t 0x68t 0x63t
        0xd1t 0x6ct 0x7at 0x63t
        0x0t 0x4t 0x6bt 0x73t
        0xf2t 0x6ct 0x74t 0x61t
        0xa3t 0x6ct 0x62t 0x67t
        0xa3t 0x6ct 0x62t 0x67t
        0x0t 0x4t 0x6bt 0x64t
        0x0t 0x4t 0x65t 0x73t
        0x0t 0x4t 0x6ft 0x6et
        0x0t 0x4t 0x69t 0x66t
        0x0t 0x4t 0x74t 0x6ct
        0x0t 0x4t 0x76t 0x6ct
        0x0t 0x4t 0x65t 0x65t
        0x0t 0x4t 0x75t 0x72t
        0x0t 0x4t 0x61t 0x75t
        0x0t 0x4t 0x79t 0x62t
        0x0t 0x4t 0x64t 0x6dt
        0x0t 0x5t 0x6ct 0x70t
        0x82t 0x6ct 0x65t 0x64t
        0x0t 0x4t 0x69t 0x67t
        0x0t 0x4t 0x74t 0x70t
        0x0t 0x4t 0x75t 0x6ct
        0x93t 0x4t 0x65t 0x69t
        0x0t 0x4t 0x73t 0x69t
        0x0t 0x4t 0x6ct 0x61t
        0x0t 0x4t 0x74t 0x6dt
        0x0t 0x4t 0x79t 0x63t
        0x0t 0x4t 0x65t 0x67t
        0x0t 0x4t 0x6dt 0x61t
        0x0t 0x4t 0x67t 0x62t
        0x0t 0x4t 0x72t 0x74t
        0x0t 0x4t 0x6ft 0x66t
        0x0t 0x4t 0x65t 0x67t
        0x0t 0x4t 0x6ct 0x67t
        0x0t 0x4t 0x6dt 0x73t
        0x0t 0x4t 0x6ct 0x73t
        0x0t 0x4t 0x6bt 0x6dt
        0x0t 0x4t 0x69t 0x6ct
        0x0t 0x4t 0x65t 0x6dt
        0x0t 0x5et 0x61t 0x63t
        0x0t 0x4t 0x6dt 0x70t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x3t 0x5et 0x73t 0x75t
        0x0t 0x4t 0x72t 0x70t
        0x0t 0x4t 0x69t 0x76t
        0x0t 0x6t 0x78t 0x6dt
        0x0t 0x6t 0x6dt 0x6at
        0x0t 0x4t 0x70t 0x67t
        0x0t 0x6t 0x62t 0x62t
        0x0t 0x6t 0x67t 0x61t
        0x0t 0x6t 0x79t 0x6bt
        0x0t 0x6t 0x67t 0x76t
        0x0t 0x4t 0x6dt 0x62t
        0x0t 0x4t 0x64t 0x67t
        0x0t 0x4t 0x73t 0x6dt
        0x0t 0x4t 0x6et 0x6bt
        0x0t 0x4t 0x63t 0x6ct
        0x0t 0x4t 0x63t 0x76t
        0x0t 0x4t 0x6ct 0x6et
        0x0t 0x4t 0x77t 0x61t
        0x0t 0x4t 0x73t 0x62t
        0x0t 0x6t 0x69t 0x61t
        0x0t 0x4t 0x6dt 0x64t
        0x0t 0x4t 0x75t 0x63t
        0x0t 0x4t 0x6ft 0x64t
        0x0t 0x4t 0x74t 0x68t
        0x0t 0x4t 0x74t 0x74t
        0x0t 0x4t 0x63t 0x74t
        0x0t 0x4t 0x7at 0x61t
        0x0t 0x4t 0x7at 0x6bt
        0x0t 0x4t 0x74t 0x62t
        0x0t 0x4t 0x6et 0x69t
        0x0t 0x4t 0x6et 0x69t
        0x0t 0x4t 0x6bt 0x70t
        0x0t 0x4t 0x66t 0x61t
        0x0t 0x4t 0x6bt 0x6ct
        0x0t 0x4t 0x6dt 0x6dt
        0x0t 0x4t 0x62t 0x6ct
        0x0t 0x4t 0x6ft 0x6at
        0x0t 0x4t 0x79t 0x73t
        0x0t 0x4t 0x71t 0x69t
        0x0t 0x4t 0x77t 0x6bt
        0x0t 0x4t 0x61t 0x73t
        0x0t 0x4t 0x65t 0x79t
        0x0t 0x4t 0x6dt 0x6ft
        0x0t 0x4t 0x73t 0x70t
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x6ct 0x69t
        0x0t 0x4t 0x68t 0x62t
        0x0t 0x4t 0x61t 0x71t
        0x0t 0x4t 0x6et 0x6dt
        0x0t 0x4t 0x70t 0x6et
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x65t 0x61t
        0x0t 0x4t 0x72t 0x69t
        0x0t 0x4t 0x7at 0x75t
        0x0t 0x4t 0x6at 0x74t
        0x0t 0x4t 0x67t 0x6bt
        0x0t 0x4t 0x6dt 0x74t
        0x57t 0x74t 0x70t 0x6at
        0x57t 0x74t 0x70t 0x6at
        0x38t 0x6ct 0x72t 0x6bt
        0x0t 0x4t 0x6et 0x76t
        0x0t 0x4t 0x6bt 0x68t
        0x0t 0x4t 0x6ft 0x6dt
        0x0t 0x4t 0x68t 0x6bt
        0x0t 0x4t 0x61t 0x6ct
        0x2at 0x6ct 0x6et 0x63t
        0x2at 0x6ct 0x6et 0x63t
        0x0t 0x4t 0x77t 0x74t
        0x0t 0x4t 0x70t 0x6bt
        0x0t 0x4t 0x64t 0x62t
        0x0t 0x4t 0x76t 0x6dt
        0x0t 0x4t 0x79t 0x6dt
        0x63t 0x5ct 0x75t 0x61t
        0x0t 0x4t 0x64t 0x69t
        0x0t 0x4t 0x6ct 0x74t
        0x0t 0x4t 0x68t 0x70t
        0x0t 0x4t 0x68t 0x74t
        0x43t 0x5ct 0x67t 0x73t
        0x0t 0x4t 0x6et 0x62t
        0x23t 0x5t 0x7at 0x6et
        0x0t 0x4t 0x70t 0x6dt
        0x0t 0x4t 0x75t 0x67t
        0x0t 0x4t 0x72t 0x6et
        0x0t 0x4t 0x67t 0x70t
        0x0t 0x4t 0x6ft 0x74t
        0x0t 0x4t 0x62t 0x73t
        0x0t 0x4t 0x75t 0x76t
        0x0t 0x4t 0x6at 0x66t
        0x0t 0x4t 0x66t 0x77t
        0x0t 0x4t 0x73t 0x61t
        0x0t 0x4t 0x69t 0x6bt
        0x0t 0x4t 0x63t 0x6et
        0x0t 0x4t 0x66t 0x70t
        0x0t 0x4t 0x6bt 0x63t
        0x0t 0x4t 0x73t 0x77t
        0x0t 0x4t 0x6dt 0x66t
        0x0t 0x4t 0x68t 0x6dt
        0x0t 0x4t 0x77t 0x70t
        0x0t 0x4t 0x67t 0x65t
        0x0t 0x4t 0x7at 0x64t
        0x0t 0x4t 0x61t 0x6dt
        0x0t 0x4t 0x6et 0x74t
        0x0t 0x4t 0x79t 0x6ct
        0x0t 0x4t 0x6dt 0x67t
        0x0t 0x4t 0x6et 0x73t
        0x0t 0x4t 0x72t 0x6dt
        0x0t 0x4t 0x6ct 0x6dt
        0x0t 0x4t 0x6et 0x67t
        0x0t 0x4t 0x69t 0x63t
        0x0t 0x4t 0x66t 0x62t
        0x0t 0x4t 0x65t 0x6et
        0x0t 0x4t 0x67t 0x74t
        0x0t 0x4t 0x6at 0x62t
        0x0t 0x4t 0x75t 0x6dt
        0x0t 0x4t 0x72t 0x6ct
        0x0t 0x4t 0x6ct 0x73t
        0x0t 0x4t 0x68t 0x67t
        0x0t 0x4t 0x67t 0x6et
        0x0t 0x4t 0x64t 0x74t
        0x0t 0x4t 0x66t 0x63t
        0x0t 0x4t 0x6dt 0x63t
        0x0t 0x4t 0x76t 0x63t
        0x0t 0x4t 0x74t 0x73t
        0x0t 0x4t 0x71t 0x67t
        0x0t 0x4t 0x61t 0x67t
        0x0t 0x4t 0x67t 0x63t
        0x0t 0x4t 0x67t 0x63t
        0x0t 0x4t 0x6ft 0x61t
        0x0t 0x4t 0x77t 0x67t
        0x0t 0x4t 0x63t 0x73t
        0x0t 0x4t 0x64t 0x73t
        0x0t 0x4t 0x77t 0x72t
        0x0t 0x4t 0x74t 0x65t
        0x0t 0x4t 0x6ft 0x73t
        0x0t 0x4t 0x6at 0x64t
        0x0t 0x4t 0x65t 0x6bt
        0x0t 0x4t 0x7at 0x74t
        0x0t 0x4t 0x67t 0x75t
        0x0t 0x4t 0x69t 0x62t
        0x0t 0x4t 0x7at 0x6dt
        0x0t 0x4t 0x6dt 0x7at
        0x0t 0x4t 0x67t 0x6dt
        0x0t 0x4t 0x65t 0x72t
        0x0t 0x4t 0x77t 0x7at
        0x0t 0x4t 0x61t 0x6et
        0x0t 0x4t 0x77t 0x6dt
        0x0t 0x4t 0x73t 0x6ct
        0x0t 0x4t 0x77t 0x62t
        0x0t 0x4t 0x7at 0x73t
        0x0t 0x4t 0x6dt 0x6bt
        0x13t 0x4t 0x61t 0x7at
        0x0t 0x4t 0x72t 0x65t
        0x0t 0x4t 0x7at 0x62t
        0x0t 0x4t 0x74t 0x67t
        0x0t 0x4t 0x76t 0x73t
        0x0t 0x6t 0x6et 0x68t
        0x0t 0x4t 0x69t 0x6et
        0x0t 0x4t 0x72t 0x63t
        0x0t 0x4t 0x61t 0x70t
        0x0t 0x4t 0x65t 0x70t
        0x0t 0x6t 0x72t 0x61t
        0x0t 0x4t 0x72t 0x62t
        0x0t 0x4t 0x6ct 0x63t
        0x0t 0x6t 0x6ft 0x63t
        0x0t 0x4t 0x65t 0x76t
        0x0t 0x4t 0x6ft 0x62t
        0x0t 0x4t 0x79t 0x67t
        0x0t 0x4t 0x63t 0x65t
        0x0t 0x4t 0x66t 0x67t
        0x0t 0x4t 0x79t 0x70t
        0x0t 0x4t 0x72t 0x73t
        0x0t 0x4t 0x79t 0x75t
        0x0t 0x4t 0x6bt 0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 5
    .parameter "mcc"

    .prologue
    sget-object v3, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v4, p0

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v3, v1

    .local v0, indCode:I
    const/4 v3, 0x2

    new-array v2, v3, [B

    const/4 v3, 0x0

    ushr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    ushr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .local v2, iso:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static countryCodeForMccExt(I)Ljava/lang/String;
    .locals 8
    .parameter "mcc"

    .prologue
    const-string v7, "MccTable"

    const/4 v2, 0x0

    .local v2, iso:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    sget-object v5, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    .local v0, Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    iget v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mcc:I

    if-ne p0, v5, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->iso:Ljava/lang/String;

    const-string v5, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NAM] Find mnc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iso : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .end local v0           #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    .end local v2           #iso:Ljava/lang/String;
    .local v3, iso:Ljava/lang/String;
    :goto_1
    return-object v3

    .end local v3           #iso:Ljava/lang/String;
    .restart local v0       #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    .restart local v2       #iso:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    :cond_1
    const-string v5, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NAM] Not Found mnc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .end local v2           #iso:Ljava/lang/String;
    .restart local v3       #iso:Ljava/lang/String;
    goto :goto_1
.end method

.method public static defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 7
    .parameter "mcc"

    .prologue
    const/4 v6, 0x0

    sget-object v4, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v5, p0

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    move-object v4, v6

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v4, v1

    .local v0, indCode:I
    and-int/lit8 v3, v0, 0xf

    .local v3, langInd:I
    sget-object v4, Lcom/android/internal/telephony/MccTable;->LANG_STRINGS:[Ljava/lang/String;

    aget-object v2, v4, v3

    .local v2, lang:Ljava/lang/String;
    const-string v4, ""

    if-ne v2, v4, :cond_1

    move-object v4, v6

    goto :goto_0

    :cond_1
    move-object v4, v2

    goto :goto_0
.end method

.method public static defaultTimeZoneForMcc(I)Ljava/lang/String;
    .locals 7
    .parameter "mcc"

    .prologue
    const/4 v6, 0x0

    sget-object v4, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v5, p0

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    move-object v4, v6

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v4, v1

    .local v0, indCode:I
    ushr-int/lit8 v4, v0, 0x4

    and-int/lit8 v3, v4, 0x1f

    .local v3, tzInd:I
    sget-object v4, Lcom/android/internal/telephony/MccTable;->TZ_STRINGS:[Ljava/lang/String;

    aget-object v2, v4, v3

    .local v2, tz:Ljava/lang/String;
    const-string v4, ""

    if-ne v2, v4, :cond_1

    move-object v4, v6

    goto :goto_0

    :cond_1
    move-object v4, v2

    goto :goto_0
.end method

.method public static defaultTimeZoneForMccExt(I)Ljava/lang/String;
    .locals 8
    .parameter "mcc"

    .prologue
    const-string v7, "MccTable"

    const/4 v3, 0x0

    .local v3, zoneId:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v5, Lcom/android/internal/telephony/MccTable;->MccTableExt:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    .local v0, Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    iget v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mcc:I

    if-ne p0, v5, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->zoneId:Ljava/lang/String;

    const-string v5, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NAM] Find mnc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", zoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .end local v0           #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    .end local v3           #zoneId:Ljava/lang/String;
    .local v4, zoneId:Ljava/lang/String;
    :goto_1
    return-object v4

    .end local v4           #zoneId:Ljava/lang/String;
    .restart local v0       #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    .restart local v3       #zoneId:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #Entry:Lcom/android/internal/telephony/MccTable$MccEntry;
    :cond_1
    const-string v5, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NAM] Not Found mnc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .end local v3           #zoneId:Ljava/lang/String;
    .restart local v4       #zoneId:Ljava/lang/String;
    goto :goto_1
.end method

.method private static setLocaleFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 5
    .parameter "phone"
    .parameter "mcc"

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .local v1, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .local v0, country:Ljava/lang/String;
    const-string v2, "MccTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locale set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setTimezoneFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 7
    .parameter "phone"
    .parameter "mcc"

    .prologue
    const-string v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, timezone:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v3

    .local v3, zoneId:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, context:Landroid/content/Context;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    const-string v4, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timezone set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setWifiChannelsFromMcc(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 6
    .parameter "phone"
    .parameter "mcc"

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->wifiChannelsForMcc(I)I

    move-result v2

    .local v2, wifiChannels:I
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIFI_NUM_ALLOWED_CHANNELS set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .local v1, wM:Landroid/net/wifi/WifiManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setNumAllowedChannels(IZ)Z

    .end local v0           #context:Landroid/content/Context;
    .end local v1           #wM:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method public static smallestDigitsMccForMnc(I)I
    .locals 9
    .parameter "mcc"

    .prologue
    const/4 v7, 0x2

    const-string v8, "MccTable"

    const-string v6, "ro.csc.sales_code"

    sget-object v4, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v5, p0

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v2

    .local v2, index:I
    const-string v4, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, csc_code:Ljava/lang/String;
    const-string v4, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MccTable: smallestDigitsMccForMnc mcc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v2, :cond_0

    move v4, v7

    :goto_0
    return v4

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v1, v4, v2

    .local v1, indCode:I
    ushr-int/lit8 v4, v1, 0x9

    and-int/lit8 v3, v4, 0x3

    .local v3, smDig:I
    const-string v4, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MccTable: smallestDigitsMccForMnc indCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", smDig : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "XFA"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "XFM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "XFC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "XFE"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "XFV"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v7

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0
.end method

.method public static updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 7
    .parameter "phone"
    .parameter "mccmnc"

    .prologue
    const-string v6, "MccTable"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, mcc:I
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, mnc:I
    const-string v4, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMccMncConfiguration: mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setTimezoneFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V

    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setLocaleFromMccIfNeeded(Lcom/android/internal/telephony/PhoneBase;I)V

    invoke-static {p0, v2}, Lcom/android/internal/telephony/MccTable;->setWifiChannelsFromMcc(Lcom/android/internal/telephony/PhoneBase;I)V

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v2, :cond_1

    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    :cond_1
    if-eqz v3, :cond_2

    iput v3, v0, Landroid/content/res/Configuration;->mnc:I

    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "MccTable"

    const-string v4, "Error parsing IMSI"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MccTable"

    const-string v4, "Can\'t update configuration"

    invoke-static {v6, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wifiChannelsForMcc(I)I
    .locals 5
    .parameter "mcc"

    .prologue
    sget-object v3, Lcom/android/internal/telephony/MccTable;->MCC_CODES:[S

    int-to-short v4, p0

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/MccTable;->IND_CODES:[I

    aget v0, v3, v1

    .local v0, indCode:I
    ushr-int/lit8 v3, v0, 0xb

    and-int/lit8 v2, v3, 0xf

    .local v2, wifi:I
    move v3, v2

    goto :goto_0
.end method
