.class Lcom/android/phone/BluetoothHandsfree$1;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x4

    const-string v1, "BT HS/HF"

    .line 1006
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 1007
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1089
    :cond_0
    :goto_0
    monitor-exit v2

    .line 1090
    return-void

    .line 1009
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_2

    .line 1010
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1012
    const-string v1, "BT HS/HF"

    const-string v3, "Routing audio for incoming SCO connection"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/ScoSocket;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v3, v1}, Lcom/android/phone/BluetoothHandsfree;->access$3202(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1014
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1015
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 1022
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v3

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3402(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1023
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->accept()Z

    goto :goto_0

    .line 1089
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1018
    :cond_3
    :try_start_1
    const-string v1, "BT HS/HF"

    const-string v3, "Rejecting incoming SCO connection"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    goto :goto_1

    .line 1026
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1028
    const-string v1, "Routing audio for outgoing SCO conection"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Ljava/lang/String;)V

    .line 1029
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/ScoSocket;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v3, v1}, Lcom/android/phone/BluetoothHandsfree;->access$3202(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1030
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1031
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 1038
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2002(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    goto/16 :goto_0

    .line 1033
    :cond_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_4

    .line 1034
    const-string v1, "Rejecting new connected outgoing SCO socket"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Ljava/lang/String;)V

    .line 1035
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    .line 1036
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    goto :goto_2

    .line 1041
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/ScoSocket;

    if-ne v3, v1, :cond_6

    .line 1042
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    .line 1043
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3202(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1044
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1045
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v1, v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1047
    :cond_6
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/ScoSocket;

    if-ne v3, v1, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    .line 1049
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2002(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    goto/16 :goto_0

    .line 1053
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1055
    const-string v1, "BT HS/HF"

    const-string v3, "Timeout waiting for call to start"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1057
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1063
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1065
    const-string v1, "BT HS/HF"

    const-string v3, "Timeout waiting for voice recognition to start"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1070
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    const-string v1, "BT HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout suspending A2DP for SCO (mA2dpState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Starting SCO anyway"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v3

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2002(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1074
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/bluetooth/ScoSocket;->connect(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1077
    :cond_7
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2002(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1079
    :cond_8
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_0

    .line 1084
    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0d030f

    const/16 v4, 0x7d0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1085
    .local v0, t:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1007
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
