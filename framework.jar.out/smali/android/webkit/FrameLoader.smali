.class Landroid/webkit/FrameLoader;
.super Ljava/lang/Object;
.source "FrameLoader.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field static final HEADER_STR:Ljava/lang/String; = "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final URI_PROTOCOL:I = 0x100

.field private static final mAboutBlank:Ljava/lang/String; = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"


# instance fields
.field private mCacheMode:I

.field private mContentType:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/webkit/LoadListener;

.field private final mMethod:Ljava/lang/String;

.field private mNetwork:Landroid/webkit/Network;

.field private mPostData:[B

.field private mReferrer:Ljava/lang/String;

.field private final mSettings:Landroid/webkit/WebSettings;


# direct methods
.method constructor <init>(Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;Ljava/lang/String;)V
    .locals 1
    .parameter "listener"
    .parameter "settings"
    .parameter "method"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iput-object p3, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    iput-object p2, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    return-void
.end method

.method private handleCache()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v2, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->postIdentifier()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v5}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .local v1, result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    :goto_1
    move v2, v6

    goto :goto_0

    :cond_0
    const/16 v0, -0xe

    .local v0, err:I
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/net/http/EventHandler;->errorStringResources:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    goto :goto_1

    .end local v0           #err:I
    .end local v1           #result:Landroid/webkit/CacheManager$CacheResult;
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->postIdentifier()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v5}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .restart local v1       #result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    move v2, v6

    goto :goto_0

    .end local v1           #result:Landroid/webkit/CacheManager$CacheResult;
    :cond_1
    :pswitch_2
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z
    .locals 9
    .parameter "url"
    .parameter "loadListener"
    .parameter "settings"

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/16 v6, 0x65

    const/4 v5, 0x1

    const-string v8, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/webkit/FileLoader;

    invoke-direct {v2, v1, p1, v5, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Landroid/webkit/FileLoader;->load()V

    :goto_0
    move v2, v5

    .end local v1           #url:Ljava/lang/String;
    :goto_1
    return v2

    .restart local p0
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/16 v2, -0xc

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v2, v5

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local p0
    .restart local v1       #url:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/FileLoader;

    invoke-direct {v3, v1, p1, v5, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/webkit/FileLoader;

    invoke-direct {v2, v1, p1, v4, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Landroid/webkit/FileLoader;->load()V

    :goto_2
    move v2, v5

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/FileLoader;

    invoke-direct {v3, v1, p1, v4, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_3
    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/webkit/FileLoader;

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v3

    invoke-direct {v2, v1, p1, v7, v3}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Landroid/webkit/FileLoader;->load()V

    :goto_3
    move v2, v5

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/FileLoader;

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v4

    invoke-direct {v3, v1, p1, v7, v4}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Landroid/webkit/ContentLoader;

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/webkit/ContentLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2}, Landroid/webkit/ContentLoader;->load()V

    :goto_4
    move v2, v5

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/ContentLoader;

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/webkit/ContentLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :cond_7
    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Landroid/webkit/DataLoader;

    invoke-direct {v2, v1, p1}, Landroid/webkit/DataLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2}, Landroid/webkit/DataLoader;->load()V

    move v2, v5

    goto/16 :goto_1

    :cond_8
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/webkit/LoadListener;->data([BI)V

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->endData()V

    move v2, v5

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private populateHeaders()V
    .locals 7

    .prologue
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Referer"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "content-type"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v4}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyUsername()Ljava/lang/String;

    move-result-object v3

    .local v3, username:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyPassword()Ljava/lang/String;

    move-result-object v1

    .local v1, password:Ljava/lang/String;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v2

    .local v2, proxyHeader:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Basic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v1}, Landroid/net/http/RequestHandle;->computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #password:Ljava/lang/String;
    .end local v2           #proxyHeader:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v5}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v0

    .local v0, cookie:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Cookie"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    .end local v0           #cookie:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private populateStaticHeaders()V
    .locals 8

    .prologue
    const-string v7, "Accept"

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v6, "Accept"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, accept:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v6, "Accept"

    const-string v6, "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v6, "Accept-Charset"

    const-string v7, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    .local v1, acceptLanguage:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v6, "Accept-Language"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v6, "User-Agent"

    iget-object v7, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://wap.samsungmobile.com/uaprof/"

    .local v2, baseurl:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .local v4, uap:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "REL"

    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .local v3, model:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v3           #model:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v6, "x-wap-profile"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V
    .locals 3
    .parameter "result"

    .prologue
    new-instance v0, Landroid/webkit/CacheLoader;

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-direct {v0, v1, p1}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    .local v0, cacheLoader:Landroid/webkit/CacheLoader;
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v0}, Landroid/webkit/LoadListener;->setCacheLoader(Landroid/webkit/CacheLoader;)V

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/CacheLoader;->load()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public executeLoad()Z
    .locals 7

    .prologue
    const v6, 0x1040007

    const/4 v4, 0x1

    const/16 v3, -0xc

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v0

    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v5

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->verifyURLEncoding(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v5

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/webkit/FrameLoader;->handleHTTPLoad()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move v1, v4

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-static {v0, v1, v2}, Landroid/webkit/FrameLoader;->handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    const/16 v2, -0xa

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v5

    goto :goto_0
.end method

.method public getLoadListener()Landroid/webkit/LoadListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    return-object v0
.end method

.method handleHTTPLoad()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    :cond_0
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateStaticHeaders()V

    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateHeaders()V

    invoke-direct {p0}, Landroid/webkit/FrameLoader;->handleCache()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    invoke-virtual {v3, v4, v5, v6}, Landroid/webkit/LoadListener;->setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V

    move v3, v8

    :goto_0
    return v3

    :cond_1
    const/4 v2, 0x0

    .local v2, ret:Z
    const/16 v0, -0xa

    .local v0, error:I
    :try_start_0
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    iget-object v7, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_1
    if-nez v2, :cond_2

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/net/http/EventHandler;->errorStringResources:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, ex:Landroid/net/ParseException;
    const/16 v0, -0xc

    goto :goto_1

    .end local v1           #ex:Landroid/net/ParseException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .local v1, ex:Ljava/lang/RuntimeException;
    const/16 v0, -0xc

    goto :goto_1

    .end local v1           #ex:Ljava/lang/RuntimeException;
    :cond_2
    move v3, v8

    goto :goto_0
.end method

.method public setCacheMode(I)V
    .locals 0
    .parameter "cacheMode"

    .prologue
    iput p1, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    return-void
.end method

.method public setContentTypeForPost(Ljava/lang/String;)V
    .locals 0
    .parameter "postContentType"

    .prologue
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/util/HashMap;)V
    .locals 0
    .parameter "headers"

    .prologue
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setPostData([B)V
    .locals 0
    .parameter "postData"

    .prologue
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 1
    .parameter "ref"

    .prologue
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    :cond_0
    return-void
.end method
