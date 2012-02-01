.class Landroid/webkit/LoadListener;
.super Landroid/os/Handler;
.source "LoadListener.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# static fields
.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HASH_MIME_APPLICATION_VND_OMA_DD_XML:I = 0x12fac3b8

.field private static final HASH_MIME_APPLICATION_VND_OMA_DRM_DCF:I = 0x67c1d54c

.field private static final HASH_MIME_APPLICATION_VND_OMA_DRM_RO_XML:I = 0x6e088824

.field private static final HASH_MIME_APPLICATION_VND_OMA_ROAPPDU_XML:I = -0x64a50f9

.field private static final HASH_MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:I = 0x3e4a533e

.field private static final HTTP_AUTH:I = 0x191

.field private static final HTTP_FOUND:I = 0x12e

.field private static final HTTP_MOVED_PERMANENTLY:I = 0x12d

.field private static final HTTP_NOT_FOUND:I = 0x194

.field private static final HTTP_NOT_MODIFIED:I = 0x130

.field private static final HTTP_OK:I = 0xc8

.field private static final HTTP_PARTIAL_CONTENT:I = 0xce

.field private static final HTTP_PROXY_AUTH:I = 0x197

.field private static final HTTP_SEE_OTHER:I = 0x12f

.field private static final HTTP_TEMPORARY_REDIRECT:I = 0x133

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MSG_CONTENT_DATA:I = 0x6e

.field private static final MSG_CONTENT_ERROR:I = 0x82

.field private static final MSG_CONTENT_FINISHED:I = 0x78

.field private static final MSG_CONTENT_HEADERS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x8c

.field private static final MSG_LOCATION_CHANGED_REQUEST:I = 0x96

.field private static final MSG_SSL_CERTIFICATE:I = 0xaa

.field private static final MSG_SSL_ERROR:I = 0xb4

.field private static final MSG_STATUS:I = 0xa0

.field private static final XML_MIME_TYPE:Ljava/lang/String; = "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

.field private static sCertificateTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNativeLoaderCount:I


# instance fields
.field private downloadStream:Ljava/io/FileOutputStream;

.field private isDownloadabelfile:Z

.field private mAuthFailed:Z

.field private mAuthHeader:Landroid/net/http/HttpAuthHeader;

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mCacheLoader:Landroid/webkit/CacheLoader;

.field private mCacheRedirectCount:I

.field private mCancelled:Z

.field public mContentLength:J

.field private mContext:Landroid/content/Context;

.field private final mDataBuilder:Landroid/webkit/ByteArrayBuilder;

.field private mEncoding:Ljava/lang/String;

.field private mErrorDescription:Ljava/lang/String;

.field private mErrorID:I

.field private mFromCache:Z

.field private mHeaders:Landroid/net/http/Headers;

.field private mIsMainPageLoader:Z

.field private final mIsMainResourceLoader:Z

.field private mMessageQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mNativeLoader:I

.field private mOriginalUrl:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private mPermanent:Z

.field private mPostData:[B

.field private mPostIdentifier:J

.field private mRedirectConfirmation:Z

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mRequestHeaders:Ljava/util/Map;
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

.field private mShouldDoFeedSniff:Z

.field private mSslError:Landroid/net/http/SslError;

.field private mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mStatusText:Ljava/lang/String;

.field private mSynchronous:Z

.field private mTransferEncoding:Ljava/lang/String;

.field private mUri:Landroid/net/WebAddress;

.field private mUrl:Ljava/lang/String;

.field private final mUserGesture:Z

.field private final mUsername:Ljava/lang/String;

.field private m_feedTypeSniffed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "CERT"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-x509-ca-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-x509-user-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-pkcs12"

    const-string v2, "PKCS12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^((?:[xX]-)?[a-zA-Z\\*]+/[\\w\\+\\*-]+[\\.[\\w\\+-]+]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/webkit/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkit/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    iput v1, p0, Landroid/webkit/LoadListener;->mErrorID:I

    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    iput-boolean v1, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    iput-boolean v1, p0, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    iput-object p1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {p0, p3}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    iput p4, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    iput-boolean p5, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    if-eqz p5, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    :cond_0
    iput-boolean p6, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    iput-boolean p7, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    iput-boolean p8, p0, Landroid/webkit/LoadListener;->mUserGesture:Z

    iput-wide p9, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-object p11, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iput-object p12, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/LoadListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/LoadListener;->nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearNativeLoader()V
    .locals 2

    .prologue
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    return-void
.end method

.method private commitHeaders()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v0

    .local v0, nativeResponse:I
    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->nativeReceivedResponse(I)V

    goto :goto_0
.end method

.method private commitHeadersCheckRedirect()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12d

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12f

    if-le v0, v1, :cond_0

    :cond_2
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    goto :goto_0
.end method

.method private commitLoad()V
    .locals 12

    .prologue
    const-string v11, "webkit"

    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v3

    .local v3, data:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v3, :cond_0

    iget v7, v3, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    if-eqz v7, :cond_2

    :try_start_0
    iget-object v7, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    iget-object v8, v3, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v9, 0x0

    iget v10, v3, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    const-string v7, "webkit"

    const-string v8, "***xml downloadable File Writing Sucess *****"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7, v3}, Landroid/webkit/ByteArrayBuilder;->releaseChunk(Landroid/webkit/ByteArrayBuilder$Chunk;)V

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, e:Ljava/io/IOException;
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    const-string v7, "webkit"

    const-string v7, "**** xml download File Writing Failure *****"

    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3           #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v4           #e:Ljava/io/IOException;
    :cond_3
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v7, :cond_6

    sget-object v7, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, type:Ljava/lang/String;
    if-eqz v6, :cond_6

    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v7

    :try_start_1
    iget-object v8, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v8}, Landroid/webkit/ByteArrayBuilder;->getByteSize()I

    move-result v8

    new-array v1, v8, [B

    .local v1, cert:[B
    const/4 v5, 0x0

    .local v5, offset:I
    :goto_2
    iget-object v8, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v8}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v0, :cond_4

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v1}, Landroid/webkit/CertTool;->addCertificate(Landroid/content/Context;Ljava/lang/String;[B)V

    iget-object v8, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v8}, Landroid/webkit/BrowserFrame;->stopLoading()V

    monitor-exit v7

    goto :goto_0

    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v5           #offset:I
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v1       #cert:[B
    .restart local v5       #offset:I
    :cond_4
    :try_start_2
    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v9, 0x0

    iget v10, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v8, v9, v1, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v5, v8

    :cond_5
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v5           #offset:I
    .end local v6           #type:Ljava/lang/String;
    :cond_6
    new-instance v2, Landroid/webkit/PerfChecker;

    invoke-direct {v2}, Landroid/webkit/PerfChecker;-><init>()V

    .local v2, checker:Landroid/webkit/PerfChecker;
    :goto_3
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_0

    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v7, :cond_7

    iget-object v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    new-instance v3, Landroid/webkit/WebViewWorker$CacheData;

    invoke-direct {v3}, Landroid/webkit/WebViewWorker$CacheData;-><init>()V

    .local v3, data:Landroid/webkit/WebViewWorker$CacheData;
    iput-object p0, v3, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    iput-object v0, v3, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x69

    invoke-virtual {v7, v8, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .end local v3           #data:Landroid/webkit/WebViewWorker$CacheData;
    :goto_4
    const-string v7, "res nativeAddData"

    invoke-virtual {v2, v7}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_4
.end method

.method private createNativeResponse()I
    .locals 9

    .prologue
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    move v2, v0

    .local v2, statusCode:I
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->originalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    iget-object v7, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/webkit/LoadListener;->nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result v8

    .local v8, nativeResponse:I
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    new-instance v1, Landroid/webkit/LoadListener$1;

    invoke-direct {v1, p0, v8}, Landroid/webkit/LoadListener$1;-><init>(Landroid/webkit/LoadListener;I)V

    invoke-virtual {v0, v1}, Landroid/net/http/Headers;->getHeaders(Landroid/net/http/Headers$HeaderCallback;)V

    :cond_0
    return v8

    .end local v2           #statusCode:I
    .end local v8           #nativeResponse:I
    :cond_1
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    move v2, v0

    goto :goto_0
.end method

.method private doRedirect()V
    .locals 14

    .prologue
    const v12, 0x1040007

    const/16 v11, -0xc

    const-string v13, "webkit"

    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_2

    const/16 v7, -0x9

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x104013a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v7}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v5

    .local v5, redirectTo:Ljava/lang/String;
    if-eqz v5, :cond_b

    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v3

    .local v3, nativeResponse:I
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v7, v5, v3}, Landroid/webkit/LoadListener;->nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v7, :cond_0

    if-nez v5, :cond_3

    const-string v7, "webkit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Redirection failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v8}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    goto :goto_0

    :cond_3
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x1040363

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, text:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    goto/16 :goto_0

    .end local v6           #text:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v7

    if-nez v7, :cond_8

    new-instance v0, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .local v0, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    iget-wide v7, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6a

    invoke-virtual {v7, v8, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_1
    iput-object v5, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    if-nez v7, :cond_5

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    :cond_5
    const/4 v2, 0x0

    .local v2, fromCache:Z
    iget-object v7, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v7, :cond_6

    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    const/4 v2, 0x1

    :cond_6
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v7, :cond_9

    :try_start_0
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iget v9, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/http/RequestHandle;->setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    if-eqz v2, :cond_0

    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget v8, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    invoke-virtual {v7, v8}, Landroid/net/http/RequestHandle;->setRedirectCount(I)V

    goto/16 :goto_0

    .end local v2           #fromCache:Z
    :cond_8
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6b

    invoke-virtual {v7, v8, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .restart local v2       #fromCache:Z
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "webkit"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v4

    .local v4, network:Landroid/webkit/Network;
    iget-object v7, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    iget-object v9, p0, Landroid/webkit/LoadListener;->mPostData:[B

    invoke-virtual {v4, v7, v8, v9, p0}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_0

    .end local v4           #network:Landroid/webkit/Network;
    :cond_a
    if-nez v2, :cond_0

    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v7}, Landroid/net/http/RequestHandle;->getRedirectCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    goto/16 :goto_0

    .end local v2           #fromCache:Z
    .end local v3           #nativeResponse:I
    :cond_b
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto/16 :goto_0
.end method

.method private getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method private getErrorID()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/LoadListener;->mErrorID:I

    return v0
.end method

.method public static getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;
    .locals 13
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    new-instance v0, Landroid/webkit/LoadListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/webkit/LoadListener;-><init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNativeLoaderCount()I
    .locals 1

    .prologue
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    return v0
.end method

.method private guessMimeType()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v3, 0x1040007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, text:Ljava/lang/String;
    const/16 v2, -0xc

    invoke-direct {p0, v2, v1}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    .end local v1           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "text/html"

    iput-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, newMimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method private guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1}, Landroid/webkit/BrowserFrame;->certificate(Landroid/net/http/SslCertificate;)V

    :cond_0
    return-void
.end method

.method private handleEndData()V
    .locals 8

    .prologue
    const/16 v6, 0x96

    const/16 v4, 0x8c

    const/4 v5, 0x1

    const-string v7, "POST"

    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    sparse-switch v2, :sswitch_data_0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_0

    :sswitch_0
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    :sswitch_1
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v3, 0x133

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v2}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    if-ne v5, v2, :cond_3

    :goto_1
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v3, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v2, v3}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_1

    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_3
    invoke-virtual {p0, v6}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    if-ne v5, v2, :cond_6

    :goto_2
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v3, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v2, v3}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_2

    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_6
    invoke-virtual {p0, v6}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v4}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v4}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_9
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/Network;->getProxyHostname()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .local v1, host:Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3, v4}, Landroid/webkit/HttpAuthHandler;->onReceivedCredentials(Landroid/webkit/LoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #host:Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    iget-object v2, v2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v1, v2

    goto :goto_3

    :cond_b
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/webkit/Network;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v2, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2}, Landroid/webkit/CacheLoader;->load()V

    :goto_4
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x65

    iget-object v4, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x130 -> :sswitch_3
        0x133 -> :sswitch_1
        0x191 -> :sswitch_2
        0x197 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleError(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "description"

    .prologue
    iput p1, p0, Landroid/webkit/LoadListener;->mErrorID:I

    iput-object p2, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->notifyError()V

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    return-void
.end method

.method private handleHeaders(Landroid/net/http/Headers;)V
    .locals 21
    .parameter "headers"

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mCancelled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0xce

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v17

    const/16 v18, 0x6b

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .local v7, contentType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    move/from16 v17, v0

    if-nez v17, :cond_12

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v5

    .local v5, contentLength:J
    const-wide/16 v17, -0x1

    cmp-long v17, v5, v17

    if-eqz v17, :cond_b

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/LoadListener;->mContentLength:J

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/LoadListener;->parseContentTypeHeader(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "text/plain"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/octet-stream"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v4

    .local v4, contentDisposition:Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, url:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_3
    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, newMimeType:Ljava/lang/String;
    if-eqz v15, :cond_5

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .end local v4           #contentDisposition:Ljava/lang/String;
    .end local v5           #contentLength:J
    .end local v15           #newMimeType:Ljava/lang/String;
    .end local v16           #url:Ljava/lang/String;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mUserGesture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const-string v17, "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/xhtml+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v10, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/high16 v18, 0x1

    move-object/from16 v0, v17

    move-object v1, v10

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .local v11, info:Landroid/content/pm/ResolveInfo;
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/BrowserFrame;->stopLoading()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v17

    .end local v10           #i:Landroid/content/Intent;
    .end local v11           #info:Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x191

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x197

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    :cond_7
    const/16 v17, 0x1

    move/from16 v13, v17

    .local v13, mustAuthenticate:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x197

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    const/16 v17, 0x1

    move/from16 v12, v17

    .local v12, isProxyAuthRequest:Z
    :goto_4
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->mAuthFailed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v17

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    const/16 v17, 0x1

    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->mAuthFailed:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v14

    .local v14, network:Landroid/webkit/Network;
    invoke-virtual {v14}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v17

    if-eqz v17, :cond_8

    monitor-enter v14

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->getUsername()Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/Network;->setProxyUsername(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->getPassword()Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/Network;->setProxyPassword(Ljava/lang/String;)V

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v14           #network:Landroid/webkit/Network;
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x191

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getWwwAuthenticate()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/vnd.oma.dd+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/vnd.oma.drm.roap-trigger+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "multipart/related"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/LoadListener;->isDownLoadableMultipartContent(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    :cond_a
    const-string v17, "webkit"

    const-string v18, "****DD or Roap or  OMA multipart related  Mime Type *****"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "webkit"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mime Type :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    move-object/from16 v17, v0

    if-nez v17, :cond_17

    :try_start_2
    new-instance v17, Ljava/io/FileOutputStream;

    const-string v18, "/sdcard/tempfile1.xml"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    const-string v17, "webkit"

    const-string v18, "****DD xml File Creation Sucess *****"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v17

    move-object/from16 v9, v17

    .local v9, e:Ljava/io/FileNotFoundException;
    const-string v17, "webkit"

    const-string v18, "FILE OUTPUT STREAM FAIL FOR CREATE TEMP FILE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v9           #e:Ljava/io/FileNotFoundException;
    .end local v12           #isProxyAuthRequest:Z
    .end local v13           #mustAuthenticate:Z
    .restart local v5       #contentLength:J
    :cond_b
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/LoadListener;->mContentLength:J

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/vnd.wap.xhtml+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "application/xhtml+xml"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/atom+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/rdf+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/rss+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    :cond_e
    const-string v17, "application/vnd.webkit.maybe.feed"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mSynchronous:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "text/xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_10
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    goto/16 :goto_0

    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto/16 :goto_2

    .end local v5           #contentLength:J
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_13
    const/16 v17, 0x0

    move/from16 v13, v17

    goto/16 :goto_3

    .restart local v13       #mustAuthenticate:Z
    :cond_14
    const/16 v17, 0x0

    move/from16 v12, v17

    goto/16 :goto_4

    .restart local v12       #isProxyAuthRequest:Z
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_5

    .restart local v14       #network:Landroid/webkit/Network;
    :catchall_0
    move-exception v17

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v17

    .end local v14           #network:Landroid/webkit/Network;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getProxyAuthenticate()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->setProxy()V

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x12e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x12d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x133

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mNativeLoader:I

    move/from16 v17, v0

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mFromCache:Z

    move/from16 v17, v0

    if-nez v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v17

    const-string v18, "POST"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_1a

    :cond_19
    new-instance v8, Landroid/webkit/WebViewWorker$CacheCreateData;

    invoke-direct {v8}, Landroid/webkit/WebViewWorker$CacheCreateData;-><init>()V

    .local v8, data:Landroid/webkit/WebViewWorker$CacheCreateData;
    move-object/from16 v0, p0

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mListener:Landroid/webkit/LoadListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v8

    iput v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mStatusCode:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object v2, v8

    iput-wide v0, v2, Landroid/webkit/WebViewWorker$CacheCreateData;->mPostId:J

    move-object/from16 v0, p1

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mHeaders:Landroid/net/http/Headers;

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v17

    const/16 v18, 0x67

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .end local v8           #data:Landroid/webkit/WebViewWorker$CacheCreateData;
    :cond_1a
    new-instance v3, Landroid/webkit/WebViewWorker$CacheEncoding;

    invoke-direct {v3}, Landroid/webkit/WebViewWorker$CacheEncoding;-><init>()V

    .local v3, ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheEncoding;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheEncoding;->mListener:Landroid/webkit/LoadListener;

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v17

    const/16 v18, 0x68

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .end local v3           #ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/webkit/LoadListener;->commitHeadersCheckRedirect()V

    goto/16 :goto_0
.end method

.method private handleSslError(Landroid/net/http/SslError;)V
    .locals 2
    .parameter "error"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/Network;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    goto :goto_0
.end method

.method private handleStatus(IIILjava/lang/String;)V
    .locals 1
    .parameter "major"
    .parameter "minor"
    .parameter "code"
    .parameter "reason"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p3, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    iput-object p4, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    goto :goto_0
.end method

.method private ignoreCallbacks()Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x131

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAddData([BI)V
.end method

.method private native nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
.end method

.method private native nativeError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeFinished()V
.end method

.method private native nativeReceivedResponse(I)V
.end method

.method private native nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;
    .locals 20
    .parameter "header"

    .prologue
    if-eqz p1, :cond_a

    const/16 v16, 0x100

    .local v16, posMax:I
    const/4 v14, 0x0

    .local v14, posLen:I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v13, v0

    .local v13, pos:[I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .local v12, headerLen:I
    if-lez v12, :cond_4

    const/16 v17, 0x0

    .local v17, quoted:Z
    const/4 v5, 0x0

    .local v5, i:I
    move v15, v14

    .end local v14           #posLen:I
    .local v15, posLen:I
    :goto_0
    if-ge v5, v12, :cond_3

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    if-nez v17, :cond_0

    const/4 v3, 0x1

    move/from16 v17, v3

    :goto_1
    move v14, v15

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v15, v14

    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_1

    :cond_1
    if-nez v17, :cond_b

    const/4 v4, 0x1

    const-string v6, "Basic"

    const/4 v7, 0x0

    const-string v3, "Basic"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v14, v15, 0x1

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    aput v5, v13, v15

    goto :goto_2

    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    :cond_2
    const/4 v4, 0x1

    const-string v6, "Digest"

    const/4 v7, 0x0

    const-string v3, "Digest"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v14, v15, 0x1

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    aput v5, v13, v15

    goto :goto_2

    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    :cond_3
    move v14, v15

    .end local v5           #i:I
    .end local v15           #posLen:I
    .end local v17           #quoted:Z
    .restart local v14       #posLen:I
    :cond_4
    if-lez v14, :cond_a

    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v14, :cond_7

    const/4 v7, 0x1

    aget v8, v13, v5

    const-string v9, "Digest"

    const/4 v10, 0x0

    const-string v3, "Digest"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    aget v3, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v14, :cond_5

    add-int/lit8 v4, v5, 0x1

    aget v4, v13, v4

    :goto_4
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .local v19, sub:Ljava/lang/String;
    new-instance v18, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v18 .. v19}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .local v18, rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v3, v18

    .end local v5           #i:I
    .end local v12           #headerLen:I
    .end local v13           #pos:[I
    .end local v14           #posLen:I
    .end local v16           #posMax:I
    .end local v18           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v19           #sub:Ljava/lang/String;
    :goto_5
    return-object v3

    .restart local v5       #i:I
    .restart local v12       #headerLen:I
    .restart local v13       #pos:[I
    .restart local v14       #posLen:I
    .restart local v16       #posMax:I
    :cond_5
    move v4, v12

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v14, :cond_a

    const/4 v7, 0x1

    aget v8, v13, v5

    const-string v9, "Basic"

    const/4 v10, 0x0

    const-string v3, "Basic"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_9

    aget v3, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v14, :cond_8

    add-int/lit8 v4, v5, 0x1

    aget v4, v13, v4

    :goto_7
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .restart local v19       #sub:Ljava/lang/String;
    new-instance v18, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v18 .. v19}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .restart local v18       #rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v3, v18

    goto :goto_5

    .end local v18           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v19           #sub:Ljava/lang/String;
    :cond_8
    move v4, v12

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .end local v5           #i:I
    .end local v12           #headerLen:I
    .end local v13           #pos:[I
    .end local v14           #posLen:I
    .end local v16           #posMax:I
    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .restart local v5       #i:I
    .restart local v12       #headerLen:I
    .restart local v13       #pos:[I
    .restart local v15       #posLen:I
    .restart local v16       #posMax:I
    .restart local v17       #quoted:Z
    :cond_b
    move v14, v15

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    goto/16 :goto_2
.end method

.method private sendMessageInternal(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/LoadListener;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static willLoadFromCache(Ljava/lang/String;J)Z
    .locals 2
    .parameter "url"
    .parameter "identifier"

    .prologue
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .local v0, inCache:Z
    :goto_0
    return v0

    .end local v0           #inCache:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method attachRequestHandle(Landroid/net/http/RequestHandle;)V
    .locals 0
    .parameter "requestHandle"

    .prologue
    iput-object p1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    return-void
.end method

.method authCredentialsInvalid()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isDigest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getStale()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    :cond_0
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    return-void
.end method

.method public cancelled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    return v0
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    const/16 v0, 0xaa

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    return-void
.end method

.method checkCache(Ljava/util/Map;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    invoke-static {v1, v2, v3, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    .local v0, result:Landroid/webkit/CacheManager$CacheResult;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    iput-boolean v4, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    if-eqz v0, :cond_1

    new-instance v1, Landroid/webkit/CacheLoader;

    invoke-direct {v1, p0, v0}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    const-string v1, "if-none-match"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "if-modified-since"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1}, Landroid/webkit/CacheLoader;->load()V

    :goto_0
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    move v1, v5

    :goto_1
    return v1

    :cond_0
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1
.end method

.method contentLength()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mContentLength:J

    return-wide v0
.end method

.method public data([BI)V
    .locals 4
    .parameter "data"
    .parameter "length"

    .prologue
    const/4 v0, 0x0

    .local v0, sendMessage:Z
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->isEmpty()Z

    move-result v0

    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method detachRequestHandle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    return-void
.end method

.method downloadFile()V
    .locals 7

    .prologue
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    return-void
.end method

.method public endData()V
    .locals 1

    .prologue
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    return-void
.end method

.method public error(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "description"

    .prologue
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/webkit/LoadListener;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFrame()Landroid/webkit/BrowserFrame;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method getWebAddress()Landroid/net/WebAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    return-object v0
.end method

.method handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "password"

    .prologue
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x78

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/http/Headers;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    goto :goto_0

    :sswitch_1
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    if-eqz v5, :cond_2

    iput-boolean v7, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    iput-boolean v6, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    iget-object v5, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v5}, Landroid/webkit/ByteArrayBuilder;->getFirstChunkEx()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_1

    iget v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v5, v6}, Landroid/webkit/WebFeedSniffer;->mimeType([BI)Ljava/lang/String;

    move-result-object v4

    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_1

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .end local v4           #type:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    const/16 v5, 0x6e

    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_2
    iget v5, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v5, :cond_0

    invoke-direct {p0}, Landroid/webkit/LoadListener;->ignoreCallbacks()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    goto :goto_0

    :sswitch_2
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    if-eqz v5, :cond_3

    iput-boolean v7, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    iput-boolean v6, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    iget-object v5, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    invoke-virtual {p0, v8}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/webkit/LoadListener;->handleEndData()V

    goto :goto_0

    :sswitch_3
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    if-eqz v5, :cond_4

    iput-boolean v7, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    iput-boolean v6, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    iget-object v5, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    const/16 v5, 0x82

    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0

    :cond_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iput-boolean v6, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    invoke-direct {p0}, Landroid/webkit/LoadListener;->doRedirect()V

    goto/16 :goto_0

    :sswitch_5
    iput-boolean v7, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    const/16 v5, 0x8c

    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, contMsg:Landroid/os/Message;
    invoke-virtual {p0, v8}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, stopMsg:Landroid/os/Message;
    iget-object v5, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v1           #contMsg:Landroid/os/Message;
    .end local v3           #stopMsg:Landroid/os/Message;
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .local v2, status:Ljava/util/HashMap;
    const-string v5, "major"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v5, "minor"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v5, "code"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v5, "reason"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v5}, Landroid/webkit/LoadListener;->handleStatus(IIILjava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #status:Ljava/util/HashMap;
    :sswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/http/SslCertificate;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/http/SslError;

    invoke-direct {p0, v5}, Landroid/webkit/LoadListener;->handleSslError(Landroid/net/http/SslError;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
        0x78 -> :sswitch_2
        0x82 -> :sswitch_3
        0x8c -> :sswitch_4
        0x96 -> :sswitch_5
        0xa0 -> :sswitch_6
        0xaa -> :sswitch_7
        0xb4 -> :sswitch_8
    .end sparse-switch
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .locals 3
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/Network;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v2}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    :cond_2
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method handleSslErrorResponse(Z)V
    .locals 1
    .parameter "proceed"

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    :cond_1
    return-void
.end method

.method public headers(Landroid/net/http/Headers;)V
    .locals 5
    .parameter "headers"

    .prologue
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x64

    invoke-virtual {p0, v2, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDownLoadableMultipartContent(Ljava/lang/String;)Z
    .locals 12
    .parameter "contentType"

    .prologue
    const/16 v11, 0xd

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x20

    const-string v5, "type="

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, bPos:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, subType:Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, bValpos:I
    add-int/lit8 v2, v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .local v1, bValEndPos:I
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v9

    if-ne v1, v5, :cond_2

    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_5

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :cond_5
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_6

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, bValue:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    move v5, v8

    .end local v1           #bValEndPos:I
    .end local v2           #bValpos:I
    .end local v3           #bValue:Ljava/lang/String;
    .end local v4           #subType:Ljava/lang/String;
    :goto_2
    return v5

    .restart local v1       #bValEndPos:I
    .restart local v2       #bValpos:I
    .restart local v3       #bValue:Ljava/lang/String;
    .restart local v4       #subType:Ljava/lang/String;
    :sswitch_0
    move v5, v9

    goto :goto_2

    .end local v1           #bValEndPos:I
    .end local v2           #bValpos:I
    .end local v3           #bValue:Ljava/lang/String;
    .end local v4           #subType:Ljava/lang/String;
    :cond_7
    move v5, v8

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64a50f9 -> :sswitch_0
        0x12fac3b8 -> :sswitch_0
        0x3e4a533e -> :sswitch_0
        0x67c1d54c -> :sswitch_0
        0x6e088824 -> :sswitch_0
    .end sparse-switch
.end method

.method isSynchronous()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    return v0
.end method

.method loadSynchronousMessages()V
    .locals 2

    .prologue
    :goto_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "username"
    .parameter "password"

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpAuthHeader;->setUsername(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p2}, Landroid/net/http/HttpAuthHeader;->setPassword(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getScheme()I

    move-result v9

    .local v9, scheme:I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .local v1, isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/http/RequestHandle;->setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #isProxy:Z
    :cond_2
    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .restart local v1       #isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v4

    .local v4, realm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    .local v5, nonce:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getQop()Ljava/lang/String;

    move-result-object v6

    .local v6, qop:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    .local v7, algorithm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getOpaque()Ljava/lang/String;

    move-result-object v8

    .local v8, opaque:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/net/http/RequestHandle;->setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method notifyError()V
    .locals 3

    .prologue
    iget v1, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    .local v0, description:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Landroid/webkit/LoadListener;->nativeError(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .end local v0           #description:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method originalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method parseContentTypeHeader(Ljava/lang/String;)V
    .locals 7
    .parameter "contentType"

    .prologue
    const/16 v6, 0x3b

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, i:I
    if-ltz v1, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, j:I
    if-lez v2, :cond_3

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    :goto_0
    iget-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .end local v2           #j:I
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    :try_start_0
    sget-object v4, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v5, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #i:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_2
    :goto_2
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    return-void

    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_3
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    goto :goto_0

    .end local v2           #j:I
    :cond_4
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_1

    .restart local v3       #m:Ljava/util/regex/Matcher;
    :cond_5
    :try_start_1
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v3           #m:Ljava/util/regex/Matcher;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto :goto_2
.end method

.method pauseLoad(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->pauseRequest(Z)V

    :cond_0
    return-void
.end method

.method postIdentifier()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    return-wide v0
.end method

.method proxyAuthenticate()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method realm()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method resetCancel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    return-void
.end method

.method setCacheLoader(Landroid/webkit/CacheLoader;)V
    .locals 1
    .parameter "c"

    .prologue
    iput-object p1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    return-void
.end method

.method setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 0
    .parameter "method"
    .parameter
    .parameter "postData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    iput-object p3, p0, Landroid/webkit/LoadListener;->mPostData:[B

    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/net/ParseException;
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Landroid/net/ParseException;
    :cond_1
    iput-object p1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method sslError()Landroid/net/http/SslError;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    return-object v0
.end method

.method public status(IIILjava/lang/String;)V
    .locals 4
    .parameter "majorVersion"
    .parameter "minorVersion"
    .parameter "code"
    .parameter "reasonPhrase"

    .prologue
    const-string v3, ""

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, status:Ljava/util/HashMap;
    const-string v1, "major"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "minor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reason"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v1}, Landroid/webkit/ByteArrayBuilder;->clear()V

    const-string v1, ""

    iput-object v3, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    const-string v1, ""

    iput-object v3, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    const-string v1, ""

    iput-object v3, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    return-void
.end method

.method tearDown()V
    .locals 10

    .prologue
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v8, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v8}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .local v8, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v0, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    iget-wide v0, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v0, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, v8}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v8           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_0
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, ex:Ljava/io/IOException;
    const-string v0, "dd or drm file"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " exception when closing the file during download : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v9           #ex:Ljava/io/IOException;
    :cond_2
    iget v0, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v0, :cond_0

    new-instance v7, Landroid/webkit/PerfChecker;

    invoke-direct {v7}, Landroid/webkit/PerfChecker;-><init>()V

    .local v7, checker:Landroid/webkit/PerfChecker;
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    const-string v0, "res nativeFinished"

    invoke-virtual {v7, v0}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    goto :goto_2
.end method

.method transferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method url()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    return-object v0
.end method
