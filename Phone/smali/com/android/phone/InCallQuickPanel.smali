.class public Lcom/android/phone/InCallQuickPanel;
.super Landroid/widget/RemoteViews;
.source "InCallQuickPanel.java"


# static fields
.field private static final mQuickPanelReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mPhoneApp:Lcom/android/phone/PhoneApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/android/phone/InCallQuickPanel$1;

    invoke-direct {v0}, Lcom/android/phone/InCallQuickPanel$1;-><init>()V

    sput-object v0, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 94
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    .line 95
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallQuickPanel;->initInCallQuickPanel()V

    .line 97
    return-void
.end method

.method private getCallBaseTime()J
    .locals 6

    .prologue
    .line 184
    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 185
    .local v3, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 187
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    move-object v3, v0

    .line 191
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    :cond_1
    const-wide/16 v4, -0x1

    .line 196
    :goto_0
    return-wide v4

    .line 195
    :cond_2
    invoke-static {v3}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v1

    .line 196
    .local v1, duration:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    goto :goto_0
.end method

.method private initInCallQuickPanel()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 114
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SHOW_SCREEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 117
    .local v0, PI:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.MUTE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 120
    .local v1, PI2:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SPEAKER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 123
    .local v2, PI3:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.UNHOLD"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 126
    .local v3, PI4:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.END"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 129
    .local v4, PI5:Landroid/app/PendingIntent;
    const v5, 0x7f0800c4

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 130
    const v5, 0x7f0800c6

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 131
    const v5, 0x7f0800c7

    invoke-virtual {p0, v5, v2}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 132
    const v5, 0x7f0800c5

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 133
    const v5, 0x7f0800c8

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 134
    return-void
.end method

.method public static registerQuickPanelReceiver()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.phone.SHOW_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "com.android.phone.MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "com.android.phone.SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "com.android.phone.UNHOLD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "com.android.phone.END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method


# virtual methods
.method public updateInCallQuickPanel()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const v8, 0x7f0800c6

    const v1, 0x7f0800ca

    const/16 v7, 0x8

    const/4 v9, 0x0

    .line 139
    const-wide/high16 v2, -0x8000

    .line 141
    .local v2, callDurationBaseTime:J
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 143
    const v0, 0x7f0800c5

    invoke-virtual {p0, v0, v9}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 144
    invoke-virtual {p0, v8, v7}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 145
    const v0, 0x7f0800c7

    invoke-virtual {p0, v0, v7}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 164
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/InCallQuickPanel;->getCallBaseTime()J

    move-result-wide v2

    .line 165
    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-lez v0, :cond_3

    .line 166
    invoke-virtual {p0, v1, v9}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 167
    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    .line 176
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 179
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0, v6}, Lcom/android/phone/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 181
    :cond_0
    return-void

    .line 147
    .end local v6           #name:Ljava/lang/String;
    :cond_1
    const v0, 0x7f0800c5

    invoke-virtual {p0, v0, v7}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 150
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v4, :cond_2

    .line 152
    invoke-virtual {p0, v8, v7}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 161
    :goto_2
    const v0, 0x7f0800c7

    invoke-virtual {p0, v0, v9}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0, v8, v9}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_2

    .line 172
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 173
    const/4 v4, 0x0

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto :goto_1
.end method
