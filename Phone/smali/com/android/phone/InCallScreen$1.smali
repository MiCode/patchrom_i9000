.class Lcom/android/phone/InCallScreen$1;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 371
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handler : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsDestroyed:Z
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handler: ignoring message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; we\'re destroyed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 572
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 377
    .restart local p0
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 378
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handler: handling message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while not in foreground"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 386
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 387
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 425
    :sswitch_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v4, p0}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 391
    .restart local p0
    :sswitch_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 392
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v4, p0}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 396
    .restart local p0
    :sswitch_2
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v4, p0}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 400
    .restart local p0
    :sswitch_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v4, p0}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 412
    .restart local p0
    :sswitch_4
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 413
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v7, :cond_3

    .line 416
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->isTouchLocked()Z
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 417
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    .line 421
    :cond_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 429
    :sswitch_5
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 438
    :sswitch_6
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dismissMmiStartedDialog()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)V

    .line 442
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v2, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    .line 444
    .local v2, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 445
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 446
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4, v0, v2, v9, v9}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 447
    :cond_4
    if-ne v3, v7, :cond_0

    .line 448
    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v4, v5, :cond_0

    .line 449
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "Got MMI_COMPLETE, finishing InCallScreen..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 451
    :cond_5
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 452
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "Got MMI_COMPLETE, but Call exist..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 455
    :cond_6
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto/16 :goto_0

    .line 461
    .end local v2           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v3           #phoneType:I
    :sswitch_7
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    iget v5, p1, Landroid/os/Message;->arg1:I

    int-to-char v5, v5

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v4, p0, v5}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 465
    .restart local p0
    :sswitch_8
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 469
    :sswitch_9
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 473
    :sswitch_a
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 478
    :sswitch_b
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v7}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    goto/16 :goto_0

    .line 482
    :sswitch_c
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "ALLOW_SCREEN_ON message..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_0

    .line 491
    :sswitch_d
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "TOUCH_LOCK_TIMER..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 492
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->touchLockTimerExpired()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 496
    :sswitch_e
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 502
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 506
    :sswitch_f
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 507
    :cond_7
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 510
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 513
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 514
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_0

    .line 519
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_10
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "Received THREEWAY_CALLERINFO_DISPLAY_DONE event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 520
    :cond_8
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_0

    .line 523
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4, v8}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 526
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 531
    :sswitch_11
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_0

    .line 532
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v4, p0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 537
    .restart local p0
    :sswitch_12
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_0

    .line 538
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v4}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    .line 543
    :sswitch_13
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_0

    .line 544
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v4}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    .line 549
    :sswitch_14
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 550
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 551
    :cond_9
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 552
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v4, v9}, Lcom/android/phone/InCallScreen;->access$1902(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 557
    :sswitch_15
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z
    invoke-static {v4, v8}, Lcom/android/phone/InCallScreen;->access$2002(Lcom/android/phone/InCallScreen;Z)Z

    .line 558
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateProviderOverlay()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 562
    :sswitch_16
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V
    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 566
    :sswitch_17
    sget-boolean v4, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v4, :cond_a

    .line 567
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 569
    :cond_a
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v7}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 387
    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_0
        0x34 -> :sswitch_6
        0x35 -> :sswitch_5
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6e -> :sswitch_1
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
        0x76 -> :sswitch_12
        0x77 -> :sswitch_13
        0x78 -> :sswitch_14
        0x79 -> :sswitch_15
        0x7a -> :sswitch_16
        0x7b -> :sswitch_17
    .end sparse-switch
.end method
