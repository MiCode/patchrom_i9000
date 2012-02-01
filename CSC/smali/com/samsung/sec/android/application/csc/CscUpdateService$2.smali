.class Lcom/samsung/sec/android/application/csc/CscUpdateService$2;
.super Landroid/os/Handler;
.source "CscUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/android/application/csc/CscUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$2;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x7c6

    const-string v3, "CscUpdateService"

    .line 391
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 393
    :sswitch_0
    const-string v1, "CscUpdateService"

    const-string v1, "CscUpdate response incoming!!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 396
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "CscUpdateService"

    const-string v1, "AsyncResult Exception Occur!!!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    const-string v1, "CscUpdateService"

    const-string v1, "START_UPDATE_MSG!!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$2;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    iget-object v1, v1, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7cf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$2;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    #calls: Lcom/samsung/sec/android/application/csc/CscUpdateService;->doUpdate()V
    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->access$200(Lcom/samsung/sec/android/application/csc/CscUpdateService;)V

    goto :goto_0

    .line 410
    :sswitch_2
    const-string v1, "CscUpdateService"

    const-string v1, "SEND_MODEM_DELAYED!!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$2;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    invoke-virtual {v1}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->chekUpdateDoneCondition()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->access$300()I

    move-result v1

    if-gez v1, :cond_2

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$2;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    #getter for: Lcom/samsung/sec/android/application/csc/CscUpdateService;->mHandlerPhone:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->access$400(Lcom/samsung/sec/android/application/csc/CscUpdateService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$2;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    invoke-virtual {v1}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->SendModemSettingIntent()V

    goto :goto_0

    .line 417
    :cond_2
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->access$310()I

    .line 418
    const-string v1, "CscUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEND_MODEM_DELAYED!! (checkRetry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->access$300()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$2;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    #getter for: Lcom/samsung/sec/android/application/csc/CscUpdateService;->mHandlerPhone:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->access$400(Lcom/samsung/sec/android/application/csc/CscUpdateService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->access$500()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 391
    :sswitch_data_0
    .sparse-switch
        0x7c6 -> :sswitch_2
        0x7ce -> :sswitch_0
        0x7cf -> :sswitch_1
    .end sparse-switch
.end method
