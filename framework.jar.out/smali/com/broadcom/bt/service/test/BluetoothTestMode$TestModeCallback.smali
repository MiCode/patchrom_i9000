.class Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;
.super Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;
.source "BluetoothTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/BluetoothTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-direct {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onBtldApiCmdInd(II[B)V
    .locals 6
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBtldApiCmdInd( cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onBtldApiCmdInd(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onEnterDUTMode(I)V
    .locals 6
    .parameter "status"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEnterDUTMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnterDUTMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onEnterTestMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEnterTestMode( mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onExitDUTMode(I)V
    .locals 6
    .parameter "status"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onExitDUTMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onExitDUTMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onExitTestMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onExitTestMode(mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onGetTestMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetTestMode( mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onSetTestMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetTestMode( mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onTx_Rx_Test(II)V
    .locals 6
    .parameter "mode"
    .parameter "status"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTx_Rx_Test( mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onTx_Rx_Test(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method
