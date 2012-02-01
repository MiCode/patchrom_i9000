.class Lcom/samsung/sec/android/application/csc/CscVoiceMail$1;
.super Landroid/os/Handler;
.source "CscVoiceMail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscVoiceMail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscVoiceMail;


# direct methods
.method constructor <init>(Lcom/samsung/sec/android/application/csc/CscVoiceMail;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail$1;->this$0:Lcom/samsung/sec/android/application/csc/CscVoiceMail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v2, "CscVoiceMail"

    .line 449
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 451
    :pswitch_0
    const-string v1, "CscVoiceMail"

    const-string v1, "VoiceMail DONE response incoming!!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 454
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 456
    const-string v1, "CscVoiceMail"

    const-string v1, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x7cf
        :pswitch_0
    .end packed-switch
.end method
