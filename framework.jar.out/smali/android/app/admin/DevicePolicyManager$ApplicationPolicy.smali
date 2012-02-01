.class public Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IApplicationPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->deleteManagedAppInfo(Ljava/lang/String;)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableAndroidMarket()V
    .locals 2

    .prologue
    const-string v0, "com.android.vending"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public enableAndroidMarket()V
    .locals 2

    .prologue
    const-string v0, "com.android.vending"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCacheSize(Ljava/lang/String;)Ljava/lang/String;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCodeSize(Ljava/lang/String;)Ljava/lang/String;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationDataSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationDataSize(Ljava/lang/String;)Ljava/lang/String;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationTotalSize(Ljava/lang/String;)Ljava/lang/String;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledManagedApplicationsList()[Ljava/lang/String;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManagedApplicationStatus(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 3
    .parameter "pkg"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopNCPUUsageApp(I)Ljava/util/List;
    .locals 3
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNCPUUsageApp(I)Ljava/util/List;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopNDataUsageApp(I)Ljava/util/List;
    .locals 3
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNDataUsageApp(I)Ljava/util/List;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopNMemoryUsageApp(I)Ljava/util/List;
    .locals 3
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNMemoryUsageApp(I)Ljava/util/List;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationRunning(Ljava/lang/String;)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public uninstallApplications(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateApplication(Ljava/lang/String;)Z
    .locals 4
    .parameter "apkFilePath"

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->wipeApplicationData(Ljava/lang/String;)Z
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

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
