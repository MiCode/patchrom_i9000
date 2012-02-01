.class public Landroid/app/admin/DevicePolicyManager$VpnPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnPolicy"
.end annotation


# instance fields
.field private final lService:Landroid/app/enterprise/IVpnInfoPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 3
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IVpnInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vpn policy API -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$VpnPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public createProfile(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->createProfile(Ljava/lang/String;)V
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

    const-string v2, "Failed at Vpn policy API createProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getServerName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getServerName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getState()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IVpnInfoPolicy;->getType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed at Vpn policy API getType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3
    .parameter "Id"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setId(Ljava/lang/String;)V
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

    const-string v2, "Failed at Vpn policy API setId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setName(Ljava/lang/String;)V
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

    const-string v2, "Failed at Vpn policy API setName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setServerName(Ljava/lang/String;)V
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

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setState(I)V
    .locals 3
    .parameter "x"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setState(I)V
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

    const-string v2, "Failed at Vpn policy API setState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
