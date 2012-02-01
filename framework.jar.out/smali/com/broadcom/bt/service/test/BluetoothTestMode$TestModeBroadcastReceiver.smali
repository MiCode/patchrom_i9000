.class Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/BluetoothTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;Lcom/broadcom/bt/service/test/BluetoothTestMode$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const-string v8, "STATUS"

    const-string v6, "MODE"

    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->abortBroadcast()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v4, "com.broadcom.bt.app.test.action.ON_BTLD_API_CMD_IND"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .local v1, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "CMD"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "LENGTH"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "PAYLOAD"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v1, v4, v5, v6}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onBtldApiCmdInd(II[B)V

    goto :goto_0

    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_0
    const-string v4, "com.broadcom.bt.app.test.action.ON_ENTER_DUT_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "STATUS"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnterDUTMode(I)V

    goto :goto_1

    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_1
    const-string v4, "com.broadcom.bt.app.test.action.ON_ENTER_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnterTestMode(I)V

    goto :goto_2

    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_2
    const-string v4, "com.broadcom.bt.app.test.action.ON_EXIT_DUT_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "STATUS"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onExitDUTMode(I)V

    goto :goto_3

    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_3
    const-string v4, "com.broadcom.bt.app.test.action.ON_EXIT_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onExitTestMode(I)V

    goto :goto_4

    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_4
    const-string v4, "com.broadcom.bt.app.test.action.ON_GET_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onGetTestMode(I)V

    goto :goto_5

    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_5
    const-string v4, "com.broadcom.bt.app.test.action.ON_SET_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V

    goto :goto_6

    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_6
    const-string v4, "com.broadcom.bt.app.test.action.ON_TX_RX_TEST"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "STATUS"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onTx_Rx_Test(II)V

    goto :goto_7

    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_7
    return-void
.end method
