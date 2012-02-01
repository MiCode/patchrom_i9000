.class Lcom/samsung/sec/android/application/csc/CscModemSettingService$1;
.super Ljava/lang/Object;
.source "CscModemSettingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/android/application/csc/CscModemSettingService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscModemSettingService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/android/application/csc/CscModemSettingService;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscModemSettingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v4, "MODE"

    const-string v3, "CscModemSettingService"

    .line 111
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->access$000()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->access$000()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "MODE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->access$000()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "MODE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, keyString:Ljava/lang/String;
    const-string v1, "SET_LOCK_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "CscModemSettingService"

    const-string v1, "SET_LOCK_INFO for modem values. (PHASE 1 writing)"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscModemSettingService;

    #calls: Lcom/samsung/sec/android/application/csc/CscModemSettingService;->updateLockInfo()V
    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->access$100(Lcom/samsung/sec/android/application/csc/CscModemSettingService;)V

    .line 127
    :cond_0
    const-string v1, "SET_MODEM_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const-string v1, "CscModemSettingService"

    const-string v1, "SET_MODEM_INFO for modem values. (PHASE 2 writing)"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscModemSettingService;

    #calls: Lcom/samsung/sec/android/application/csc/CscModemSettingService;->updateModemInfo()V
    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->access$200(Lcom/samsung/sec/android/application/csc/CscModemSettingService;)V

    .line 136
    :cond_1
    const-string v1, "COMPARE_VERIFY_MODEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    const-string v1, "CscModemSettingService"

    const-string v1, "COMPARE_VERIFY for modem values. "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscModemSettingService$1;->this$0:Lcom/samsung/sec/android/application/csc/CscModemSettingService;

    #calls: Lcom/samsung/sec/android/application/csc/CscModemSettingService;->compareLockAndModemInfo()V
    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscModemSettingService;->access$300(Lcom/samsung/sec/android/application/csc/CscModemSettingService;)V

    .line 144
    .end local v0           #keyString:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 143
    :cond_3
    const-string v1, "CscModemSettingService"

    const-string v1, "NO EXTRA"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
