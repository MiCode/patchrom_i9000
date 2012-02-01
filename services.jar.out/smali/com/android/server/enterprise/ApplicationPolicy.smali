.class public Lcom/android/server/enterprise/ApplicationPolicy;
.super Landroid/app/enterprise/IApplicationPolicy$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;,
        Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final CPU_ELAPSED_TIME:I = 0x3e8

.field private static final CPU_IDLE_TIME:I = 0x4

.field private static final CPU_IO_WAIT_TIME:I = 0x5

.field private static final CPU_IRQ_TIME:I = 0x6

.field private static final CPU_NICE_TIME:I = 0x2

.field private static final CPU_SOFT_IRQ_TIME:I = 0x7

.field private static final CPU_SYSTEM_TIME:I = 0x3

.field private static final CPU_USER_TIME:I = 0x1

.field private static final PROCESS_SYSTEM_TIME:I = 0xe

.field private static final PROCESS_USER_TIME:I = 0xd

.field private static final SIZE_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ApplicationPolicy"

.field private static volatile packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->registerPackageChangeReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private canRead(Ljava/lang/String;)Z
    .locals 5
    .parameter "filepath"

    .prologue
    const/4 v0, 0x0

    .local v0, canread:Z
    :try_start_0
    const-string v3, "\\\\"

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "/"

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [I

    .local v2, mOutPermissions:[I
    invoke-static {p1, v2}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .end local v2           #mOutPermissions:[I
    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private cleanCmdline(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "aRawData"

    .prologue
    if-nez p1, :cond_0

    const-string v1, "<invalid>"

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private clearApplicationCacheFiles(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .local v2, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    .local v0, clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v0}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v3, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :try_start_3
    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->success:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    monitor-exit v0

    .end local v0           #clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :cond_1
    :goto_2
    return v2

    .restart local v0       #clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private clearUserData(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .local v4, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    .local v1, clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    .local v3, res:Z
    if-nez v3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear application user data for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    .end local v3           #res:Z
    :cond_0
    :goto_0
    return v4

    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    .restart local v3       #res:Z
    :cond_1
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-boolean v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    :try_start_3
    iget-boolean v6, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->success:Z

    if-ne v5, v6, :cond_3

    iget-object v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v3           #res:Z
    :catch_1
    move-exception v5

    move-object v2, v5

    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v3       #res:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .local v1, mAppInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .local v1, pkgst:Landroid/content/pm/PackageStats;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .local v0, obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v4, :cond_1

    iget-object v1, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .end local v0           #obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .end local v2           #token:J
    :cond_1
    return-object v1

    .restart local v0       #obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .restart local v2       #token:J
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v5, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v5, :cond_2

    iget-object v1, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    :cond_2
    throw v4
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .local v0, pkg:Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0           #pkg:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private getPidList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, lProcDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .local v1, lFiles:[Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v4, :cond_0

    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPidList: process count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_2

    const/4 v4, 0x1

    aget-object v5, v1, v0

    const-string v6, "[0-9]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .local v1, mpkgInfo:Landroid/content/pm/PackageInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 4
    .parameter "size"

    .prologue
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v1, 0x0

    .local v1, sizeStr:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/android/server/enterprise/ApplicationPolicy;

    monitor-enter v1

    if-nez p0, :cond_0

    move-object v2, v3

    :goto_0
    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private readAppMemoryInfo()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    sget-boolean v21, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v21, :cond_0

    const-string v21, "ApplicationPolicy"

    const-string v22, "readAppMemoryInfo start"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getPidList()Ljava/util/ArrayList;

    move-result-object v16

    .local v16, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .local v20, lStats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object v15, v0

    .local v15, lPidArray:[I
    const/4 v9, 0x0

    .local v9, k:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    move v10, v9

    .end local v9           #k:I
    .local v10, k:I
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .local v14, lPid:Ljava/lang/Integer;
    add-int/lit8 v9, v10, 0x1

    .end local v10           #k:I
    .restart local v9       #k:I
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aput v21, v15, v10

    move v10, v9

    .end local v9           #k:I
    .restart local v10       #k:I
    goto :goto_0

    .end local v14           #lPid:Ljava/lang/Integer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "activity"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .local v5, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v5, v15}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v13

    .local v13, lMemInfoArray:[Landroid/os/Debug$MemoryInfo;
    sget-boolean v21, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v21, :cond_2

    const-string v21, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "memory length : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v13

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "pids length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object v0, v13

    array-length v0, v0

    move/from16 v21, v0

    move v0, v7

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget-object v12, v13, v7

    .local v12, lMemInfo:Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v12}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .local v18, lRamSize:J
    sget-boolean v21, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v21, :cond_3

    const-string v21, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "pid :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v15, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "pss value:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/proc/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget v22, v15, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/cmdline"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, lPkgName:Ljava/lang/String;
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, lCmdLine:Ljava/lang/String;
    new-instance v21, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v11

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11           #lCmdLine:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v5           #activityManager:Landroid/app/ActivityManager;
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #k:I
    .end local v12           #lMemInfo:Landroid/os/Debug$MemoryInfo;
    .end local v13           #lMemInfoArray:[Landroid/os/Debug$MemoryInfo;
    .end local v15           #lPidArray:[I
    .end local v17           #lPkgName:Ljava/lang/String;
    .end local v18           #lRamSize:J
    :catch_0
    move-exception v21

    move-object/from16 v6, v21

    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .end local v6           #e:Ljava/lang/Exception;
    :cond_5
    sget-boolean v21, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v21, :cond_6

    const-string v21, "ApplicationPolicy"

    const-string v22, "readAppMemoryInfo end"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v20
.end method

.method private readAppSizeInfo()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v13, "ApplicationPolicy"

    const-string v9, "ApplicationPolicy"

    const-string v9, "readAppSizeInfo start"

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .local v3, lPkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, lStats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .local v2, lPkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .local v4, lPkgName:Ljava/lang/String;
    if-eqz v4, :cond_0

    new-instance v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .local v5, lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v4, v5}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-boolean v9, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_1

    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v9, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v9, :cond_0

    iget-object v9, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v9, :cond_0

    iget-object v9, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v9, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v9, v11

    iget-object v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v7, v9, v11

    .local v7, lTotalSize:J
    new-instance v9, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-direct {v9, p0, v4, v7, v8}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #lPkgName:Ljava/lang/String;
    .end local v5           #lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .end local v7           #lTotalSize:J
    :catch_1
    move-exception v9

    move-object v0, v9

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    sget-boolean v9, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v9, :cond_3

    const-string v9, "ApplicationPolicy"

    const-string v9, "readAppSizeInfo end"

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v6

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #lPkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #lPkgName:Ljava/lang/String;
    .restart local v5       #lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method private readCpuTime()J
    .locals 6

    .prologue
    const-string v3, "ApplicationPolicy"

    sget-boolean v2, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v2, :cond_0

    const-string v2, "ApplicationPolicy"

    const-string v2, "readCpuTime start"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "proc/stat"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, lCpuStat:Ljava/lang/String;
    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_1
    const-string v2, "[ ]+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, segs:[Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v2, :cond_2

    const-string v2, "ApplicationPolicy"

    const-string v2, "readCpuTime end"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x4

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x5

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x6

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x7

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method private readData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "aFileName"

    .prologue
    const/4 v6, 0x0

    const-string v5, "ApplicationPolicy"

    sget-boolean v3, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v3, :cond_0

    const-string v3, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readData start for file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, lFstream:Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x1f4

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .local v1, lBufReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    const/4 v2, 0x0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v1, 0x0

    .end local v1           #lBufReader:Ljava/io/BufferedReader;
    .end local v2           #lFstream:Ljava/io/FileReader;
    :cond_2
    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v3, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v3, :cond_3

    const-string v3, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File access error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v3, v6

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #lBufReader:Ljava/io/BufferedReader;
    .restart local v2       #lFstream:Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v3, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v3, :cond_4

    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read error on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    const/4 v2, 0x0

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v1, 0x0

    :cond_6
    :goto_1
    move-object v3, v6

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    const/4 v2, 0x0

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v1, 0x0

    :cond_8
    :goto_2
    throw v3

    :catch_2
    move-exception v4

    move-object v0, v4

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v4

    move-object v0, v4

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private readProcInfo()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    sget-boolean v10, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v10, :cond_0

    const-string v10, "ApplicationPolicy"

    const-string v11, "readProcInfo start"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .local v9, lStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getPidList()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, lPid:Ljava/lang/Integer;
    sget-boolean v10, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v10, :cond_2

    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getting cpu usage for pid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/stat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, lStat:Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v10, "[ ]+"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, lSegs:[Ljava/lang/String;
    const/16 v10, 0xd

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/16 v12, 0xe

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long v5, v10, v12

    .local v5, lRunTime:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, lPkgName:Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v10, :cond_3

    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "package name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, lCmdLine:Ljava/lang/String;
    new-instance v10, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-direct {v10, p0, v1, v5, v6}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lCmdLine:Ljava/lang/String;
    .end local v2           #lPid:Ljava/lang/Integer;
    .end local v4           #lPkgName:Ljava/lang/String;
    .end local v5           #lRunTime:J
    .end local v7           #lSegs:[Ljava/lang/String;
    .end local v8           #lStat:Ljava/lang/String;
    :cond_4
    sget-boolean v10, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v10, :cond_5

    const-string v10, "ApplicationPolicy"

    const-string v11, "cannot open file "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v10, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v10, :cond_6

    const-string v10, "ApplicationPolicy"

    const-string v11, "readProcInfo end"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v9
.end method

.method private registerPackageChangeReceiver()V
    .locals 4

    .prologue
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/enterprise/ApplicationPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/ApplicationPolicy$1;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    sput-object v2, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "ApplicationPolicy"

    const-string v3, "registerPackageChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    const-string v2, "Application Policy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/DmAppInfo;->deleteDmAppInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "packageName"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_APP_MGMT"

    const-string v6, "Application Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->getSizeStr(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "packageName"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_APP_MGMT"

    const-string v6, "Application Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->getSizeStr(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationDataSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "packageName"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_APP_MGMT"

    const-string v6, "Application Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->getSizeStr(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkg"

    .prologue
    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_APP_MGMT"

    const-string v6, "Application Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .local v3, installationEnabled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/DmAppInfo;->getApplicationsList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, dmAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/DmAppInfo;

    .local v0, dmAppInfo:Lcom/android/server/enterprise/DmAppInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    const/4 v4, 0x1

    move v3, v4

    .end local v0           #dmAppInfo:Lcom/android/server/enterprise/DmAppInfo;
    .end local v1           #dmAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    :cond_0
    :goto_0
    return v3

    .restart local v0       #dmAppInfo:Lcom/android/server/enterprise/DmAppInfo;
    .restart local v1       #dmAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    :cond_1
    move v3, v7

    goto :goto_0

    .end local v0           #dmAppInfo:Lcom/android/server/enterprise/DmAppInfo;
    .end local v1           #dmAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "packageName"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_APP_MGMT"

    const-string v6, "Application Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, appName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .local v3, mAppInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #mAppInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_APP_MGMT"

    const-string v5, "Application Policy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, enabled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, value:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .end local v2           #value:I
    :cond_0
    :goto_0
    return v1

    .restart local v2       #value:I
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .end local v2           #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "packageName"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_APP_MGMT"

    const-string v6, "Application Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v4, v6

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long v2, v4, v6

    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->getSizeStr(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkg"

    .prologue
    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_APP_MGMT"

    const-string v6, "Application Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .local v3, uninstallationEnabled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/DmAppInfo;->getApplicationsList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, dmAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/DmAppInfo;

    .local v0, dmAppInfo:Lcom/android/server/enterprise/DmAppInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    const/4 v4, 0x1

    move v3, v4

    .end local v0           #dmAppInfo:Lcom/android/server/enterprise/DmAppInfo;
    .end local v1           #dmAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    :cond_0
    :goto_0
    return v3

    .restart local v0       #dmAppInfo:Lcom/android/server/enterprise/DmAppInfo;
    .restart local v1       #dmAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    :cond_1
    move v3, v7

    goto :goto_0

    .end local v0           #dmAppInfo:Lcom/android/server/enterprise/DmAppInfo;
    .end local v1           #dmAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "packageName"

    .prologue
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_APP_MGMT"

    const-string v5, "Application Policy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, appName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .local v2, mpkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #mpkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 7
    .parameter "pkg"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_APP_MGMT"

    const-string v6, "Application Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, appInfo:[Landroid/app/enterprise/ManagedAppInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/DmAppInfo;->getApplicationsList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Landroid/app/enterprise/ManagedAppInfo;

    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    new-instance v4, Landroid/app/enterprise/ManagedAppInfo;

    invoke-direct {v4}, Landroid/app/enterprise/ManagedAppInfo;-><init>()V

    aput-object v4, v0, v2

    aget-object v4, v0, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/DmAppInfo;

    iget-object v5, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    aget-object v4, v0, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/DmAppInfo;

    iget v5, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppDisabled:I

    iput v5, v4, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    aget-object v4, v0, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/DmAppInfo;

    iget v5, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    iput v5, v4, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    aget-object v4, v0, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/DmAppInfo;

    iget v5, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallCount:I

    iput v5, v4, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    aget-object v4, v0, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/DmAppInfo;

    iget v5, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallationDisabled:I

    iput v5, v4, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    aget-object v4, v0, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/DmAppInfo;

    iget v5, p0, Lcom/android/server/enterprise/DmAppInfo;->mAppUninstallationDisabled:I

    iput v5, v4, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 10

    .prologue
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.sec.MDM_APP_MGMT"

    const-string v9, "Application Policy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, packageNameList:[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .local v0, appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    .local v4, index:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v5, v4

    .end local v4           #index:I
    .local v5, index:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_0

    .end local v0           #appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #index:I
    :catch_0
    move-exception v7

    move-object v2, v7

    .local v2, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method

.method public declared-synchronized getInstalledManagedApplicationsList()[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.sec.MDM_APP_MGMT"

    const-string v9, "Application Policy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .local v0, appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/enterprise/DmAppInfo;->getApplicationsList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;

    move-result-object v2

    .local v2, deviceApps:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    array-length v7, v2

    if-lez v7, :cond_0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/DmAppInfo;

    iget v7, v7, Lcom/android/server/enterprise/DmAppInfo;->mAppInstallCount:I

    if-lez v7, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/DmAppInfo;

    iget-object v7, v7, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/DmAppInfo;

    iget-object v7, v7, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/DmAppInfo;

    iget-object v7, v7, Lcom/android/server/enterprise/DmAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v2           #deviceApps:[Ljava/lang/String;
    .end local v3           #deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #i:I
    :catch_0
    move-exception v7

    move-object v4, v7

    move-object v0, v1

    .end local v1           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    .restart local v0       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4           #e:Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    monitor-exit p0

    return-object v7

    :cond_4
    move-object v7, v10

    goto :goto_4

    .end local v0           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v0       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    move-object v4, v7

    goto :goto_2

    .end local v0           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #deviceApps:[Ljava/lang/String;
    .restart local v3       #deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #i:I
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/DmAppInfo;>;"
    :cond_5
    move-object v0, v1

    .end local v1           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3
.end method

.method public getTopNCPUUsageApp(I)Ljava/util/List;
    .locals 25
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
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "android.permission.sec.MDM_APP_MGMT"

    const-string v23, "Application Policy"

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v21, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v21, :cond_0

    const-string v21, "ApplicationPolicy"

    const-string v22, "getTopNCPUUsageApp start"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readProcInfo()Ljava/util/Map;

    move-result-object v19

    .local v19, lPrevState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readCpuTime()J

    move-result-wide v17

    .local v17, lPrevCpuTime:J
    const-wide/16 v21, 0x3e8

    :try_start_0
    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readProcInfo()Ljava/util/Map;

    move-result-object v13

    .local v13, lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readCpuTime()J

    move-result-wide v10

    .local v10, lCPUTime:J
    sget-boolean v21, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v21, :cond_1

    const-string v21, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "calculating cpu usage between time: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sub-long v14, v10, v17

    .local v14, lDeltaTime:J
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    .local v16, lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    .local v20, lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local p0
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, index:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->delta(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;J)Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v6           #index:I
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v10           #lCPUTime:J
    .end local v13           #lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    .end local v14           #lDeltaTime:J
    .end local v16           #lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v20           #lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    .restart local p0
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local p0
    .restart local v7       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v10       #lCPUTime:J
    .restart local v13       #lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    .restart local v14       #lDeltaTime:J
    .restart local v16       #lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v20       #lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :cond_2
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-ltz p1, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, p1

    if-ge v0, v1, :cond_4

    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result p1

    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move v0, v5

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .local v12, lCpuInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v8, Landroid/app/enterprise/AppInfo;

    invoke-direct {v8}, Landroid/app/enterprise/AppInfo;-><init>()V

    .local v8, lAppInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/enterprise/AppInfo;->setPackageName(Ljava/lang/String;)V

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v12}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4120

    div-float v21, v21, v22

    move-object v0, v8

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/enterprise/AppInfo;->setCPUUsageInfo(F)V

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v21, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v21, :cond_5

    const-string v21, "ApplicationPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " cpu usage:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v12}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v8           #lAppInfo:Landroid/app/enterprise/AppInfo;
    .end local v12           #lCpuInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    :cond_6
    sget-boolean v21, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v21, :cond_7

    const-string v21, "ApplicationPolicy"

    const-string v22, "getTopNCPUUsageApp end"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v9
.end method

.method public getTopNDataUsageApp(I)Ljava/util/List;
    .locals 9
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
    const-string v8, "ApplicationPolicy"

    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_APP_MGMT"

    const-string v7, "Application Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v5, :cond_0

    const-string v5, "ApplicationPolicy"

    const-string v5, "getTopNDataUsageApp start"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readAppSizeInfo()Ljava/util/List;

    move-result-object v2

    .local v2, lResults:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, lStorageInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-ltz p1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .local v1, lDataInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .local v3, lStorageInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/AppInfo;->setPackageName(Ljava/lang/String;)V

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/AppInfo;->setSize(J)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v5, :cond_3

    const-string v5, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data usage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #lDataInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    .end local v3           #lStorageInfo:Landroid/app/enterprise/AppInfo;
    :cond_4
    sget-boolean v5, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v5, :cond_5

    const-string v5, "ApplicationPolicy"

    const-string v5, "getTopNDataUsageApp end"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v4
.end method

.method public getTopNMemoryUsageApp(I)Ljava/util/List;
    .locals 9
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
    const-string v8, "ApplicationPolicy"

    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_APP_MGMT"

    const-string v7, "Application Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v5, :cond_0

    const-string v5, "ApplicationPolicy"

    const-string v5, "getTopNMemoryUsageApp start"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readAppMemoryInfo()Ljava/util/List;

    move-result-object v2

    .local v2, lResults:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, lStorageInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-ltz p1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .local v1, lMemInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .local v3, lStorageInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/AppInfo;->setPackageName(Ljava/lang/String;)V

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/AppInfo;->setSize(J)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v5, :cond_3

    const-string v5, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " memory usage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #lMemInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    .end local v3           #lStorageInfo:Landroid/app/enterprise/AppInfo;
    :cond_4
    sget-boolean v5, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v5, :cond_5

    const-string v5, "ApplicationPolicy"

    const-string v5, "getTopNMemoryUsageApp end"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v4
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .locals 18
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "android.permission.sec.MDM_APP_MGMT"

    const-string v5, "Application Policy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .local v14, success:Z
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v15, v14

    .end local v14           #success:Z
    .local v15, success:I
    :goto_0
    return v15

    .end local v15           #success:I
    .restart local v14       #success:Z
    :cond_1
    const/4 v12, 0x2

    .local v12, installFlags:I
    if-eqz p2, :cond_3

    or-int/lit8 v12, v12, 0x8

    :goto_1
    new-instance v13, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .local v13, obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, token:J
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v10, apkFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApplicationPolicy: Not a valid file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #apkFile:Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v11, v3

    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_2

    new-instance v2, Lcom/android/server/enterprise/DmAppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v4, v13, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/enterprise/DmAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .local v2, appInfo:Lcom/android/server/enterprise/DmAppInfo;
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/DmAppInfo;->updateAppManagerDB(IIIII)Z

    .end local v2           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v14

    .restart local v15       #success:I
    goto :goto_0

    .end local v13           #obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    .end local v15           #success:I
    .end local v16           #token:J
    :cond_3
    or-int/lit8 v12, v12, 0x10

    goto :goto_1

    .restart local v10       #apkFile:Ljava/io/File;
    .restart local v13       #obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    .restart local v16       #token:J
    :cond_4
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->canRead(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApplicationPolicy: Permission denied - Unable to open file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v10           #apkFile:Ljava/io/File;
    :catchall_0
    move-exception v3

    move-object v10, v3

    if-eqz v14, :cond_5

    new-instance v2, Lcom/android/server/enterprise/DmAppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v4, v13, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/enterprise/DmAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .restart local v2       #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/DmAppInfo;->updateAppManagerDB(IIIII)Z

    .end local v2           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .restart local v10       #apkFile:Ljava/io/File;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v3, v0

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v13, v12, v5}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    monitor-enter v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    :try_start_4
    iget-boolean v3, v13, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->finished:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v3, :cond_7

    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_7
    :try_start_6
    iget v3, v13, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->result:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    const/4 v14, 0x1

    :goto_4
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v14, :cond_2

    new-instance v2, Lcom/android/server/enterprise/DmAppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v4, v13, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/enterprise/DmAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .restart local v2       #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/DmAppInfo;->updateAppManagerDB(IIIII)Z

    goto/16 :goto_2

    .end local v2           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_8
    const/4 v14, 0x0

    goto :goto_4

    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkgName"

    .prologue
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_APP_MGMT"

    const-string v7, "Application Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, isInstalled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .local v0, appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .end local v0           #appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v4

    :catch_0
    move-exception v5

    move-object v2, v5

    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 9
    .parameter "pkgName"

    .prologue
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.sec.MDM_APP_MGMT"

    const-string v8, "Application Policy"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, isInstalled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, amgr:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .local v4, runninAppinfList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v5, runningApplicationInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    .end local v0           #amgr:Landroid/app/ActivityManager;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #runninAppinfList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5           #runningApplicationInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    return v3

    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_APP_MGMT"

    const-string v6, "Application Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3       #removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, pkg:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/ApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->deleteManagedAppInfo(Ljava/lang/String;)Z

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pkg:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public bridge synthetic removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 10
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_APP_MGMT"

    const-string v3, "Application Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/DmAppInfo;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/DmAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .local v0, appInfo:Lcom/android/server/enterprise/DmAppInfo;
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :goto_0
    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/DmAppInfo;->updateAppManagerDB(IIIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_1
    move v4, v9

    goto :goto_0

    .end local v0           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :catch_0
    move-exception v1

    move-object v8, v1

    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 18
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "android.permission.sec.MDM_APP_MGMT"

    const-string v7, "Application Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    .local v15, success:Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, token:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v5, v0

    if-eqz p2, :cond_2

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v14

    .local v14, state:Z
    move v0, v14

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    new-instance v4, Lcom/android/server/enterprise/DmAppInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/enterprise/DmAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .local v4, appInfo:Lcom/android/server/enterprise/DmAppInfo;
    const/4 v5, -0x1

    const/4 v6, -0x1

    if-eqz p2, :cond_3

    const/4 v7, 0x0

    :goto_1
    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/DmAppInfo;->updateAppManagerDB(IIIII)Z

    const/4 v15, 0x1

    .end local v4           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_0
    new-instance v13, Landroid/content/Intent;

    if-eqz v14, :cond_4

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    :goto_2
    const-string v6, "package"

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v13, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v13, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #state:Z
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v16           #token:J
    :cond_1
    return v15

    .restart local v16       #token:J
    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    .restart local v4       #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    .restart local v14       #state:Z
    :cond_3
    const/4 v7, 0x1

    goto :goto_1

    .end local v4           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_4
    :try_start_1
    const-string v5, "android.intent.action.PACKAGE_REMOVED"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v14           #state:Z
    :catch_0
    move-exception v5

    move-object v12, v5

    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 10
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_APP_MGMT"

    const-string v3, "Application Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/DmAppInfo;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/DmAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .local v0, appInfo:Lcom/android/server/enterprise/DmAppInfo;
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-eqz p2, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/DmAppInfo;->updateAppManagerDB(IIIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_1
    move v5, v9

    goto :goto_0

    .end local v0           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :catch_0
    move-exception v1

    move-object v8, v1

    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .locals 13
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_APP_MGMT"

    const-string v3, "Application Policy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v12, 0x0

    .local v12, unInstallFlags:I
    if-eqz p2, :cond_1

    const/4 v12, 0x1

    :cond_1
    new-instance v9, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;

    invoke-direct {v9, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .local v9, obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, token:J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v9, v12}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-boolean v1, v9, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-boolean v1, v9, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;->result:Z

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/server/enterprise/DmAppInfo;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/DmAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .local v0, appInfo:Lcom/android/server/enterprise/DmAppInfo;
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/DmAppInfo;->updateAppManagerDB(IIIII)Z

    .end local v0           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_3
    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v1, v9, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;->result:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v1

    move-object v8, v1

    .local v8, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-boolean v1, v9, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;->result:Z

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/server/enterprise/DmAppInfo;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/DmAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .restart local v0       #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/DmAppInfo;->updateAppManagerDB(IIIII)Z

    goto :goto_2

    .end local v0           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    move-object v8, v1

    iget-boolean v1, v9, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;->result:Z

    if-eqz v1, :cond_4

    new-instance v0, Lcom/android/server/enterprise/DmAppInfo;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/DmAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .restart local v0       #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/DmAppInfo;->updateAppManagerDB(IIIII)Z

    .end local v0           #appInfo:Lcom/android/server/enterprise/DmAppInfo;
    :cond_4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_APP_MGMT"

    const-string v6, "Application Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->clearUserData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->clearApplicationCacheFiles(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2           #token:J
    :cond_1
    return v1

    .restart local v2       #token:J
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
