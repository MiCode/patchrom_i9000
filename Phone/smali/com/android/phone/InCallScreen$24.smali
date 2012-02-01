.class Lcom/android/phone/InCallScreen$24;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$bgCall:Lcom/android/internal/telephony/Call;

.field final synthetic val$fgCall:Lcom/android/internal/telephony/Call;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4494
    iput-object p1, p0, Lcom/android/phone/InCallScreen$24;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$24;->val$fgCall:Lcom/android/internal/telephony/Call;

    iput-object p3, p0, Lcom/android/phone/InCallScreen$24;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "di"
    .parameter "pos"

    .prologue
    .line 4497
    packed-switch p2, :pswitch_data_0

    .line 4537
    :cond_0
    :goto_0
    return-void

    .line 4499
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$24;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$24;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    #setter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3002(Lcom/android/phone/InCallScreen;I)I

    .line 4501
    iget-object v3, p0, Lcom/android/phone/InCallScreen$24;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4502
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4534
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 4535
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4509
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$24;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$24;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    #setter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3002(Lcom/android/phone/InCallScreen;I)I

    .line 4511
    iget-object v3, p0, Lcom/android/phone/InCallScreen$24;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4512
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_2

    .line 4519
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen$24;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$24;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen$24;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    #setter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3002(Lcom/android/phone/InCallScreen;I)I

    .line 4522
    iget-object v3, p0, Lcom/android/phone/InCallScreen$24;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4523
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_3

    .line 4525
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$24;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4526
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 4497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
