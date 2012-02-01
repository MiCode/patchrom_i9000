.class public Lcom/android/server/EncryptService$CheckStorageState;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CheckStorageState"
.end annotation


# instance fields
.field private final EXTERNAL_STORAGE:I

.field private final INTERNAL_STORAGE:I

.field private bBootingStorage:[Z

.field private bFormatStorage:[Z

.field private bSharedStorage:[Z

.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method protected constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    iput-object p1, p0, Lcom/android/server/EncryptService$CheckStorageState;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->INTERNAL_STORAGE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->EXTERNAL_STORAGE:I

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method protected checkBootingStorageState(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    const/4 v0, 0x0

    .local v0, bRet:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    const/4 v2, 0x0

    aget-boolean v0, v1, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    const/4 v2, 0x1

    aget-boolean v0, v1, v2

    goto :goto_0
.end method

.method protected checkFormatingStorageState(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    const/4 v0, 0x0

    .local v0, bRet:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    const/4 v2, 0x0

    aget-boolean v0, v1, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    const/4 v2, 0x1

    aget-boolean v0, v1, v2

    goto :goto_0
.end method

.method protected checkSharedStorageState(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    const/4 v0, 0x0

    .local v0, bRet:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    const/4 v2, 0x0

    aget-boolean v0, v1, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    const/4 v2, 0x1

    aget-boolean v0, v1, v2

    goto :goto_0
.end method

.method protected setBootingStorageState(Ljava/lang/String;Z)V
    .locals 2
    .parameter "sPath"
    .parameter "bSet"

    .prologue
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    const/4 v1, 0x0

    aput-boolean p2, v0, v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    const/4 v1, 0x1

    aput-boolean p2, v0, v1

    goto :goto_0
.end method

.method protected setFormatingStorageState(Ljava/lang/String;Z)V
    .locals 2
    .parameter "sPath"
    .parameter "bSet"

    .prologue
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    const/4 v1, 0x0

    aput-boolean p2, v0, v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    const/4 v1, 0x1

    aput-boolean p2, v0, v1

    goto :goto_0
.end method

.method protected updateStorageSharedState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "sPath"
    .parameter "sState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v4, "shared"

    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->isExternalStorageFirstInsalled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "shared"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->this$0:Lcom/android/server/EncryptService;

    invoke-virtual {v0, p1}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "mounted"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    aput-boolean v1, v0, v1

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    aput-boolean v1, v0, v1

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    aput-boolean v1, v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "shared"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->this$0:Lcom/android/server/EncryptService;

    invoke-virtual {v0, p1}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    aput-boolean v2, v0, v2

    goto :goto_0

    :cond_4
    const-string v0, "mounted"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    aput-boolean v1, v0, v2

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    aput-boolean v1, v0, v2

    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    aput-boolean v1, v0, v2

    goto :goto_0

    :cond_5
    const-string v0, "EncryptService"

    const-string v1, " updateStorageSharedState : End! unknown path!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
