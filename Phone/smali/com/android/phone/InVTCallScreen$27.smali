.class Lcom/android/phone/InVTCallScreen$27;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Lsiso/vt/VTManager$VTStackStateListener;


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
    .line 7981
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lsiso/vt/VTManager$VTEventForUI;)V
    .locals 11
    .parameter "state"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "\n"

    const-string v5, "InVTCallScreen"

    .line 7984
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "Inside VTStackStateListener"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 7985
    const-string v2, "InVTCallScreen:: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChanged State :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7987
    sget-object v2, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_FIRST_VIDEO_FRAME_DECODED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v2, :cond_2

    .line 7988
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    .line 7989
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v2, v9}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7991
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7992
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d02f3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 8216
    .end local p0
    :cond_1
    :goto_0
    return-void

    .line 7995
    .restart local p0
    :cond_2
    sget-object v2, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_TX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v2, :cond_8

    .line 7997
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7999
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7700(Lcom/android/phone/InVTCallScreen;)V

    .line 8001
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4600(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8002
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8003
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f0d02fd

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8008
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4600(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_7

    .line 8011
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8013
    .local v1, presetImageSrc:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v2, v8}, Lcom/android/phone/InVTCallScreen;->access$3902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8014
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v2, v8}, Lcom/android/phone/InVTCallScreen;->access$4202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8015
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2, v7}, Lcom/android/phone/InVTCallScreen;->access$3702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8016
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)V

    .line 8017
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8018
    if-eqz v1, :cond_6

    .line 8019
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8022
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    const-string v3, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8025
    .end local v1           #presetImageSrc:Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8026
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lsiso/vt/VTManager;->sendLiveVideo()V

    goto/16 :goto_0

    .line 8030
    :cond_8
    sget-object v2, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_CALL_DEINITIALIZED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v2, :cond_11

    .line 8031
    const-string v2, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_CALL_DEINITIALIZED"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8033
    invoke-static {v7}, Lcom/android/phone/InVTCallScreen;->access$2002(Z)Z

    .line 8035
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V
    invoke-static {v2, v7}, Lcom/android/phone/InVTCallScreen;->access$7800(Lcom/android/phone/InVTCallScreen;Z)V

    .line 8037
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 8038
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 8039
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 8040
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2, v9}, Lcom/android/phone/InVTCallScreen;->access$2302(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 8043
    :cond_9
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8044
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 8045
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 8046
    :cond_a
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 8047
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)V

    .line 8048
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v3

    iget-object p0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v2, p0}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 8050
    .restart local p0
    :cond_b
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6c

    const-wide/16 v4, 0xdac

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8056
    :cond_c
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 8057
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 8058
    :cond_d
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 8059
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)V

    .line 8060
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v3

    iget-object p0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v2, p0}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 8061
    .restart local p0
    :cond_e
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 8062
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 8063
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6c

    const-wide/16 v4, 0xdac

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8069
    :cond_f
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 8072
    :cond_10
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6c

    const-wide/16 v4, 0xdac

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8079
    :cond_11
    sget-object v2, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_END_CALL_REQUEST:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v2, :cond_13

    .line 8080
    const-string v2, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_END_CALL_REQUEST"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8082
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 8083
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)V

    .line 8085
    :cond_12
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->removesurfaceview()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8100(Lcom/android/phone/InVTCallScreen;)V

    .line 8086
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)V

    .line 8087
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v2, v8}, Lcom/android/phone/InVTCallScreen;->access$1802(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8088
    :cond_13
    sget-object v2, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v2, :cond_14

    .line 8089
    const-string v2, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_SESSION_STOP_SUCCESS"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8091
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v2, v8}, Lcom/android/phone/InVTCallScreen;->access$1802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8093
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8094
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lsiso/vt/VTManager;->cleanupCall()V

    goto/16 :goto_0

    .line 8098
    :cond_14
    sget-object v2, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v2, :cond_15

    .line 8099
    const-string v2, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_PROTOCOL_ERR_IND"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8101
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->removesurfaceview()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8100(Lcom/android/phone/InVTCallScreen;)V

    .line 8102
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)V

    .line 8103
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v2, v8}, Lcom/android/phone/InVTCallScreen;->access$1802(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8104
    :cond_15
    sget-object v2, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v2, :cond_16

    .line 8105
    const-string v2, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_IC_START_FAILURE"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8110
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f0d02f1

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v2, v3}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_0

    .line 8112
    :cond_16
    sget-object v2, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v2, :cond_1a

    .line 8113
    const-string v2, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_IC_START_SUCESS"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8115
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 8116
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 8118
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/phone/InVTCallScreen;->access$7302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8120
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 8123
    :cond_17
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2, v7}, Lcom/android/phone/InVTCallScreen;->access$3702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8125
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 8126
    const-string v2, "InVTCallScreen"

    const-string v2, "H324M_IC_START_SUCESS:: Preset Image Enabled"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8128
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v2, v8}, Lcom/android/phone/InVTCallScreen;->access$3902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8129
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v2, v7}, Lcom/android/phone/InVTCallScreen;->access$4202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8137
    :cond_18
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v2, v7}, Lcom/android/phone/InVTCallScreen;->access$4102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8138
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v2, v7}, Lcom/android/phone/InVTCallScreen;->access$8302(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8131
    :cond_19
    const-string v2, "InVTCallScreen"

    const-string v2, "H324M_IC_START_SUCESS:: Preset Image Desabled"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8134
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v2, v7}, Lcom/android/phone/InVTCallScreen;->access$3902(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_1

    .line 8140
    :cond_1a
    sget-object v2, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v2, :cond_1b

    .line 8141
    const-string v2, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_REC_START_FAILURE"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8142
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8143
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8144
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)V

    .line 8145
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f0d0308

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v2, v3}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_0

    .line 8164
    :cond_1b
    sget-object v2, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v2, :cond_1d

    .line 8165
    const-string v2, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_REC_STOP_SUCCESS"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8166
    invoke-static {}, Lcom/android/phone/MediaLowSpaceReceiver;->unRegisterLowMemoryListner()V

    .line 8167
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 8168
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    const v6, 0x7f0d030a

    invoke-virtual {v5, v6}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$8500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    const v6, 0x7f0d030b

    invoke-virtual {v5, v6}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/phone/InVTCallScreen;->access$7302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8179
    :goto_2
    new-array v0, v8, [Ljava/lang/String;

    .line 8180
    .local v0, path:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$8500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 8181
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Lcom/android/phone/InVTCallScreen$27$1;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$27$1;-><init>(Lcom/android/phone/InVTCallScreen$27;)V

    invoke-static {v2, v0, v9, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 8187
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v2, v7}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8188
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8189
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 8174
    .end local v0           #path:[Ljava/lang/String;
    :cond_1c
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$8500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    const v6, 0x7f0d030b

    invoke-virtual {v5, v6}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/phone/InVTCallScreen;->access$7302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_2

    .line 8193
    :cond_1d
    sget-object v2, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_MAX_TIMEOUT:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v2, :cond_1

    .line 8194
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)V

    .line 8195
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$8500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    const v6, 0x7f0d030b

    invoke-virtual {v5, v6}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/phone/InVTCallScreen;->access$7302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8199
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v2, v7}, Lcom/android/phone/InVTCallScreen;->access$8402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8200
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8201
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$27;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
