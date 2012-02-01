.class Lcom/android/phone/InVTCallScreen$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 1171
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1175
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "onReceive  - INTENT_MSG_SECURITY"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1178
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4600(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1179
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "Camera desabled due DPM  - INTENT_MSG_SECURITY"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1180
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f0d02fd

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1183
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1185
    .local v1, presetImageSrc:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v2, v5}, Lcom/android/phone/InVTCallScreen;->access$3902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1186
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v2, v5}, Lcom/android/phone/InVTCallScreen;->access$4202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1187
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2, v4}, Lcom/android/phone/InVTCallScreen;->access$3702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1188
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)V

    .line 1189
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1190
    if-eqz v1, :cond_2

    .line 1191
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 1199
    .end local v1           #presetImageSrc:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1194
    .restart local v1       #presetImageSrc:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v2

    const-string v3, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-virtual {v2, v3}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    goto :goto_0
.end method
