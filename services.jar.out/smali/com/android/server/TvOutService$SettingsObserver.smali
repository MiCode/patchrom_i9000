.class Lcom/android/server/TvOutService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TvOutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvOutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvOutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvOutService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    iput-object p1, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "TvOut-Observer"

    const-string v2, "observe"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #getter for: Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/TvOutService;->access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tv_system"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "tv_out"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/server/TvOutService$SettingsObserver;->update()V

    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    const-string v0, "TvOut-Observer"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/TvOutService$SettingsObserver;->update()V

    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    const-string v6, "TvOut-Observer"

    const-string v7, "update"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #getter for: Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/TvOutService;->access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, isupdatetvsystem:Z
    const/4 v0, 0x0

    .local v0, isupdatetvstatus:Z
    iget-object v6, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    iget-object v6, v6, Lcom/android/server/TvOutService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #getter for: Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/TvOutService;->access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tv_system"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, tvoutsystem:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, tvsystem:I
    iget-object v7, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #getter for: Lcom/android/server/TvOutService;->mTvSystem:I
    invoke-static {v7}, Lcom/android/server/TvOutService;->access$100(Lcom/android/server/TvOutService;)I

    move-result v7

    if-eq v7, v5, :cond_0

    iget-object v7, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #setter for: Lcom/android/server/TvOutService;->mTvSystem:I
    invoke-static {v7, v5}, Lcom/android/server/TvOutService;->access$102(Lcom/android/server/TvOutService;I)I

    const/4 v1, 0x1

    :cond_0
    const-string v7, "tv_out"

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .local v4, tvstatus:I
    iget-object v7, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #getter for: Lcom/android/server/TvOutService;->mTvStatus:I
    invoke-static {v7}, Lcom/android/server/TvOutService;->access$200(Lcom/android/server/TvOutService;)I

    move-result v7

    if-eq v7, v4, :cond_1

    iget-object v7, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #setter for: Lcom/android/server/TvOutService;->mTvStatus:I
    invoke-static {v7, v4}, Lcom/android/server/TvOutService;->access$202(Lcom/android/server/TvOutService;I)I

    const/4 v0, 0x1

    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #calls: Lcom/android/server/TvOutService;->updatetvsystem()V
    invoke-static {v6}, Lcom/android/server/TvOutService;->access$300(Lcom/android/server/TvOutService;)V

    const/4 v1, 0x0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    #calls: Lcom/android/server/TvOutService;->updatetvstatus()V
    invoke-static {v6}, Lcom/android/server/TvOutService;->access$400(Lcom/android/server/TvOutService;)V

    const/4 v0, 0x0

    :cond_3
    return-void

    .end local v3           #tvoutsystem:Ljava/lang/String;
    .end local v4           #tvstatus:I
    .end local v5           #tvsystem:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method
