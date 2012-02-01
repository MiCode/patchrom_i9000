.class Lcom/samsung/sec/android/application/csc/CscReceiver$1;
.super Landroid/os/Handler;
.source "CscReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/sec/android/application/csc/CscReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscReceiver$1;->this$0:Lcom/samsung/sec/android/application/csc/CscReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v2, "CscReceiver"

    .line 262
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscReceiver$1;->this$0:Lcom/samsung/sec/android/application/csc/CscReceiver;

    invoke-virtual {v1}, Lcom/samsung/sec/android/application/csc/CscReceiver;->sendRILBootMsg()V

    .line 266
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscReceiver$1;->this$0:Lcom/samsung/sec/android/application/csc/CscReceiver;

    invoke-virtual {v1}, Lcom/samsung/sec/android/application/csc/CscReceiver;->powerSavingOn()V

    goto :goto_0

    .line 270
    :pswitch_1
    const-string v1, "CscReceiver"

    const-string v1, "sendRILBootMsg completed response incoming!!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 273
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscReceiver;->access$002(Z)Z

    .line 275
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 277
    const-string v1, "CscReceiver"

    const-string v1, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x7ce
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
