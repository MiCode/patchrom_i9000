.class Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataStateReceiver"
.end annotation


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    .local v11, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/net/MobileDataStateTracker;->setRoamingStatus(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v15

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/net/MobileDataStateTracker;->setSubtype(ILjava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p2

    #calls: Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v9

    .local v9, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string v14, "reason"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, reason:Ljava/lang/String;
    const-string v14, "apn"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, apnName:Ljava/lang/String;
    const-string v14, "apnType"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, apnTypeList:Ljava/lang/String;
    const-string v14, "networkUnvailable"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .local v13, unavailable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    iget-object v14, v14, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v13, :cond_1

    const/4 v15, 0x1

    :goto_0
    invoke-virtual {v14, v15}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    #calls: Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z
    invoke-static {v14, v4}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    #setter for: Landroid/net/MobileDataStateTracker;->mApnName:Ljava/lang/String;
    invoke-static {v14, v3}, Landroid/net/MobileDataStateTracker;->access$302(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v14}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Z

    move-result v14

    if-nez v14, :cond_3

    sget-object v14, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v9, v14, :cond_0

    const-string v14, "MobileDataStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "replacing old mInterfaceName ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") with "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "iface"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object/from16 v16, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    const-string v15, "iface"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    :cond_0
    monitor-exit p0

    .end local v3           #apnName:Ljava/lang/String;
    .end local v4           #apnTypeList:Ljava/lang/String;
    .end local v8           #reason:Ljava/lang/String;
    .end local v9           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v13           #unavailable:Z
    .end local p1
    :goto_1
    return-void

    .restart local v3       #apnName:Ljava/lang/String;
    .restart local v4       #apnTypeList:Ljava/lang/String;
    .restart local v8       #reason:Ljava/lang/String;
    .restart local v9       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v13       #unavailable:Z
    .restart local p1
    :cond_1
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_2
    monitor-exit p0

    goto :goto_1

    .end local v3           #apnName:Ljava/lang/String;
    .end local v4           #apnTypeList:Ljava/lang/String;
    .end local v8           #reason:Ljava/lang/String;
    .end local v9           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v11           #tm:Landroid/telephony/TelephonyManager;
    .end local v13           #unavailable:Z
    .end local p1
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .restart local v3       #apnName:Ljava/lang/String;
    .restart local v4       #apnTypeList:Ljava/lang/String;
    .restart local v8       #reason:Ljava/lang/String;
    .restart local v9       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v11       #tm:Landroid/telephony/TelephonyManager;
    .restart local v13       #unavailable:Z
    .restart local p1
    :cond_3
    :try_start_1
    const-string v14, "MobileDataStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object/from16 v16, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Received state= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", old= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object/from16 v16, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static/range {v16 .. v16}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", reason= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v8, :cond_5

    const-string v16, "(unspecified)"

    :goto_2
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", apnTypeList= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v14}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v14

    if-eq v14, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    #setter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v14, v9}, Landroid/net/MobileDataStateTracker;->access$602(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/Phone$DataState;)Lcom/android/internal/telephony/Phone$DataState;

    sget-object v14, Landroid/net/MobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .end local v3           #apnName:Ljava/lang/String;
    .end local v4           #apnTypeList:Ljava/lang/String;
    .end local v8           #reason:Ljava/lang/String;
    .end local v9           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v13           #unavailable:Z
    .end local p1
    :cond_4
    :goto_3
    monitor-exit p0

    goto :goto_1

    .restart local v3       #apnName:Ljava/lang/String;
    .restart local v4       #apnTypeList:Ljava/lang/String;
    .restart local v8       #reason:Ljava/lang/String;
    .restart local v9       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v13       #unavailable:Z
    .restart local p1
    :cond_5
    move-object/from16 v16, v8

    goto :goto_2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    const/4 v15, 0x0

    #setter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v14, v15}, Landroid/net/MobileDataStateTracker;->access$402(Landroid/net/MobileDataStateTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v14, v15, v8, v3}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .local v5, doReset:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z
    invoke-static {v14}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    const-string v14, "default"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v15, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x5

    move v12, v14

    .local v12, typeToCheck:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v14, v0

    if-nez v14, :cond_7

    const-string v14, "connectivity"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v14, v0

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v14, v0

    invoke-virtual {v14, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .local v7, info:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    const/4 v5, 0x0

    .end local v7           #info:Landroid/net/NetworkInfo;
    .end local v12           #typeToCheck:I
    :cond_8
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    iget-object v14, v14, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    iget-object v14, v14, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    goto/16 :goto_3

    .restart local p1
    :cond_9
    const/4 v14, 0x0

    move v12, v14

    goto :goto_4

    .end local v5           #doReset:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v14, v15, v8, v3}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v14, v15, v8, v3}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    const-string v15, "iface"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    iget-object v14, v14, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-nez v14, :cond_a

    const-string v14, "MobileDataStateTracker"

    const-string v15, "CONNECTED event did not supply interface name."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "default"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "*"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    iget-object v14, v14, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v14, :cond_c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "net."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v15, v0

    iget-object v15, v15, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".gw"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, gw:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    invoke-static {v6}, Landroid/net/NetworkUtils;->lookupHost(Ljava/lang/String;)I

    move-result v15

    iput v15, v14, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    const-string v14, "MobileDataStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CONNECTED interface name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "MobileDataStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  -> net."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".gw: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "MobileDataStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  -> mDefaultGatewayAddr: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/NetworkStateTracker;->mDefaultGatewayAddr:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "MobileDataStateTracker"

    const-string v15, "-------------------------"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "net.pdp0.gw"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, tempGw:Ljava/lang/String;
    const-string v14, "MobileDataStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "@net.pdp0.gw: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "net.pdp1.gw"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "MobileDataStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "@net.pdp1.gw: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "net.pdp2.gw"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "MobileDataStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "@net.pdp2.gw: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "MobileDataStateTracker"

    const-string v15, "-------------------------"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6           #gw:Ljava/lang/String;
    .end local v10           #tempGw:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v14, v15, v8, v3}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v3           #apnName:Ljava/lang/String;
    .end local v4           #apnTypeList:Ljava/lang/String;
    .end local v8           #reason:Ljava/lang/String;
    .end local v9           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v13           #unavailable:Z
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    const/4 v15, 0x0

    #setter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v14, v15}, Landroid/net/MobileDataStateTracker;->access$402(Landroid/net/MobileDataStateTracker;Z)Z

    const-string v14, "reason"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #reason:Ljava/lang/String;
    const-string v14, "apn"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #apnName:Ljava/lang/String;
    const-string v14, "MobileDataStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Received "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " broadcast"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_e

    const-string v15, ""

    :goto_5
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v14, v0

    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v14, v15, v8, v3}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
