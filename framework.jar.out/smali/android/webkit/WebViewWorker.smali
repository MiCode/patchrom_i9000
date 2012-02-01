.class final Landroid/webkit/WebViewWorker;
.super Landroid/os/Handler;
.source "WebViewWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewWorker$CacheData;,
        Landroid/webkit/WebViewWorker$CacheEncoding;,
        Landroid/webkit/WebViewWorker$CacheSaveData;,
        Landroid/webkit/WebViewWorker$CacheCreateData;
    }
.end annotation


# static fields
.field private static final CACHE_TRANSACTION_TICKER_INTERVAL:I = 0xea60

.field static final MSG_ADD_HTTPLOADER:I = 0x66

.field static final MSG_ADD_STREAMLOADER:I = 0x65

.field static final MSG_APPEND_CACHE:I = 0x69

.field static final MSG_CACHE_TRANSACTION_TICKER:I = 0x6e

.field static final MSG_CLEAR_CACHE:I = 0x6d

.field static final MSG_CREATE_CACHE:I = 0x67

.field static final MSG_PAUSE_CACHE_TRANSACTION:I = 0x6f

.field static final MSG_REMOVE_CACHE:I = 0x6b

.field static final MSG_REMOVE_META_URL_CACHE:I = 0x71

.field static final MSG_RESUME_CACHE_TRANSACTION:I = 0x70

.field static final MSG_SAVE_CACHE:I = 0x6a

.field static final MSG_TRIM_CACHE:I = 0x6c

.field static final MSG_UPDATE_CACHE_ENCODING:I = 0x68

.field private static final THREAD_NAME:Ljava/lang/String; = "WebViewWorkerThread"

.field private static mCacheResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/webkit/LoadListener;",
            "Landroid/webkit/CacheManager$CacheResult;",
            ">;"
        }
    .end annotation
.end field

.field private static mCacheTickersBlocked:Z

.field private static sWorkerHandler:Landroid/webkit/WebViewWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebViewWorker;->mCacheTickersBlocked:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static declared-synchronized getHandler()Landroid/webkit/WebViewWorker;
    .locals 4

    .prologue
    const-class v1, Landroid/webkit/WebViewWorker;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/webkit/WebViewWorker;->sWorkerHandler:Landroid/webkit/WebViewWorker;

    if-nez v2, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "WebViewWorkerThread"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/webkit/WebViewWorker;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebViewWorker;-><init>(Landroid/os/Looper;)V

    sput-object v2, Landroid/webkit/WebViewWorker;->sWorkerHandler:Landroid/webkit/WebViewWorker;

    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    sget-object v2, Landroid/webkit/WebViewWorker;->sWorkerHandler:Landroid/webkit/WebViewWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/webkit/StreamLoader;

    .local v17, loader:Landroid/webkit/StreamLoader;
    invoke-virtual/range {v17 .. v17}, Landroid/webkit/StreamLoader;->load()V

    goto :goto_0

    .end local v17           #loader:Landroid/webkit/StreamLoader;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/webkit/FrameLoader;

    .local v17, loader:Landroid/webkit/FrameLoader;
    invoke-virtual/range {v17 .. v17}, Landroid/webkit/FrameLoader;->handleHTTPLoad()Z

    goto :goto_0

    .end local v17           #loader:Landroid/webkit/FrameLoader;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/webkit/WebViewWorker$CacheCreateData;

    .local v12, data:Landroid/webkit/WebViewWorker$CacheCreateData;
    iget-object v4, v12, Landroid/webkit/WebViewWorker$CacheCreateData;->mUrl:Ljava/lang/String;

    iget v5, v12, Landroid/webkit/WebViewWorker$CacheCreateData;->mStatusCode:I

    iget-object v6, v12, Landroid/webkit/WebViewWorker$CacheCreateData;->mHeaders:Landroid/net/http/Headers;

    iget-object v7, v12, Landroid/webkit/WebViewWorker$CacheCreateData;->mMimeType:Ljava/lang/String;

    iget-wide v8, v12, Landroid/webkit/WebViewWorker$CacheCreateData;->mPostId:J

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/webkit/CacheManager;->createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v11

    .local v11, cache:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v11, :cond_1

    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v5, v12, Landroid/webkit/WebViewWorker$CacheCreateData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v4, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v5, v12, Landroid/webkit/WebViewWorker$CacheCreateData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v11           #cache:Landroid/webkit/CacheManager$CacheResult;
    .end local v12           #data:Landroid/webkit/WebViewWorker$CacheCreateData;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/webkit/WebViewWorker$CacheEncoding;

    .local v12, data:Landroid/webkit/WebViewWorker$CacheEncoding;
    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v5, v12, Landroid/webkit/WebViewWorker$CacheEncoding;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/webkit/CacheManager$CacheResult;

    .restart local v11       #cache:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v11, :cond_0

    iget-object v4, v12, Landroid/webkit/WebViewWorker$CacheEncoding;->mEncoding:Ljava/lang/String;

    iput-object v4, v11, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    goto :goto_0

    .end local v11           #cache:Landroid/webkit/CacheManager$CacheResult;
    .end local v12           #data:Landroid/webkit/WebViewWorker$CacheEncoding;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/webkit/WebViewWorker$CacheData;

    .local v12, data:Landroid/webkit/WebViewWorker$CacheData;
    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v5, v12, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/webkit/CacheManager$CacheResult;

    .restart local v11       #cache:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v11, :cond_2

    iget-wide v4, v11, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    iget-object v6, v12, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    iget v6, v6, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v11, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    iget-wide v4, v11, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    sget-wide v6, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    invoke-static {v11}, Landroid/webkit/CacheManager;->cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z

    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v5, v12, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    iget-object v4, v12, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    invoke-virtual {v4}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto/16 :goto_0

    :cond_3
    :try_start_0
    iget-object v4, v11, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    iget-object v5, v12, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    iget-object v5, v5, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v6, 0x0

    iget-object v7, v12, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    iget v7, v7, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v13, v4

    .local v13, e:Ljava/io/IOException;
    invoke-static {v11}, Landroid/webkit/CacheManager;->cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z

    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v5, v12, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v11           #cache:Landroid/webkit/CacheManager$CacheResult;
    .end local v12           #data:Landroid/webkit/WebViewWorker$CacheData;
    .end local v13           #e:Ljava/io/IOException;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/webkit/WebViewWorker$CacheSaveData;

    .local v12, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v5, v12, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/webkit/CacheManager$CacheResult;

    .restart local v11       #cache:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v11, :cond_0

    iget-object v4, v12, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    iget-wide v5, v12, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    invoke-static {v4, v5, v6, v11}, Landroid/webkit/CacheManager;->saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V

    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v5, v12, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v11           #cache:Landroid/webkit/CacheManager$CacheResult;
    .end local v12           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/webkit/LoadListener;

    .local v16, listener:Landroid/webkit/LoadListener;
    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/webkit/CacheManager$CacheResult;

    .restart local v11       #cache:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v11, :cond_0

    invoke-static {v11}, Landroid/webkit/CacheManager;->cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z

    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v11           #cache:Landroid/webkit/CacheManager$CacheResult;
    .end local v16           #listener:Landroid/webkit/LoadListener;
    :pswitch_7
    invoke-static {}, Landroid/webkit/CacheManager;->trimCacheIfNeeded()V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Landroid/webkit/CacheManager;->clearCache()V

    goto/16 :goto_0

    :pswitch_9
    sget-boolean v4, Landroid/webkit/WebViewWorker;->mCacheTickersBlocked:Z

    if-nez v4, :cond_0

    invoke-static {}, Landroid/webkit/CacheManager;->endTransaction()Z

    invoke-static {}, Landroid/webkit/CacheManager;->startTransaction()Z

    const/16 v4, 0x6e

    const-wide/32 v5, 0xea60

    move-object/from16 v0, p0

    move v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewWorker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_a
    invoke-static {}, Landroid/webkit/CacheManager;->disableTransaction()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    sput-boolean v4, Landroid/webkit/WebViewWorker;->mCacheTickersBlocked:Z

    const/16 v4, 0x6e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {}, Landroid/webkit/CacheManager;->enableTransaction()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    sput-boolean v4, Landroid/webkit/WebViewWorker;->mCacheTickersBlocked:Z

    const/16 v4, 0x6e

    const-wide/32 v5, 0xea60

    move-object/from16 v0, p0

    move v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewWorker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .local v21, url:Ljava/lang/String;
    if-eqz v21, :cond_0

    const/16 v16, 0x0

    .restart local v16       #listener:Landroid/webkit/LoadListener;
    const/4 v14, 0x0

    .local v14, entryUrl:Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, mMetaUrlDeleted:Z
    const/16 v20, 0x0

    .local v20, set:Ljava/util/Set;
    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .local v19, resultMap:Ljava/util/Map$Entry;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    .end local v16           #listener:Landroid/webkit/LoadListener;
    check-cast v16, Landroid/webkit/LoadListener;

    .restart local v16       #listener:Landroid/webkit/LoadListener;
    invoke-virtual/range {v16 .. v16}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/webkit/CacheManager$CacheResult;

    .restart local v11       #cache:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v11, :cond_5

    invoke-static {v11}, Landroid/webkit/CacheManager;->cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z

    sget-object v4, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v18, 0x1

    .end local v11           #cache:Landroid/webkit/CacheManager$CacheResult;
    .end local v19           #resultMap:Ljava/util/Map$Entry;
    :cond_5
    if-nez v18, :cond_0

    invoke-static/range {v21 .. v21}, Landroid/webkit/CacheManager;->removeUrlFromCache(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
