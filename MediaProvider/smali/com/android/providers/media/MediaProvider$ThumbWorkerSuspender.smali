.class Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbWorkerSuspender"
.end annotation


# instance fields
.field private mApplicationSuspendThumbWorker:Z

.field private mMediaScanning:Z

.field private mThumbWorkerHandler:Landroid/os/Handler;

.field private mThumbWorkerSuspendTimer:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 6647
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6642
    iput-boolean v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mApplicationSuspendThumbWorker:Z

    .line 6643
    iput-boolean v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mMediaScanning:Z

    .line 6644
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mThumbWorkerHandler:Landroid/os/Handler;

    .line 6697
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$3;-><init>(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mThumbWorkerSuspendTimer:Ljava/lang/Runnable;

    .line 6648
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->registerScanSuspendCommandReceiver()V

    .line 6649
    return-void
.end method

.method static synthetic access$2200(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 6641
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mApplicationSuspendThumbWorker:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6641
    iput-boolean p1, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mApplicationSuspendThumbWorker:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6641
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->suspend()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6641
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->kickThumbWorkerSuspendTimer()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6641
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->stopThumbWorkerSuspendTimer()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 6641
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mMediaScanning:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6641
    iput-boolean p1, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mMediaScanning:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6641
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->resume()V

    return-void
.end method

.method private kickThumbWorkerSuspendTimer()V
    .locals 2

    .prologue
    .line 6729
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kickThumbWorkerSuspendTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6730
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->stopThumbWorkerSuspendTimer()V

    .line 6731
    invoke-direct {p0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->startThumbWorkerSuspendTimer()V

    .line 6732
    return-void
.end method

.method private registerScanSuspendCommandReceiver()V
    .locals 4

    .prologue
    .line 6656
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6657
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6658
    const-string v2, "android.intent.action.MEDIA_THUMBWORKER_RESUME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6659
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$1;

    invoke-direct {v3, p0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$1;-><init>(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6676
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 6677
    .local v1, iFilter2:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6678
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6679
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 6680
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$2;

    invoke-direct {v3, p0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$2;-><init>(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6695
    return-void
.end method

.method private resume()V
    .locals 3

    .prologue
    .line 6715
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Resuming ThumbWorker"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6716
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->access$2800(Lcom/android/providers/media/MediaProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6719
    const/4 v0, 0x1

    .line 6720
    .local v0, bIsEmptyThumbRequestStack:Z
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->access$1700(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1

    .line 6721
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$1700(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    .line 6722
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6724
    if-nez v0, :cond_0

    .line 6725
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->access$2800(Lcom/android/providers/media/MediaProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6726
    :cond_0
    return-void

    .line 6722
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private startThumbWorkerSuspendTimer()V
    .locals 4

    .prologue
    .line 6735
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startThumbWorkerSuspendTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6736
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mThumbWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mThumbWorkerSuspendTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2af8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6737
    return-void
.end method

.method private stopThumbWorkerSuspendTimer()V
    .locals 2

    .prologue
    .line 6740
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopThumbWorkerSuspendTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6741
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mThumbWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mThumbWorkerSuspendTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6742
    return-void
.end method

.method private suspend()V
    .locals 2

    .prologue
    .line 6709
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Suspending ThumbWorker"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6710
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$2800(Lcom/android/providers/media/MediaProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6711
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$2800(Lcom/android/providers/media/MediaProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6712
    return-void
.end method


# virtual methods
.method public getThumbWorkerSuspended()Z
    .locals 1

    .prologue
    .line 6652
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mApplicationSuspendThumbWorker:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mMediaScanning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
