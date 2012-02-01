.class Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatterSd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatterSd;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatterSd;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatterSd;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v6, "android.intent.action.MASTER_CLEAR"

    const-string v5, "ExternalStorageFormatterSd"

    const/4 v1, 0x0

    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatterSd;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mFactoryReset:Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatterSd;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatterSd;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatterSd;

    invoke-virtual {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->stopSelf()V

    :goto_1
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatterSd;

    const v3, 0x1040452

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatterSd;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mAlwaysReset:Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatterSd;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatterSd;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatterSd;

    invoke-virtual {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->stopSelf()V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ExternalStorageFormatterSd"

    const-string v2, "Failed talking with mount service"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v2, "ExternalStorageFormatterSd"

    const-string v2, "updateProgressState :: Failed format volume."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
