.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0x22

    const/4 v11, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "gsm.dun.connected"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RetryTimer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " RetryCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RetryManager;->isRetryForever()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resetRetryCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, reason:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->arg1:I

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .end local v3           #msg:Landroid/os/Message;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v7, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .end local v5           #reason:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v6, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    :cond_3
    const-string v6, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GPRS reconnect alarm. Previous state was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #reason:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .restart local v3       #msg:Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->arg1:I

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v7, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v5           #reason:Ljava/lang/String;
    :cond_5
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .local v4, networkInfo:Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    :goto_1
    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    goto/16 :goto_0

    :cond_6
    move v7, v9

    goto :goto_1

    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_7
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    move v1, v8

    .local v1, enabled:Z
    :goto_2
    if-nez v1, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v6, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    goto/16 :goto_0

    .end local v1           #enabled:Z
    :cond_8
    move v1, v9

    goto :goto_2

    :cond_9
    const-string v6, "android.net.action.DUN_ATTEMPTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[Dial Up Network] DUN Call Attempted "

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v6, v7, :cond_a

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v6, v7, :cond_a

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_b

    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Dial Up Network] Network Disconnecting  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setDataEnabled(Z)Z

    goto/16 :goto_0

    :cond_c
    const-string v6, "android.net.action.DUN_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[Dial Up Network] DUN Call Disconnected "

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setDataEnabled(Z)Z

    const-string v6, "gsm.dun.connected"

    const-string v6, "false"

    invoke-static {v10, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() gsm.dun.connected=false"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v6, "android.net.action.DUN_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[Dial Up Network] DUN Call Connected "

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v6, "gsm.dun.connected"

    const-string v6, "true"

    invoke-static {v10, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() gsm.dun.connected=true"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v6, "android.net.action.DUN_BLOCKED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[Dial Up Network] DUN Blocked "

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->showDialogOnInternetSharingBlockedByActiveSync()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    goto/16 :goto_0

    :cond_f
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isInternetSharingBlockedByActiveSync()Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v6, "gsm.dun.connected"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, isDunConnected:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ActiveSync] onReceive() gsm.dun.connected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v6, "true"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() Disconnect DUN"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->showDialogOnInternetSharingBlockedByActiveSync()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->disconnectDun()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    goto/16 :goto_0

    .end local v2           #isDunConnected:Ljava/lang/String;
    :cond_10
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v7, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
