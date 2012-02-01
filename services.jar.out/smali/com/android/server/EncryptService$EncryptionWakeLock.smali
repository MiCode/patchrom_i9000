.class Lcom/android/server/EncryptService$EncryptionWakeLock;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EncryptionWakeLock"
.end annotation


# instance fields
.field private bAcquire:Z

.field private mPM:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mPM:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-boolean v1, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->bAcquire:Z

    iput-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mPM:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-boolean v1, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->bAcquire:Z

    return-void
.end method


# virtual methods
.method protected InitWakeLock()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mPM:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->this$0:Lcom/android/server/EncryptService;

    #getter for: Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/EncryptService;->access$1000(Lcom/android/server/EncryptService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->this$0:Lcom/android/server/EncryptService;

    #getter for: Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/EncryptService;->access$1000(Lcom/android/server/EncryptService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mPM:Landroid/os/PowerManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mPM:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "encryption service working"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_1
    return-void
.end method

.method protected acquire()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->bAcquire:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/EncryptService$EncryptionWakeLock;->InitWakeLock()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->bAcquire:Z

    :cond_1
    return-void
.end method

.method protected release()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->bAcquire:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/EncryptService$EncryptionWakeLock;->bAcquire:Z

    :cond_1
    return-void
.end method
