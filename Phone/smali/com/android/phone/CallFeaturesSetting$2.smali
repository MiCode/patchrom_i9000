.class Lcom/android/phone/CallFeaturesSetting$2;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 976
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 977
    .local v4, result:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 978
    .local v1, done:Z
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1020
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1021
    const-string v5, "All VM provider related changes done"

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$100(Ljava/lang/String;)V

    .line 1022
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$200(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1023
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v6, 0x259

    #calls: Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V
    invoke-static {v5, v6}, Lcom/android/phone/CallFeaturesSetting;->access$500(Lcom/android/phone/CallFeaturesSetting;I)V

    .line 1025
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$600(Lcom/android/phone/CallFeaturesSetting;)V

    .line 1027
    :cond_2
    return-void

    .line 980
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object v4, v5, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 981
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->access$000(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    move v6, v8

    :goto_1
    iput-boolean v6, v5, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    .line 982
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VM change complete msg, VM change done = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-boolean v6, v6, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$100(Ljava/lang/String;)V

    .line 984
    const/4 v1, 0x1

    .line 985
    goto :goto_0

    :cond_3
    move v6, v7

    .line 981
    goto :goto_1

    .line 987
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$200(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_4

    .line 989
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in setting fwd# "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$100(Ljava/lang/String;)V

    .line 994
    :goto_2
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$300(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v0

    .line 995
    .local v0, completed:Z
    if-eqz v0, :cond_0

    .line 996
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$400(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 997
    const-string v5, "Overall fwd changes completed ok, starting vm change"

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$100(Ljava/lang/String;)V

    .line 998
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v5}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    goto/16 :goto_0

    .line 992
    .end local v0           #completed:Z
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Success in setting fwd# "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$100(Ljava/lang/String;)V

    goto :goto_2

    .line 1000
    .restart local v0       #completed:Z
    :cond_5
    const-string v5, "Overall fwd changes completed, failure"

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$100(Ljava/lang/String;)V

    .line 1001
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-boolean v7, v5, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 1002
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$200(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1004
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1005
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1006
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    .line 1008
    const-string v5, "Rollback will be required"

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$100(Ljava/lang/String;)V

    .line 1009
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-boolean v8, v5, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 1013
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_7
    const/4 v1, 0x1

    .line 1014
    goto/16 :goto_0

    .line 978
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
