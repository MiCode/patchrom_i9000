.class Lcom/android/server/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PackageManagerService;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;JLandroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/android/server/PackageManagerService$1;->this$0:Lcom/android/server/PackageManagerService;

    iput-wide p2, p0, Lcom/android/server/PackageManagerService$1;->val$freeStorageSize:J

    iput-object p4, p0, Lcom/android/server/PackageManagerService$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "PackageManager"

    .line 1580
    iget-object v2, p0, Lcom/android/server/PackageManagerService$1;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v2, p0}, Lcom/android/server/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1581
    const/4 v1, -0x1

    .line 1582
    .local v1, retCode:I
    iget-object v2, p0, Lcom/android/server/PackageManagerService$1;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v2, :cond_0

    .line 1583
    iget-object v2, p0, Lcom/android/server/PackageManagerService$1;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-wide v3, p0, Lcom/android/server/PackageManagerService$1;->val$freeStorageSize:J

    invoke-virtual {v2, v3, v4}, Lcom/android/server/Installer;->freeCache(J)I

    move-result v1

    .line 1584
    if-gez v1, :cond_0

    .line 1585
    const-string v2, "PackageManager"

    const-string v2, "Couldn\'t clear application caches"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v2, :cond_1

    .line 1590
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    const/4 v3, 0x0

    if-ltz v1, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    :cond_1
    :goto_1
    return-void

    .line 1590
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1591
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1592
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v2, "RemoveException when invoking call back"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
