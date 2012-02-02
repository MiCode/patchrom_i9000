.class Lcom/android/server/WifiService$LockList;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockList"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$WifiLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method private constructor <init>(Lcom/android/server/WifiService;)V
    .locals 1
    .parameter

    .prologue
    .line 2608
    iput-object p1, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    .line 2610
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2605
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/WifiService$LockList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/WifiService$LockList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2605
    invoke-direct {p0}, Lcom/android/server/WifiService$LockList;->hasLocks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService$LockList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2605
    invoke-direct {p0}, Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2605
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2605
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2605
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2605
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v0

    return-object v0
.end method

.method private addLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 2633
    iget-object v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_0

    .line 2634
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2636
    :cond_0
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 2658
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    .line 2659
    .local v1, l:Lcom/android/server/WifiService$WifiLock;
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2660
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 2662
    .end local v1           #l:Lcom/android/server/WifiService$WifiLock;
    :cond_0
    return-void
.end method

.method private findLockByBinder(Landroid/os/IBinder;)I
    .locals 3
    .parameter "binder"

    .prologue
    .line 2650
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 2651
    .local v1, size:I
    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2652
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WifiService$WifiLock;

    iget-object v2, v2, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    move v2, v0

    .line 2654
    :goto_1
    return v2

    .line 2651
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2654
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private declared-synchronized getStrongestLockMode()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2617
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 2629
    :goto_0
    monitor-exit p0

    return v0

    .line 2621
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    invoke-static {v0}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 2622
    const/4 v0, 0x3

    goto :goto_0

    .line 2625
    :cond_1
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mFullLocksAcquired:I
    invoke-static {v0}, Lcom/android/server/WifiService;->access$3600(Lcom/android/server/WifiService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mFullLocksReleased:I
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3700(Lcom/android/server/WifiService;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-le v0, v1, :cond_2

    move v0, v2

    .line 2626
    goto :goto_0

    .line 2629
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hasLocks()Z
    .locals 1

    .prologue
    .line 2613
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    .locals 3
    .parameter "binder"

    .prologue
    .line 2639
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    .line 2640
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 2641
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    .line 2642
    .local v1, ret:Lcom/android/server/WifiService$WifiLock;
    invoke-virtual {v1}, Lcom/android/server/WifiService$WifiLock;->unlinkDeathRecipient()V

    move-object v2, v1

    .line 2645
    .end local v1           #ret:Lcom/android/server/WifiService$WifiLock;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
