.class Lcom/samsung/sec/android/application/csc/CscModemSettingService$2;
.super Landroid/os/Handler;
.source "CscModemSettingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscModemSettingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscModemSettingService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/android/application/csc/CscModemSettingService;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService$2;->this$0:Lcom/samsung/sec/android/application/csc/CscModemSettingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v3, "AsyncResult Exception Occur!!!"

    const-string v2, "CscModemSettingService"

    .line 657
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 660
    :pswitch_0
    const-string v1, "CscModemSettingService"

    const-string v1, "SEND_PRECONFIG_DONE response incoming!!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 663
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 665
    const-string v1, "CscModemSettingService"

    const-string v1, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 671
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v1, "CscModemSettingService"

    const-string v1, "SEND_MODEM_DONE response incoming!!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 674
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 676
    const-string v1, "CscModemSettingService"

    const-string v1, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 657
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
