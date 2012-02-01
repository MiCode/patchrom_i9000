.class public Lcom/android/server/enterprise/RoamingPolicy;
.super Landroid/app/enterprise/IRoamingPolicy$Stub;
.source "RoamingPolicy.java"


# static fields
.field private static final NON_ROAMING_AUTO_SYNC_SETTING:Ljava/lang/String; = "NonRoamingAutoSyncSetting"

.field private static final ROAMING_POLICY_PREF:Ljava/lang/String; = "RoamingPolicyPref"

.field private static final TAG:Ljava/lang/String; = "RoamingPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private final phoneStateListner:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    invoke-direct {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/RoamingPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/RoamingPolicy$1;-><init>(Lcom/android/server/enterprise/RoamingPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->phoneStateListner:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->registerRoamingListener()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/RoamingPolicy;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/RoamingPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->storeUserAutoSyncSetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/RoamingPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->restoreUserAutoSyncSetting()V

    return-void
.end method

.method private deregisterRoamingListener()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/RoamingPolicy;->phoneStateListner:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->restoreUserAutoSyncSetting()V

    return-void
.end method

.method private registerRoamingListener()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/RoamingPolicy;->phoneStateListner:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private restoreUserAutoSyncSetting()V
    .locals 6

    .prologue
    const-string v5, "NonRoamingAutoSyncSetting"

    iget-object v2, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string v3, "RoamingPolicyPref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RoamingPolicy"

    const-string v3, "restoreUserAutoSyncSetting"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NonRoamingAutoSyncSetting"

    const/4 v2, 0x1

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private storeUserAutoSyncSetting()V
    .locals 6

    .prologue
    const-string v5, "NonRoamingAutoSyncSetting"

    iget-object v2, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string v3, "RoamingPolicyPref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "RoamingPolicy"

    const-string v3, "storeUserAutoSyncSetting"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .local v1, ret:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_data_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    move v1, v3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataRoamingEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_1
    return v2

    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v1

    .restart local v2       #ret:I
    goto :goto_1
.end method

.method public isRoamingPushEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x1

    .local v1, ret:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_wap_push_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .local v2, value:I
    if-ne v5, v2, :cond_0

    move v1, v5

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRoamingPushEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #value:I
    :goto_1
    return v1

    .restart local v2       #value:I
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .end local v2           #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isRoamingSyncEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x1

    .local v1, ret:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_auto_sync_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .local v2, value:I
    if-ne v5, v2, :cond_0

    move v1, v5

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRoamingSyncEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #value:I
    :goto_1
    return v1

    .restart local v2       #value:I
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .end local v2           #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setRoamingData(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_ROAMING"

    const-string v6, "Roaming Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_data_enabled"

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.sec.MDM_ROAMING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, i:Landroid/content/Intent;
    const-string v4, "roamingData"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataRoaming : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #i:Landroid/content/Intent;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setRoamingPush(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_ROAMING"

    const-string v4, "Roaming Policy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, token:J
    iget-object v2, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_wap_push_enabled"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRoamingPush : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setRoamingSync(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_ROAMING"

    const-string v4, "Roaming Policy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, token:J
    iget-object v2, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_auto_sync_enabled"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRoamingSync : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->registerRoamingListener()V

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->deregisterRoamingListener()V

    goto :goto_1
.end method
