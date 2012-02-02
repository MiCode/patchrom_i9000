.class Landroid/drm/mobile2/DrmRoapManager$HttpThread;
.super Ljava/lang/Object;
.source "DrmRoapManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/mobile2/DrmRoapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpThread"
.end annotation


# instance fields
.field config:Landroid/drm/mobile2/HttpConfig;

.field dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

.field final synthetic this$0:Landroid/drm/mobile2/DrmRoapManager;


# direct methods
.method constructor <init>(Landroid/drm/mobile2/DrmRoapManager;Landroid/drm/mobile2/HttpConfig;Landroid/drm/mobile2/DrmRoapManager$DataHandler;)V
    .locals 1
    .parameter
    .parameter "config"
    .parameter "datahandle"

    .prologue
    .line 156
    iput-object p1, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->this$0:Landroid/drm/mobile2/DrmRoapManager;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    .line 158
    iput-object p2, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    .line 159
    iput-object p3, p0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    .line 160
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->this$0:Landroid/drm/mobile2/DrmRoapManager;

    move-object v2, v0

    #getter for: Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/drm/mobile2/DrmRoapManager;->access$000(Landroid/drm/mobile2/DrmRoapManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Inside a Thread"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v22, 0x0

    .line 165
    .local v22, status:I
    const/4 v6, 0x0

    .line 168
    .local v6, isProxySet:Z
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, host:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v8

    .line 170
    .local v8, port:I
    if-eqz v7, :cond_1

    const/4 v2, -0x1

    if-eq v8, v2, :cond_1

    .line 172
    const/4 v6, 0x1

    .line 173
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    move-object v3, v0

    iget v3, v3, Landroid/drm/mobile2/HttpConfig;->trId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    move-object v4, v0

    iget-object v4, v4, Landroid/drm/mobile2/HttpConfig;->pUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    move-object v5, v0

    iget v5, v5, Landroid/drm/mobile2/HttpConfig;->method:I

    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    move-object v10, v0

    iget-object v10, v10, Landroid/drm/mobile2/HttpConfig;->postData:[C

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    move-object v10, v0

    iget-object v10, v10, Landroid/drm/mobile2/HttpConfig;->pSendHeader:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    move-object v13, v0

    invoke-static/range {v2 .. v13}, Landroid/drm/mobile2/HttpManager;->httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I

    move-result v22

    .line 181
    :goto_0
    const/4 v2, 0x1

    move/from16 v0, v22

    move v1, v2

    if-eq v0, v1, :cond_0

    .line 187
    .end local v7           #host:Ljava/lang/String;
    .end local v8           #port:I
    :cond_0
    :goto_1
    return-void

    .line 178
    .restart local v7       #host:Ljava/lang/String;
    .restart local v8       #port:I
    :cond_1
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    move-object v2, v0

    iget v10, v2, Landroid/drm/mobile2/HttpConfig;->trId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    move-object v2, v0

    iget-object v11, v2, Landroid/drm/mobile2/HttpConfig;->pUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    move-object v2, v0

    iget v12, v2, Landroid/drm/mobile2/HttpConfig;->method:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    move-object v2, v0

    iget-object v2, v2, Landroid/drm/mobile2/HttpConfig;->postData:[C

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->config:Landroid/drm/mobile2/HttpConfig;

    move-object v2, v0

    move-object v0, v2

    iget-object v0, v0, Landroid/drm/mobile2/HttpConfig;->pSendHeader:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/mobile2/DrmRoapManager$HttpThread;->dataHandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    move-object/from16 v20, v0

    move v13, v6

    invoke-static/range {v9 .. v20}, Landroid/drm/mobile2/HttpManager;->httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    goto :goto_0

    .line 184
    .end local v7           #host:Ljava/lang/String;
    .end local v8           #port:I
    :catch_0
    move-exception v2

    move-object/from16 v21, v2

    .line 185
    .local v21, e:Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
