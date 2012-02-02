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

    .line 1145
    iput-object p1, p0, Lcom/android/server/EncryptService$CheckStorageState;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->INTERNAL_STORAGE:I

    .line 1149
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->EXTERNAL_STORAGE:I

    .line 1151
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    .line 1152
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    .line 1153
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    return-void

    .line 1151
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 1152
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 1153
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
    .line 1196
    const/4 v0, 0x0

    .line 1200
    .local v0, bRet:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1202
    iget-object v1, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    const/4 v2, 0x0

    aget-boolean v0, v1, v2

    .line 1210
    :cond_0
    :goto_0
    return v0

    .line 1203
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1205
    iget-object v1, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    const/4 v2, 0x1

    aget-boolean v0, v1, v2

    goto :goto_0
.end method

.method protected checkFormatingStorageState(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    .line 1177
    const/4 v0, 0x0

    .line 1181
    .local v0, bRet:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1183
    iget-object v1, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    const/4 v2, 0x0

    aget-boolean v0, v1, v2

    .line 1191
    :cond_0
    :goto_0
    return v0

    .line 1184
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    const/4 v2, 0x1

    aget-boolean v0, v1, v2

    goto :goto_0
.end method

.method protected checkSharedStorageState(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    .line 1158
    const/4 v0, 0x0

    .line 1162
    .local v0, bRet:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1164
    iget-object v1, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    const/4 v2, 0x0

    aget-boolean v0, v1, v2

    .line 1172
    :cond_0
    :goto_0
    return v0

    .line 1165
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
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
    .line 1218
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1220
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    const/4 v1, 0x0

    aput-boolean p2, v0, v1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
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
    .line 1232
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    const/4 v1, 0x0

    aput-boolean p2, v0, v1

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
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

    .line 1242
    invoke-static {}, Landroid/os/Environment;->isExternalStorageFirstInsalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1250
    const-string v0, "shared"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1252
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->this$0:Lcom/android/server/EncryptService;

    invoke-virtual {v0, p1}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 1258
    :cond_2
    const-string v0, "mounted"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    aput-boolean v1, v0, v1

    .line 1261
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    aput-boolean v1, v0, v1

    .line 1262
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    aput-boolean v1, v0, v1

    goto :goto_0

    .line 1266
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

    .line 1270
    const-string v0, "shared"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1272
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->this$0:Lcom/android/server/EncryptService;

    invoke-virtual {v0, p1}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    aput-boolean v2, v0, v2

    goto :goto_0

    .line 1278
    :cond_4
    const-string v0, "mounted"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bBootingStorage:[Z

    aput-boolean v1, v0, v2

    .line 1281
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bFormatStorage:[Z

    aput-boolean v1, v0, v2

    .line 1282
    iget-object v0, p0, Lcom/android/server/EncryptService$CheckStorageState;->bSharedStorage:[Z

    aput-boolean v1, v0, v2

    goto :goto_0

    .line 1288
    :cond_5
    const-string v0, "EncryptService"

    const-string v1, " updateStorageSharedState : End! unknown path!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
