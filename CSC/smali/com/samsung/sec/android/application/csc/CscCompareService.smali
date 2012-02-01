.class public Lcom/samsung/sec/android/application/csc/CscCompareService;
.super Landroid/app/Service;
.source "CscCompareService.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mResultData:[B

.field resultIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 37
    const/16 v0, 0x1c2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    .line 258
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscCompareService$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/android/application/csc/CscCompareService$1;-><init>(Lcom/samsung/sec/android/application/csc/CscCompareService;)V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mHandler:Landroid/os/Handler;

    .line 276
    return-void
.end method

.method private addFailedItem(I)V
    .locals 5
    .parameter "failedItemID"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    const-string v0, "CscCompareService"

    const-string v1, "addFailedItem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    aput-byte v3, v0, v3

    .line 104
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    aget-byte v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 106
    iget v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    const/16 v1, 0x1c2

    if-le v0, v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    iget v1, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 110
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    iget v1, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    aput-byte v3, v0, v1

    .line 111
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    iget v1, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    aput-byte v3, v0, v1

    .line 112
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    iget v1, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    aput-byte v3, v0, v1

    .line 114
    shr-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    iget v1, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    aput-byte v4, v0, v1

    .line 117
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    iget v1, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    iget v1, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    aput-byte v3, v0, v1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    iget v1, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    aput-byte v3, v0, v1

    goto :goto_0
.end method

.method private convertResultToItemID(Ljava/lang/String;)I
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    const-string v1, "CscCompareService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compare Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v1, "NOERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    .line 216
    :goto_0
    return v1

    .line 134
    :cond_0
    const-string v1, "SettingsData.ForceLiveWallpaper"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const/16 v1, 0xf

    goto :goto_0

    .line 136
    :cond_1
    const-string v1, "Settings.Messages.Voicemail.TelNum"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const/4 v1, 0x6

    goto :goto_0

    .line 140
    :cond_2
    const-string v1, "Settings.Main.Phone.DefLanguage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    const/4 v1, 0x3

    goto :goto_0

    .line 142
    :cond_3
    const-string v1, "Settings.Main.Phone.WorldTime.City"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    const/16 v1, 0x14

    goto :goto_0

    .line 144
    :cond_4
    const-string v1, "Settings.Main.Phone.DateTimeFormat.DateFormat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 145
    const/16 v1, 0x10

    goto :goto_0

    .line 146
    :cond_5
    const-string v1, "Settings.Main.Phone.DateTimeFormat.TimeFormat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 147
    const/16 v1, 0x11

    goto :goto_0

    .line 148
    :cond_6
    const-string v1, "Settings.Main.Sound.RingTone.src"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 149
    const/4 v1, 0x7

    goto :goto_0

    .line 150
    :cond_7
    const-string v1, "Settings.Main.Sound.MessageTone.src"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 151
    const/16 v1, 0x8

    goto :goto_0

    .line 152
    :cond_8
    const-string v1, "SettingsData.SDNotification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 153
    const/16 v1, 0xc5

    goto :goto_0

    .line 154
    :cond_9
    const-string v1, "Settings.Main.Sound.ExtraSound.CallEndTone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 155
    const/16 v1, 0xc6

    goto :goto_0

    .line 156
    :cond_a
    const-string v1, "Settings.Main.Phone.AlertOnCall"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 157
    const/16 v1, 0xc7

    goto :goto_0

    .line 161
    :cond_b
    const-string v1, "Settings.Browser."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 162
    const/16 v1, 0x12

    goto/16 :goto_0

    .line 163
    :cond_c
    const-string v1, "BrowserData.HomePage.URL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 164
    const/16 v1, 0xe31

    goto/16 :goto_0

    .line 167
    :cond_d
    const-string v1, "GeneralInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 168
    const/16 v1, 0x130

    goto/16 :goto_0

    .line 169
    :cond_e
    const-string v1, "Settings.Connections.ProfileHandle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 170
    const/16 v1, 0x230

    goto/16 :goto_0

    .line 171
    :cond_f
    const-string v1, "Settings.Connections.Profile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 172
    const/16 v1, 0x330

    goto/16 :goto_0

    .line 173
    :cond_10
    const-string v1, "Connection."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 174
    const/16 v1, 0x631

    goto/16 :goto_0

    .line 177
    :cond_11
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 178
    const/16 v1, 0xc0

    goto/16 :goto_0

    .line 179
    :cond_12
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 180
    const/16 v1, 0xc3

    goto/16 :goto_0

    .line 181
    :cond_13
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_15

    .line 183
    sget-object v1, Lcom/samsung/sec/android/application/csc/CscSmsMms;->KEY_CSC:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 184
    shl-int/lit8 v1, v0, 0x8

    or-int/lit8 v1, v1, 0x34

    goto/16 :goto_0

    .line 181
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_15
    const-string v1, "Network.gps_xtra"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 190
    const/16 v1, 0xc2

    goto/16 :goto_0

    .line 191
    :cond_16
    const-string v1, "Network.cb_enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 192
    const/16 v1, 0xc4

    goto/16 :goto_0

    .line 193
    :cond_17
    const-string v1, "Settings.Main.Network."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 194
    const/16 v1, 0x19

    goto/16 :goto_0

    .line 197
    :cond_18
    const-string v1, "OPERATOR_CONTENTS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 198
    const/16 v1, 0xc1

    goto/16 :goto_0

    .line 199
    :cond_19
    const-string v1, "SDCARD_CONTENTS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 200
    const/16 v1, 0x52

    goto/16 :goto_0

    .line 216
    :cond_1a
    const/16 v1, 0xff

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v10, ")"

    const-string v8, "CscCompareService"

    .line 50
    const-string v6, "CscCompareService"

    const-string v6, "onStart"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/16 v6, 0x1c2

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    .line 53
    const/4 v6, 0x2

    iput v6, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    .line 55
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    aput-byte v9, v6, v7

    .line 56
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    aput-byte v7, v6, v9

    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, checkResult:I
    new-instance v2, Lcom/samsung/sec/android/application/csc/CscHomescreen;

    invoke-direct {v2, p0}, Lcom/samsung/sec/android/application/csc/CscHomescreen;-><init>(Landroid/content/Context;)V

    .line 61
    .local v2, cscHomescreen:Lcom/samsung/sec/android/application/csc/CscHomescreen;
    invoke-virtual {v2}, Lcom/samsung/sec/android/application/csc/CscHomescreen;->compare()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/sec/android/application/csc/CscCompareService;->convertResultToItemID(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 62
    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscCompareService;->addFailedItem(I)V

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 66
    .local v0, arrayIndex:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v4, mComparables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/sec/android/application/csc/Comparable;>;"
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscBrowser;

    invoke-direct {v6, p0}, Lcom/samsung/sec/android/application/csc/CscBrowser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscSmsMms;

    invoke-direct {v6, p0}, Lcom/samsung/sec/android/application/csc/CscSmsMms;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection;

    invoke-direct {v6, p0}, Lcom/samsung/sec/android/application/csc/CscConnection;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscVoiceMail;

    invoke-direct {v6, p0}, Lcom/samsung/sec/android/application/csc/CscVoiceMail;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscNetwork;

    invoke-direct {v6, p0}, Lcom/samsung/sec/android/application/csc/CscNetwork;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscWidget;

    invoke-direct {v6, p0}, Lcom/samsung/sec/android/application/csc/CscWidget;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscContacts;

    invoke-direct {v6, p0}, Lcom/samsung/sec/android/application/csc/CscContacts;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscContents;

    invoke-direct {v6, p0}, Lcom/samsung/sec/android/application/csc/CscContents;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscSettings;

    invoke-direct {v6, p0}, Lcom/samsung/sec/android/application/csc/CscSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscGPS;

    invoke-direct {v6, p0}, Lcom/samsung/sec/android/application/csc/CscGPS;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/sec/android/application/csc/Comparable;

    .line 80
    .local v5, u:Lcom/samsung/sec/android/application/csc/Comparable;
    const-string v6, "CscCompareService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mComparables start. ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-interface {v5}, Lcom/samsung/sec/android/application/csc/Comparable;->compare()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/sec/android/application/csc/CscCompareService;->convertResultToItemID(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 82
    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscCompareService;->addFailedItem(I)V

    .line 83
    :cond_1
    const-string v6, "CscCompareService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mComparables done. ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v5           #u:Lcom/samsung/sec/android/application/csc/Comparable;
    :cond_2
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mResultData:[B

    iget v7, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->resultIndex:I

    invoke-virtual {p0, v6, v7}, Lcom/samsung/sec/android/application/csc/CscCompareService;->sendCompareResult([BI)V

    .line 90
    const-string v6, "CscCompareService"

    const-string v6, "End of compare"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public sendCompareResult([BI)V
    .locals 8
    .parameter "data"
    .parameter "dataLen"

    .prologue
    .line 226
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 228
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 229
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 231
    .local v1, dos:Ljava/io/DataOutputStream;
    const-string v4, "CscCompareService"

    const-string v5, "sendCompareResult"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    add-int/lit8 v3, p2, 0x4

    .line 236
    .local v3, fileSize:I
    const/4 v4, 0x6

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 237
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 238
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 239
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, p2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    :goto_0
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscCompareService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 255
    :goto_1
    return-void

    .line 249
    :catch_0
    move-exception v2

    .line 251
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 248
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 249
    :catch_2
    move-exception v2

    .line 251
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 247
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 248
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 252
    :goto_2
    throw v4

    .line 249
    :catch_3
    move-exception v2

    .line 251
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
