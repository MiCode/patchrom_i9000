.class public Lcom/android/systemui/statusbar/CarrierLabel;
.super Landroid/widget/TextView;
.source "CarrierLabel.java"


# instance fields
.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/CarrierLabel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/CarrierLabel$1;-><init>(Lcom/android/systemui/statusbar/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 59
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 65
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    .line 74
    :cond_0
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 96
    .local v0, something:Z
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 97
    const-string v2, "CHN-CUGSM"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    const-string v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :goto_0
    const/4 v0, 0x1

    .line 108
    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 109
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/4 v0, 0x1

    .line 112
    :cond_1
    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    return-void

    .line 100
    :cond_2
    const-string v2, "CHINA  MOBILE"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    const-string v2, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 115
    :cond_4
    const v2, 0x6090018

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    goto :goto_1
.end method
