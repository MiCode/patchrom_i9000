.class public Lcom/android/internal/telephony/gsm/FastDorm;
.super Ljava/lang/Object;
.source "FastDorm.java"


# static fields
.field private static final FD_PREFERENCES_NAME:Ljava/lang/String; = "fdormancy.preferences_name"

.field private static final KEY_FD_STATE:Ljava/lang/String; = "fdormancy.key.state"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private dormLCDOffPolicy:Z

.field private dormLCDOnPolicy:Z

.field private mDefaultDormTime:I

.field private mDormancyFlag:Z

.field private mFastDormancyLCDRcvr:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsScreenOn:Z

.field private mScreenOffDormTime:I

.field private mScreenOnDormTime:I

.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "FastDormancy"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->LOG_TAG:Ljava/lang/String;

    .line 57
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const-string v3, "FastDormancy"

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "FastDormancy"

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->LOG_TAG:Ljava/lang/String;

    .line 57
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 77
    const-string v0, "FastDormancy"

    const-string v0, "[FD] FastDormancy Constructor No plmn"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIntentFilter:Landroid/content/IntentFilter;

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/android/internal/telephony/gsm/FastDorm$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/FastDorm$1;-><init>(Lcom/android/internal/telephony/gsm/FastDorm;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mFastDormancyLCDRcvr:Landroid/content/BroadcastReceiver;

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mFastDormancyLCDRcvr:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 4
    .parameter "phoneB"
    .parameter "mccmnc"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const-string v3, "FastDormancy"

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "FastDormancy"

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->LOG_TAG:Ljava/lang/String;

    .line 57
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 113
    const-string v0, "FastDormancy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FD] FastDormancy Constructor plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/FastDorm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/FastDorm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/FastDorm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/FastDorm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/FastDorm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/FastDorm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/FastDorm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    return p1
.end method

.method private setDormancyTime(Ljava/lang/String;)V
    .locals 11
    .parameter "mOperatorNumeric"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v8, "FastDormancy"

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(plmn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, selection:Ljava/lang/String;
    const-string v0, "FastDormancy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FD] setDormancyTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v6, 0x0

    .line 132
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$NwkInfoCarriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    if-eqz v6, :cond_4

    .line 140
    const-string v0, "FastDormancy"

    const-string v0, "[FD] (cursor != null) "

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    const-string v0, "FastDormancy"

    const-string v0, "[FD] (cursor.moveToFirst()) "

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "dormancy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, fd_value:Ljava/lang/String;
    const-string/jumbo v0, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 152
    :cond_0
    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 170
    const-string v0, "FastDormancy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FD] mScreenOnDormTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dormLCDOnPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mScreenOffDormTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dormLCDOffPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    if-nez v0, :cond_1

    .line 180
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 181
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 182
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 183
    const-string v0, "FastDormancy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FD] By default FD, DormTime has to be changed to :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v7           #fd_value:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 209
    :goto_2
    return-void

    .line 149
    .restart local v7       #fd_value:Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "off"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iput v10, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    iput v10, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    goto/16 :goto_0

    .line 190
    .end local v7           #fd_value:Ljava/lang/String;
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 191
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 192
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 193
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 194
    const-string v0, "FastDormancy"

    const-string v0, "[FD] By default FD, !(cursor.moveToFirst()) "

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    .line 203
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    .line 204
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    .line 205
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    .line 206
    const-string v0, "FastDormancy"

    const-string v0, "[FD] By default FD, No Cursor "

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mFastDormancyLCDRcvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    const-string v0, "FastDormancy"

    const-string v1, "[FD] FastDormancy Constructor closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public getDefaultDormTime()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I

    return v0
.end method

.method public getDormancyFlag(Ljava/lang/String;)Z
    .locals 10
    .parameter "mOperatorNumeric"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "fdormancy.key.state"

    const-string v6, "FastDormancy"

    .line 212
    const-string v3, "FastDormancy"

    const-string v3, "[FD] ON default: true"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v1, 0x0

    .line 217
    .local v1, mDormFlag:Z
    const/4 v1, 0x1

    .line 223
    if-nez p1, :cond_0

    .line 224
    const-string v3, "FastDormancy"

    const-string v3, "[FD]: No op numeric"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 269
    :goto_0
    return v3

    .line 229
    :cond_0
    const-string v3, "45001"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    const-string v3, "FastDormancy"

    const-string v3, "[FD]: Now Samsung Test Bed"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 231
    goto :goto_0

    .line 238
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fdormancy.preferences_name"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 240
    .local v2, preferences:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_3

    const-string v3, "fdormancy.key.state"

    invoke-interface {v2, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 243
    const-string v3, "fdormancy.key.state"

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 247
    .local v0, fdState:Z
    if-eqz v0, :cond_2

    move v1, v8

    .line 249
    :goto_1
    const-string v3, "FastDormancy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FD] Dormant flag("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") from key string"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 250
    goto :goto_0

    :cond_2
    move v1, v7

    .line 247
    goto :goto_1

    .line 254
    .end local v0           #fdState:Z
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z

    if-eqz v3, :cond_5

    .line 255
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOnPolicy:Z

    if-eqz v3, :cond_4

    .line 256
    const/4 v1, 0x1

    :goto_2
    move v3, v1

    .line 269
    goto :goto_0

    .line 258
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 261
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/FastDorm;->dormLCDOffPolicy:Z

    if-eqz v3, :cond_6

    .line 262
    const/4 v1, 0x1

    goto :goto_2

    .line 264
    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getScreenOffDormTime()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I

    return v0
.end method

.method public getScreenOnDormTime()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I

    return v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0
    .parameter "plmn"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/FastDorm;->setDormancyTime(Ljava/lang/String;)V

    .line 123
    return-void
.end method
