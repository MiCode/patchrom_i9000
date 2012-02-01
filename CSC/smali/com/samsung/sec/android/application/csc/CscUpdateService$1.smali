.class Lcom/samsung/sec/android/application/csc/CscUpdateService$1;
.super Ljava/lang/Object;
.source "CscUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/android/application/csc/CscUpdateService;->doUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/android/application/csc/CscUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "CscUpdateService"

    const-string v4, ")"

    .line 256
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    invoke-virtual {v2}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->verifyResetDone()V

    .line 258
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscUpdateService;->mUpdatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/android/application/csc/Updatable;

    .line 259
    .local v1, u:Lcom/samsung/sec/android/application/csc/Updatable;
    const-string v2, "CscUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUpdatables start. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    #getter for: Lcom/samsung/sec/android/application/csc/CscUpdateService;->arrayIndex:I
    invoke-static {v3}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->access$000(Lcom/samsung/sec/android/application/csc/CscUpdateService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-interface {v1}, Lcom/samsung/sec/android/application/csc/Updatable;->update()V

    .line 261
    const-string v2, "CscUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUpdatables done. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    #getter for: Lcom/samsung/sec/android/application/csc/CscUpdateService;->arrayIndex:I
    invoke-static {v3}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->access$000(Lcom/samsung/sec/android/application/csc/CscUpdateService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    invoke-static {v2}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->access$008(Lcom/samsung/sec/android/application/csc/CscUpdateService;)I

    goto :goto_0

    .line 265
    .end local v1           #u:Lcom/samsung/sec/android/application/csc/Updatable;
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    invoke-virtual {v2}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->checkAndSendModemSettingIntent()V

    .line 266
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscUpdateService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscUpdateService;

    #calls: Lcom/samsung/sec/android/application/csc/CscUpdateService;->setUpdated()V
    invoke-static {v2}, Lcom/samsung/sec/android/application/csc/CscUpdateService;->access$100(Lcom/samsung/sec/android/application/csc/CscUpdateService;)V

    .line 267
    return-void
.end method
