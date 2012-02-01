.class public Lcom/android/server/enterprise/DeviceInfo;
.super Landroid/app/enterprise/IDeviceInfo$Stub;
.source "DeviceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    invoke-direct {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 3
    .parameter "property"

    .prologue
    const/4 v1, -0x1

    .local v1, value:I
    const/4 v2, -0x1

    :try_start_0
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "property"
    .parameter "fromVM"

    .prologue
    const-string v2, "unknown"

    const/4 v1, 0x0

    .local v1, value:Ljava/lang/String;
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "unknown"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object v1, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAvailableCapacityExternal()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableExternalMemorySizeFormated()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAvailableCapacityInternal()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableInternalMemorySizeFormated()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.product.manufacturer"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.product.device"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "os.name"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "os.version"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "ro.build.version.release"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.product.name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.product.model"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModemFirmware()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSBuild()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.build.id"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformSDK()I
    .locals 1

    .prologue
    const-string v0, "ro.build.version.sdk"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.build.version.release"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "ro.serialno"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalCapacityExternal()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalExternalMemorySizeFormated()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTotalCapacityInternal()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalInternalMemorySizeFormated()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isDeviceCompromised()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/DeviceShell;->isSuAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, isLocked:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .local v2, km:Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2           #km:Landroid/app/KeyguardManager;
    :goto_0
    return v1

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceSecure()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, isSecure:Z
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    new-instance v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    .local v3, mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v4, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .local v2, mKeyguardViewProperties:Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2           #mKeyguardViewProperties:Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;
    .end local v3           #mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    :goto_0
    return v1

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
