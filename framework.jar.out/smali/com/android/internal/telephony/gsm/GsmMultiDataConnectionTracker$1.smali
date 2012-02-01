.class Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmMultiDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, "true"

    const-string v8, "gsm.dun.connected"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v4, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RetryTimer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RetryCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->isRetryForever()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetRetryCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    :cond_2
    const-string v4, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GPRS reconnect alarm. Previous state was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .local v3, networkInfo:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    :goto_1
    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$802(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    :cond_5
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    move v1, v7

    .local v1, enabled:Z
    :goto_2
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$902(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    goto/16 :goto_0

    .end local v1           #enabled:Z
    :cond_6
    move v1, v6

    goto :goto_2

    :cond_7
    const-string v4, "android.net.action.DUN_ATTEMPTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v5, "[Dial Up Network] DUN Call Attempted "

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setDataEnabled(Z)Z

    goto/16 :goto_0

    :cond_8
    const-string v4, "android.net.action.DUN_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v5, "[Dial Up Network] DUN Call Disconnected "

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setDataEnabled(Z)Z

    const-string v4, "gsm.dun.connected"

    const-string v4, "false"

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v5, "[ActiveSync] onReceive() gsm.dun.connected=false"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v4, "android.net.action.DUN_CONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v5, "[Dial Up Network] DUN Call Connected "

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v4, "gsm.dun.connected"

    const-string v4, "true"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v5, "[ActiveSync] onReceive() gsm.dun.connected=true"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v4, "android.net.action.DUN_BLOCKED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v5, "[Dial Up Network] DUN Blocked "

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->showDialogOnInternetSharingBlockedByActiveSync()V
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v5, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isInternetSharingBlockedByActiveSync()Z
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v5, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v4, "gsm.dun.connected"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, isDunConnected:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ActiveSync] onReceive() gsm.dun.connected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v4, "true"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v5, "[ActiveSync] onReceive() Disconnect DUN"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->showDialogOnInternetSharingBlockedByActiveSync()V
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->disconnectDun()V
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    goto/16 :goto_0

    .end local v2           #isDunConnected:Ljava/lang/String;
    :cond_c
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v5, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
