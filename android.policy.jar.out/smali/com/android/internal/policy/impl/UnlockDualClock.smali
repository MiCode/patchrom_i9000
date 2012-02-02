.class public Lcom/android/internal/policy/impl/UnlockDualClock;
.super Landroid/widget/RelativeLayout;
.source "UnlockDualClock.java"


# static fields
.field private static final AMPMDATA:I = 0x2

.field private static final CITYNAME01:I = 0x0

.field private static final CITYNAME02:I = 0x1

.field private static final DBG:Z = false

.field private static final KOREA_TIMEZONE:Ljava/lang/String; = "Asia/Seoul"

.field private static final MONTHDATA:I = 0x0

.field private static final STRING_KOREA_DAY:Ljava/lang/String; = "\ufffd\ufffd"

.field private static final TAG:Ljava/lang/String; = "UnlockDualClock"

.field private static final WEEKDATA:I = 0x1


# instance fields
.field private TimeZone_city01:Ljava/util/TimeZone;

.field private TimeZone_city02:Ljava/util/TimeZone;

.field private ampm_city1:Landroid/widget/ImageView;

.field private ampm_city2:Landroid/widget/ImageView;

.field private city01:Landroid/widget/TextView;

.field private city02:Landroid/widget/TextView;

.field private colon01_city1:Landroid/widget/ImageView;

.field private colon01_city2:Landroid/widget/ImageView;

.field private date_city01:Landroid/widget/TextView;

.field private date_city02:Landroid/widget/TextView;

.field private hour01_city1:Landroid/widget/ImageView;

.field private hour01_city2:Landroid/widget/ImageView;

.field private hour02_city1:Landroid/widget/ImageView;

.field private hour02_city2:Landroid/widget/ImageView;

.field private is24hourMode:Z

.field private locale_kr:Ljava/util/Locale;

.field private mContext:Landroid/content/Context;

.field private mHourModeChecked:Z

.field private mRightNow_city01:Ljava/util/Calendar;

.field private mRightNow_city02:Ljava/util/Calendar;

.field private min01_city1:Landroid/widget/ImageView;

.field private min01_city2:Landroid/widget/ImageView;

.field private min02_city1:Landroid/widget/ImageView;

.field private min02_city2:Landroid/widget/ImageView;

.field private strAMPM:[Ljava/lang/String;

.field private strArrMonths:[Ljava/lang/String;

.field private strArrWeeks:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "createdInPortrait"

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->mHourModeChecked:Z

    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->mContext:Landroid/content/Context;

    .line 93
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 94
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109007a

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 96
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockDualClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    const v2, 0x1020263

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->city01:Landroid/widget/TextView;

    .line 101
    const v2, 0x1020262

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->city02:Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->city01:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 104
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->city02:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 106
    const v2, 0x1020267

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->date_city01:Landroid/widget/TextView;

    .line 107
    const v2, 0x1020266

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->date_city02:Landroid/widget/TextView;

    .line 109
    const v2, 0x1020270

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->hour01_city1:Landroid/widget/ImageView;

    .line 110
    const v2, 0x1020271

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->hour02_city1:Landroid/widget/ImageView;

    .line 111
    const v2, 0x1020272

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->colon01_city1:Landroid/widget/ImageView;

    .line 112
    const v2, 0x1020273

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->min01_city1:Landroid/widget/ImageView;

    .line 113
    const v2, 0x1020274

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->min02_city1:Landroid/widget/ImageView;

    .line 114
    const v2, 0x1020275

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->ampm_city1:Landroid/widget/ImageView;

    .line 116
    const v2, 0x1020269

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->hour01_city2:Landroid/widget/ImageView;

    .line 117
    const v2, 0x102026a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->hour02_city2:Landroid/widget/ImageView;

    .line 118
    const v2, 0x102026b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->colon01_city2:Landroid/widget/ImageView;

    .line 119
    const v2, 0x102026c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->min01_city2:Landroid/widget/ImageView;

    .line 120
    const v2, 0x102026d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->min02_city2:Landroid/widget/ImageView;

    .line 121
    const v2, 0x102026e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->ampm_city2:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockDualClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->strArrWeeks:[Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockDualClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->strArrMonths:[Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockDualClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->strAMPM:[Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockDualClock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->locale_kr:Ljava/util/Locale;

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 130
    return-void
.end method

.method private changeTimeType(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "hourString"
    .parameter "minString"
    .parameter "city_selector"

    .prologue
    const v8, 0x108038e

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v5, ""

    .line 296
    new-array v0, v4, [I

    .line 297
    .local v0, choiceHourNumber:[I
    new-array v1, v4, [I

    .line 305
    .local v1, choiceMinNumber:[I
    const-string v4, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, timePattern1:[Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, timePattern2:[Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->exchangeStringToDrawable([Ljava/lang/String;)[I

    move-result-object v0

    .line 309
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UnlockDualClock;->exchangeStringToDrawable([Ljava/lang/String;)[I

    move-result-object v1

    .line 311
    if-nez p3, :cond_0

    .line 312
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->hour01_city1:Landroid/widget/ImageView;

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 313
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->hour02_city1:Landroid/widget/ImageView;

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 314
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->colon01_city1:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 315
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->min01_city1:Landroid/widget/ImageView;

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 316
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->min02_city1:Landroid/widget/ImageView;

    aget v5, v1, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 327
    :goto_0
    return-void

    .line 317
    :cond_0
    if-ne p3, v6, :cond_1

    .line 318
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->hour01_city2:Landroid/widget/ImageView;

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 319
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->hour02_city2:Landroid/widget/ImageView;

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 320
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->colon01_city2:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 321
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->min01_city2:Landroid/widget/ImageView;

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 322
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->min02_city2:Landroid/widget/ImageView;

    aget v5, v1, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 324
    :cond_1
    const-string v4, "UnlockDualClock"

    const-string v5, "Fail to select City at the clock"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkTimeValue(I)Ljava/lang/String;
    .locals 3
    .parameter "minInt"

    .prologue
    .line 255
    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, minString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 258
    .end local v0           #minString:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #minString:Ljava/lang/String;
    goto :goto_0
.end method

.method private exchangeStringToDrawable([Ljava/lang/String;)[I
    .locals 7
    .parameter "timePattern"

    .prologue
    .line 332
    const/16 v6, 0xa

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 341
    .local v5, unlock_clocks:[I
    const/4 v6, 0x4

    new-array v0, v6, [I

    .line 343
    .local v0, choiceNumber:[I
    array-length v4, p1

    .line 345
    .local v4, k:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 347
    :try_start_0
    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 351
    .local v3, j:I
    :goto_1
    aget v6, v5, v3

    aput v6, v0, v2

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v3           #j:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 349
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .restart local v3       #j:I
    goto :goto_1

    .line 354
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #j:I
    :cond_0
    return-object v0

    .line 332
    :array_0
    .array-data 0x4
        0x78t 0x3t 0x8t 0x1t
        0x7at 0x3t 0x8t 0x1t
        0x7ct 0x3t 0x8t 0x1t
        0x7et 0x3t 0x8t 0x1t
        0x80t 0x3t 0x8t 0x1t
        0x82t 0x3t 0x8t 0x1t
        0x84t 0x3t 0x8t 0x1t
        0x86t 0x3t 0x8t 0x1t
        0x88t 0x3t 0x8t 0x1t
        0x8at 0x3t 0x8t 0x1t
    .end array-data
.end method

.method private setAMPMDrawable(Ljava/lang/String;I)V
    .locals 4
    .parameter "am_pmString"
    .parameter "city"

    .prologue
    const/4 v2, 0x0

    const-string v3, "UnlockDualClock"

    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, choiceAMPM:I
    const-string v1, "AM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const v0, 0x108038c

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->ampm_city1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->ampm_city2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    if-nez p2, :cond_2

    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->ampm_city1:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    :goto_1
    return-void

    .line 231
    :cond_0
    const-string v1, "PM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    const v0, 0x1080390

    goto :goto_0

    .line 235
    :cond_1
    const-string v1, "UnlockDualClock"

    const-string v1, "Not AM_PM mode"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 243
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->ampm_city2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 245
    :cond_3
    const-string v1, "UnlockDualClock"

    const-string v1, "AMPM Drawable error"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private transformDataIntToString([Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter "dataSet"
    .parameter "datedata"
    .parameter "datatype"

    .prologue
    .line 284
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 285
    add-int/lit8 p2, p2, 0x1

    .line 288
    :cond_0
    aget-object v0, p1, p2

    return-object v0
.end method

.method private transformHourData(I)Ljava/lang/String;
    .locals 2
    .parameter "hourInt"

    .prologue
    .line 270
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockDualClock;->is24hourMode:Z

    if-nez v1, :cond_2

    .line 271
    const/16 v1, 0xc

    if-le p1, v1, :cond_1

    add-int/lit8 p1, p1, -0xc

    .line 273
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockDualClock;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, hourString:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 272
    .end local v0           #hourString:Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    .line 277
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockDualClock;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #hourString:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method protected refreshTimeAndDateDisplay()V
    .locals 31

    .prologue
    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city01:Ljava/util/Calendar;

    .line 135
    const-string v28, "Asia/Seoul"

    invoke-static/range {v28 .. v28}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockDualClock;->TimeZone_city01:Ljava/util/TimeZone;

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city02:Ljava/util/Calendar;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city02:Ljava/util/Calendar;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockDualClock;->TimeZone_city02:Ljava/util/TimeZone;

    .line 146
    const-string v6, ""

    .line 154
    .local v6, am_pmString01:Ljava/lang/String;
    const-string v7, ""

    .line 156
    .local v7, am_pmString02:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mHourModeChecked:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 157
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/UnlockDualClock;->mHourModeChecked:Z

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/UnlockDualClock;->is24hourMode:Z

    .line 161
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city01:Ljava/util/Calendar;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->TimeZone_city01:Ljava/util/TimeZone;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->TimeZone_city01:Ljava/util/TimeZone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, city01_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city01:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v24

    .line 164
    .local v24, monthInt01:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city01:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0x5

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 165
    .local v10, dayInt01:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city01:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0x7

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 166
    .local v12, dayWeekInt01:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city01:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0xb

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 167
    .local v16, hourInt01:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city01:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0xc

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 168
    .local v20, minInt01:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city01:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0x9

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 171
    .local v4, am_pmInt01:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->TimeZone_city02:Ljava/util/TimeZone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, city02_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city02:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v25

    .line 173
    .local v25, monthInt02:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city02:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0x5

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 174
    .local v11, dayInt02:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city02:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0x7

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 175
    .local v13, dayWeekInt02:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city02:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0xb

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 176
    .local v17, hourInt02:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city02:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0xc

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v21

    .line 177
    .local v21, minInt02:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->mRightNow_city02:Ljava/util/Calendar;

    move-object/from16 v28, v0

    const/16 v29, 0x9

    invoke-virtual/range {v28 .. v29}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 180
    .local v5, am_pmInt02:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->strArrMonths:[Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/UnlockDualClock;->transformDataIntToString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v26

    .line 181
    .local v26, monthString01:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->strArrWeeks:[Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v12

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/UnlockDualClock;->transformDataIntToString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    .line 182
    .local v14, dayWeekString01:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockDualClock;->transformHourData(I)Ljava/lang/String;

    move-result-object v18

    .line 183
    .local v18, hourString01:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockDualClock;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v22

    .line 185
    .local v22, minString01:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->strArrMonths:[Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v25

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/UnlockDualClock;->transformDataIntToString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v27

    .line 186
    .local v27, monthString02:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->strArrWeeks:[Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v13

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/UnlockDualClock;->transformDataIntToString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    .line 187
    .local v15, dayWeekString02:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockDualClock;->transformHourData(I)Ljava/lang/String;

    move-result-object v19

    .line 188
    .local v19, hourString02:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockDualClock;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v23

    .line 191
    .local v23, minString02:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->city01:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const v29, 0x104043f

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->city02:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const v29, 0x1040440

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->city01:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setSelected(Z)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->city02:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setSelected(Z)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->locale_kr:Ljava/util/Locale;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "ko_KR"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->date_city01:Landroid/widget/TextView;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->date_city02:Landroid/widget/TextView;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->is24hourMode:Z

    move/from16 v28, v0

    if-nez v28, :cond_2

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->strAMPM:[Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v4

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/UnlockDualClock;->transformDataIntToString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->strAMPM:[Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v5

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/UnlockDualClock;->transformDataIntToString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 214
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->setAMPMDrawable(Ljava/lang/String;I)V

    .line 215
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->setAMPMDrawable(Ljava/lang/String;I)V

    .line 221
    :goto_1
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/UnlockDualClock;->changeTimeType(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/UnlockDualClock;->changeTimeType(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    return-void

    .line 202
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->date_city01:Landroid/widget/TextView;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\ufffd\ufffd"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->date_city02:Landroid/widget/TextView;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\ufffd\ufffd"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 217
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->ampm_city1:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockDualClock;->ampm_city2:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method
