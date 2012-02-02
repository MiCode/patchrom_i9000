.class Lcom/android/server/PackageManagerService$InstallParams;
.super Lcom/android/server/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field flags:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

.field private mRet:I

.field final observer:Landroid/content/pm/IPackageInstallObserver;

.field final packageURI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    .line 4851
    iput-object p1, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/PackageManagerService;)V

    .line 4852
    iput-object p2, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    .line 4853
    iput p4, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 4854
    iput-object p3, p0, Lcom/android/server/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    .line 4855
    iput-object p5, p0, Lcom/android/server/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 4856
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I
    .locals 8
    .parameter "pkgLite"
    .parameter "flags"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4859
    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 4860
    .local v2, packageName:Ljava/lang/String;
    iget v0, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 4861
    .local v0, installLocation:I
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_0

    move v1, v6

    .line 4862
    .local v1, onSd:Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 4863
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 4864
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_5

    .line 4865
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_8

    .line 4867
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 4868
    if-eqz v1, :cond_1

    .line 4869
    const-string v5, "PackageManager"

    const-string v6, "Cannot install update to system app on sdcard"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4870
    const/4 v5, -0x3

    monitor-exit v4

    move v4, v5

    .line 4903
    :goto_1
    return v4

    .line 4861
    .end local v1           #onSd:Z
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 4872
    .restart local v1       #onSd:Z
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_1
    monitor-exit v4

    move v4, v6

    goto :goto_1

    .line 4874
    :cond_2
    if-eqz v1, :cond_3

    .line 4876
    monitor-exit v4

    move v4, v7

    goto :goto_1

    .line 4879
    :cond_3
    if-ne v0, v6, :cond_4

    .line 4881
    monitor-exit v4

    move v4, v6

    goto :goto_1

    .line 4882
    :cond_4
    if-ne v0, v7, :cond_6

    .line 4897
    :cond_5
    monitor-exit v4

    .line 4900
    if-eqz v1, :cond_9

    move v4, v7

    .line 4901
    goto :goto_1

    .line 4886
    :cond_6
    #calls: Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v3}, Lcom/android/server/PackageManagerService;->access$2300(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4887
    monitor-exit v4

    move v4, v7

    goto :goto_1

    .line 4889
    :cond_7
    monitor-exit v4

    move v4, v6

    goto :goto_1

    .line 4894
    :cond_8
    const/4 v5, -0x4

    monitor-exit v4

    move v4, v5

    goto :goto_1

    .line 4897
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4903
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_9
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_1
.end method


# virtual methods
.method handleReturnCode()V
    .locals 3

    .prologue
    .line 4990
    iget-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 4991
    iget-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    #calls: Lcom/android/server/PackageManagerService;->processPendingInstall(Lcom/android/server/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService;->access$2500(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;I)V

    .line 4993
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 4997
    iget-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    #calls: Lcom/android/server/PackageManagerService;->createInstallArgs(Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/PackageManagerService;->access$2400(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 4998
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    .line 4999
    return-void
.end method

.method public handleStartCopy()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const-string v11, "PackageManager"

    .line 4913
    const/4 v7, 0x1

    .line 4914
    .local v7, ret:I
    iget v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    move v1, v12

    .line 4915
    .local v1, fwdLocked:Z
    :goto_0
    iget v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    move v4, v12

    .line 4916
    .local v4, onSd:Z
    :goto_1
    iget v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_4

    move v3, v12

    .line 4918
    .local v3, onInt:Z
    :goto_2
    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    .line 4919
    .local v0, dmAppMgr:Lcom/android/server/enterprise/ApplicationPolicy;
    iget-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    #getter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v8}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    iget v10, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Landroid/net/Uri;I)Landroid/content/pm/PackageInfoLite;

    move-result-object v6

    .line 4920
    .local v6, pkgLiteTemp:Landroid/content/pm/PackageInfoLite;
    iget-object v8, v6, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 4921
    const-string v8, "PackageManager"

    const-string v8, "This app installation is not allowed"

    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4922
    const/16 v7, -0x6e

    .line 4976
    :cond_0
    :goto_3
    iget-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    #calls: Lcom/android/server/PackageManagerService;->createInstallArgs(Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;
    invoke-static {v8, p0}, Lcom/android/server/PackageManagerService;->access$2400(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 4977
    if-ne v7, v12, :cond_1

    .line 4980
    iget-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget-object v9, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    #getter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v9}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v9

    invoke-virtual {v8, v9, v12}, Lcom/android/server/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v7

    .line 4982
    :cond_1
    iput v7, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    .line 4983
    return-void

    .end local v0           #dmAppMgr:Lcom/android/server/enterprise/ApplicationPolicy;
    .end local v1           #fwdLocked:Z
    .end local v3           #onInt:Z
    .end local v4           #onSd:Z
    .end local v6           #pkgLiteTemp:Landroid/content/pm/PackageInfoLite;
    :cond_2
    move v1, v9

    .line 4914
    goto :goto_0

    .restart local v1       #fwdLocked:Z
    :cond_3
    move v4, v9

    .line 4915
    goto :goto_1

    .restart local v4       #onSd:Z
    :cond_4
    move v3, v9

    .line 4916
    goto :goto_2

    .line 4926
    .restart local v0       #dmAppMgr:Lcom/android/server/enterprise/ApplicationPolicy;
    .restart local v3       #onInt:Z
    .restart local v6       #pkgLiteTemp:Landroid/content/pm/PackageInfoLite;
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 4928
    const-string v8, "PackageManager"

    const-string v8, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4929
    const/16 v7, -0x13

    goto :goto_3

    .line 4930
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    .line 4932
    const-string v8, "PackageManager"

    const-string v8, "Cannot install fwd locked apps on sdcard"

    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4933
    const/16 v7, -0x13

    goto :goto_3

    .line 4938
    :cond_7
    :try_start_0
    iget-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v9, "com.android.defcontainer"

    iget-object v10, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 4940
    iget-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    #getter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v8}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    iget v10, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Landroid/net/Uri;I)Landroid/content/pm/PackageInfoLite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 4942
    .local v5, pkgLite:Landroid/content/pm/PackageInfoLite;
    iget-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v12}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 4945
    iget v2, v5, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 4946
    .local v2, loc:I
    const/4 v8, -0x3

    if-ne v2, v8, :cond_8

    .line 4947
    const/16 v7, -0x13

    goto :goto_3

    .line 4942
    .end local v2           #loc:I
    .end local v5           #pkgLite:Landroid/content/pm/PackageInfoLite;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v8

    .line 4948
    .restart local v2       #loc:I
    .restart local v5       #pkgLite:Landroid/content/pm/PackageInfoLite;
    :cond_8
    const/4 v8, -0x4

    if-ne v2, v8, :cond_9

    .line 4949
    const/4 v7, -0x1

    goto :goto_3

    .line 4950
    :cond_9
    const/4 v8, -0x1

    if-ne v2, v8, :cond_a

    .line 4951
    const/4 v7, -0x4

    goto :goto_3

    .line 4952
    :cond_a
    const/4 v8, -0x2

    if-ne v2, v8, :cond_b

    .line 4953
    const/4 v7, -0x2

    goto :goto_3

    .line 4954
    :cond_b
    const/4 v8, -0x5

    if-ne v2, v8, :cond_c

    .line 4955
    const/16 v7, -0x14

    goto/16 :goto_3

    .line 4958
    :cond_c
    iget v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-direct {p0, v5, v8}, Lcom/android/server/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I

    move-result v2

    .line 4959
    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 4961
    const/4 v8, 0x2

    if-ne v2, v8, :cond_d

    .line 4963
    iget v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 4964
    iget v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v8, v8, -0x11

    iput v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_3

    .line 4968
    :cond_d
    iget v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 4969
    iget v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v8, v8, -0x9

    iput v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_3
.end method
