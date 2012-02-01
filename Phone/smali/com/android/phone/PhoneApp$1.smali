.class Lcom/android/phone/PhoneApp$1;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v5, "PhoneApp"

    .line 269
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 424
    .end local p0
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 276
    .restart local p0
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 282
    :sswitch_2
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    const-string v3, "PhoneApp"

    const-string v3, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_1
    const-string v3, "PhoneApp"

    const-string v3, "show sim depersonal panel"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto :goto_0

    .line 303
    .end local v0           #ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "PhoneApp"

    const-string v3, "- updating in-call notification from handler..."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 308
    :sswitch_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    .line 312
    :sswitch_5
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    .line 316
    :sswitch_6
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v3, p0}, Lcom/android/phone/PhoneApp;->access$300(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 320
    .restart local p0
    :sswitch_7
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 324
    :sswitch_8
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onSSInfo(Landroid/os/AsyncResult;)V
    invoke-static {v3, p0}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 333
    .restart local p0
    :sswitch_9
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 335
    .local v1, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v3, :cond_4

    .line 336
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 337
    :cond_3
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_5

    .line 339
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 348
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->updateHeadsetRingtoneState()V

    .line 351
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 354
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mTtyEnabled:Z
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    const/16 v3, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/PhoneApp$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 343
    :cond_5
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 363
    .end local v1           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "READY"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 368
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 369
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v3, v6}, Lcom/android/phone/PhoneApp;->access$602(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;

    .line 371
    :cond_6
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 372
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 373
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v6}, Lcom/android/phone/PhoneApp;->access$702(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 386
    :sswitch_b
    const-string v3, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received EVENT_DOCK_STATE_CHANGED. Phone mIsDockConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 390
    .restart local v1       #phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    :cond_7
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 395
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 396
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->requestUpdateDockUi()V

    .line 399
    :cond_8
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v3, :cond_0

    .line 400
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->requestUpdateDockUi()V

    goto/16 :goto_0

    .line 408
    .end local v1           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_c
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 409
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)I

    move-result v2

    .line 413
    .local v2, ttyMode:I
    :goto_2
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 411
    .end local v2           #ttyMode:I
    :cond_9
    const/4 v2, 0x0

    .restart local v2       #ttyMode:I
    goto :goto_2

    .line 417
    .end local v2           #ttyMode:I
    :sswitch_d
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/phone/PhoneApp;->access$1000(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 421
    :sswitch_e
    iget-object v3, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_0
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_8
        0x12 -> :sswitch_1
        0x34 -> :sswitch_6
        0x35 -> :sswitch_7
    .end sparse-switch
.end method
