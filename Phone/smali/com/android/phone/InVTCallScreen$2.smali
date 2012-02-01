.class Lcom/android/phone/InVTCallScreen$2;
.super Landroid/os/Handler;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 760
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 762
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handler: ignoring message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; we\'re destroyed!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1132
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 766
    .restart local p0
    .restart local p1
    :cond_1
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 768
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handler: handling message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " while not in foreground"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 777
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 778
    .local v1, app:Lcom/android/phone/PhoneApp;
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    .line 899
    :sswitch_1
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v10, p0}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 780
    .restart local p0
    :sswitch_2
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v10, p0}, Lcom/android/phone/InVTCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 784
    .restart local p0
    :sswitch_3
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v10, p0}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 788
    .restart local p0
    :sswitch_4
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "InVTCallScreen ::PHONE_DISCONNECT - Processing started"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 789
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 790
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 791
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)V

    .line 793
    :cond_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 794
    .local v4, disconectResult:Landroid/os/AsyncResult;
    iget-object v2, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 795
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_5

    .line 796
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 797
    .local v7, o:Ljava/lang/Object;
    instance-of v10, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v10, :cond_5

    .line 798
    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v5, v0

    .line 799
    .local v5, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v5}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 800
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 801
    const-string v10, "InVTCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCallNumber : voicemail - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_4
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v11, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$1102(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 810
    .end local v5           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v7           #o:Ljava/lang/Object;
    :cond_5
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 811
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)V

    .line 813
    :cond_6
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$1302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 814
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    #setter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$1402(Lcom/android/phone/InVTCallScreen;Landroid/os/Message;)Landroid/os/Message;

    .line 815
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v11, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 816
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$1502(Z)Z

    .line 817
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$1602(Z)Z

    .line 822
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$1700(Lcom/android/phone/InVTCallScreen;)I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_8

    .line 823
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 825
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "InVTCallScreen ::PHONE_DISCONNECT - DuringCall - Stoping VT Call"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 828
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 830
    :cond_7
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$2000()Z

    move-result v10

    if-nez v10, :cond_0

    .line 831
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "InVTCallScreen : PHONE_DISCONNECT - DuringCall - continueOnDisconnection()"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 832
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)V

    .line 833
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v10, p0}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 837
    .restart local p0
    :cond_8
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "InVTCallScreen ::PHONE_DISCONNECT - onDisconnect()"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 838
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 839
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v10

    invoke-virtual {v10}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 840
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v10

    invoke-virtual {v10}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 841
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$2302(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 845
    :cond_9
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v10

    if-nez v10, :cond_a

    .line 846
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)V

    .line 851
    :goto_1
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v10, p0}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 849
    .restart local p0
    :cond_a
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    goto :goto_1

    .line 864
    .end local v2           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #disconectResult:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v10

    if-nez v10, :cond_0

    .line 865
    iget v10, p1, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_b

    .line 873
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 874
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 875
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 882
    :cond_b
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 884
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 885
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 903
    :sswitch_6
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onMMICancel()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 914
    :sswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/MmiCode;

    .line 917
    .local v6, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 918
    .local v8, phoneType:I
    const/4 v10, 0x2

    if-ne v8, v10, :cond_c

    .line 919
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v1, v6, v11, v12}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 921
    :cond_c
    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 922
    invoke-interface {v6}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v10, v11, :cond_0

    .line 924
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v10, v11, :cond_d

    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 925
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "Got MMI_COMPLETE, but Call exist..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 928
    :cond_d
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "Got MMI_COMPLETE, but Call not exist... so end VT Call Screen"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 929
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    goto/16 :goto_0

    .line 936
    .end local v6           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v8           #phoneType:I
    .restart local p1
    :sswitch_8
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    iget v11, p1, Landroid/os/Message;->arg1:I

    int-to-char v11, v11

    #calls: Lcom/android/phone/InVTCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v10, p0, v11}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 948
    .restart local p0
    :sswitch_9
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 953
    :sswitch_a
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InVTCallScreen;->dismissMenu(Z)V

    goto/16 :goto_0

    .line 958
    :sswitch_b
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "ALLOW_SCREEN_ON message..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 963
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_0

    .line 968
    :sswitch_c
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "TOUCH_LOCK_TIMER..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 974
    :sswitch_d
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 988
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3000(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 993
    :sswitch_e
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 994
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 997
    .local v3, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_0

    .line 1000
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3000(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1007
    .end local v3           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_f
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "Received THREEWAY_CALLERINFO_DISPLAY_DONE event ..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1008
    iget-object v10, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v11, :cond_0

    .line 1010
    iget-object v10, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 1013
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3000(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1018
    :sswitch_10
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v10, v10, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v10, :cond_0

    .line 1019
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v10, v10, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v10, p0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1024
    .restart local p0
    :sswitch_11
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v10, v10, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v10, :cond_0

    .line 1025
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v10, v10, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v10}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    .line 1030
    :sswitch_12
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v10, v10, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v10, :cond_0

    .line 1031
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v10, v10, Lcom/android/phone/InVTCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v10}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    .line 1036
    :sswitch_13
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3200(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1038
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v11, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1039
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3200(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    .line 1041
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$3202(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1046
    :sswitch_14
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$3302(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 1051
    :sswitch_15
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1054
    :sswitch_16
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->bailOutAfterErrorDialog()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3500(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1058
    :sswitch_17
    const-string v10, "InVTCallScreen"

    const-string v11, "mHandler:Response Received from Gallery"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateSelectedImageFromGallery()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3600(Lcom/android/phone/InVTCallScreen;)V

    .line 1060
    invoke-static {}, Lcom/android/phone/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto/16 :goto_0

    .line 1064
    :sswitch_18
    const-string v10, "InVTCallScreen"

    const-string v11, "mHandler:Response on low memory"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1066
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1071
    :sswitch_19
    const-string v10, "InVTCallScreen"

    const-string v11, "mHandler:start recording image casting"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1073
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3800(Lcom/android/phone/InVTCallScreen;)V

    .line 1098
    :cond_e
    :goto_2
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$4302(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 1075
    :cond_f
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 1076
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 1077
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v11, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$4102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1078
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_2

    .line 1080
    :cond_10
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$3800(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_2

    .line 1083
    :cond_11
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v11, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v10, v11}, Lcom/android/phone/InVTCallScreen;->access$4202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1084
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "preset_path"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1086
    .local v9, presetImageSrc:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 1087
    if-eqz v9, :cond_12

    .line 1088
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_2

    .line 1090
    :cond_12
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v10}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v10

    const-string v11, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-virtual {v10, v11}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_2

    .line 1101
    .end local v9           #presetImageSrc:Ljava/lang/String;
    :sswitch_1a
    iget-object v10, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto/16 :goto_0

    .line 778
    nop

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_1
        0x34 -> :sswitch_7
        0x35 -> :sswitch_6
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_8
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_9
        0x6e -> :sswitch_2
        0x6f -> :sswitch_a
        0x70 -> :sswitch_b
        0x71 -> :sswitch_c
        0x72 -> :sswitch_d
        0x73 -> :sswitch_e
        0x74 -> :sswitch_f
        0x75 -> :sswitch_10
        0x76 -> :sswitch_11
        0x77 -> :sswitch_12
        0x78 -> :sswitch_13
        0x79 -> :sswitch_14
        0x7a -> :sswitch_15
        0x7b -> :sswitch_16
        0x7c -> :sswitch_17
        0x7d -> :sswitch_18
        0x7e -> :sswitch_19
        0x3088 -> :sswitch_1a
    .end sparse-switch
.end method
