.class public Landroid/app/admin/DevicePolicyManager$DeviceInventory;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceInventory"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IDeviceInfo;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "device_info"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$DeviceInventory;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public getAvailableCapacityExternal()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityExternal()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvailableCapacityInternal()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityInternal()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceMaker()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOS()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOSVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDevicePlatform()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModemFirmware()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModemFirmware()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOSBuild()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getOSBuild()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlatformSDK()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformSDK()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTotalCapacityExternal()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityExternal()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTotalCapacityInternal()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityInternal()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceCompromised()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceCompromised()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceSecure()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
