.class public Landroid/net/http/HttpsConnection;
.super Landroid/net/http/Connection;
.source "HttpsConnection.java"


# static fields
.field private static mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mAborted:Z

.field private mProxyHost:Lorg/apache/http/HttpHost;

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Landroid/net/http/HttpsConnection;->initializeEngine(Ljava/io/File;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 2
    .parameter "context"
    .parameter "host"
    .parameter "proxy"
    .parameter "requestFeeder"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p4}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    iput-object p3, p0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    return-void
.end method

.method private static declared-synchronized getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    const-class v0, Landroid/net/http/HttpsConnection;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initializeEngine(Ljava/io/File;)V
    .locals 7
    .parameter "sessionDir"

    .prologue
    const/4 v0, 0x0

    .local v0, cache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;
    if-eqz p0, :cond_0

    :try_start_0
    const-string v4, "HttpsConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caching SSL sessions in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    move-result-object v0

    :cond_0
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-direct {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;-><init>()V

    .local v2, sslContext:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Landroid/net/http/HttpsConnection$1;

    invoke-direct {v5}, Landroid/net/http/HttpsConnection$1;-><init>()V

    aput-object v5, v3, v4

    .local v3, trustManagers:[Ljavax/net/ssl/TrustManager;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->setPersistentCache(Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V

    const-class v4, Landroid/net/http/HttpsConnection;

    monitor-enter v4
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    sput-object v5, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2           #sslContext:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
    .end local v3           #trustManagers:[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/security/KeyManagementException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .end local v1           #e:Ljava/security/KeyManagementException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method closeConnection()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "https"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .locals 30
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v22, 0x0

    .local v22, sslSock:Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    const/16 v17, 0x0

    .local v17, proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    const/16 v20, 0x0

    .local v20, proxySock:Ljava/net/Socket;
    :try_start_0
    new-instance v21, Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v20           #proxySock:Ljava/net/Socket;
    .local v21, proxySock:Ljava/net/Socket;
    const v26, 0xea60

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v18, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .end local v17           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .local v18, proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    :try_start_2
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v16, params:Lorg/apache/http/params/HttpParams;
    const/16 v26, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    const/16 v24, 0x0

    .local v24, statusLine:Lorg/apache/http/StatusLine;
    const/16 v23, 0x0

    .local v23, statusCode:I
    new-instance v13, Landroid/net/http/Headers;

    invoke-direct {v13}, Landroid/net/http/Headers;-><init>()V

    .local v13, headers:Landroid/net/http/Headers;
    :try_start_3
    new-instance v19, Lorg/apache/http/message/BasicHttpRequest;

    const-string v26, "CONNECT"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v19, proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/message/BasicHttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .local v5, arr$:[Lorg/apache/http/Header;
    array-length v15, v5

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    if-ge v14, v15, :cond_2

    aget-object v11, v5, v14

    .local v11, h:Lorg/apache/http/Header;
    invoke-interface {v11}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .local v12, headerName:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_3
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v11           #h:Lorg/apache/http/Header;
    .end local v12           #headerName:Ljava/lang/String;
    .end local v13           #headers:Landroid/net/http/Headers;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #params:Lorg/apache/http/params/HttpParams;
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v19           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v21           #proxySock:Ljava/net/Socket;
    .end local v23           #statusCode:I
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .restart local v17       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v20       #proxySock:Ljava/net/Socket;
    :catch_0
    move-exception v26

    move-object/from16 v8, v26

    .local v8, e:Ljava/io/IOException;
    :goto_1
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    :cond_0
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .local v10, errorMessage:Ljava/lang/String;
    if-nez v10, :cond_1

    const-string v10, "failed to establish a connection to the proxy"

    :cond_1
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v17           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v20           #proxySock:Ljava/net/Socket;
    .restart local v5       #arr$:[Lorg/apache/http/Header;
    .restart local v13       #headers:Landroid/net/http/Headers;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v16       #params:Lorg/apache/http/params/HttpParams;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v19       #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .restart local v21       #proxySock:Ljava/net/Socket;
    .restart local v23       #statusCode:I
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    :cond_2
    :try_start_4
    invoke-virtual/range {v18 .. v19}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    invoke-virtual/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    :cond_3
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_4
    .catch Lorg/apache/http/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v23

    const/16 v26, 0xc8

    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    const/16 v26, 0xc8

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    :try_start_5
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v23

    .end local v23           #statusCode:I
    move-object/from16 v0, v23

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v22, v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v13           #headers:Landroid/net/http/Headers;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #params:Lorg/apache/http/params/HttpParams;
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v19           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v21           #proxySock:Ljava/net/Socket;
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    :goto_2
    invoke-static {}, Landroid/net/http/CertificateChainValidator;->getInstance()Landroid/net/http/CertificateChainValidator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/CertificateChainValidator;->doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v9

    .local v9, error:Landroid/net/http/SslError;
    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    const/16 v27, 0x1

    :try_start_6
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->handleSslErrorRequest(Landroid/net/http/SslError;)Z

    move-result v6

    .local v6, canHandle:Z
    if-nez v6, :cond_d

    new-instance v26, Ljava/io/IOException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to handle "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .end local v6           #canHandle:Z
    .end local v9           #error:Landroid/net/http/SslError;
    .restart local v13       #headers:Landroid/net/http/Headers;
    .restart local v16       #params:Lorg/apache/http/params/HttpParams;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21       #proxySock:Ljava/net/Socket;
    .restart local v23       #statusCode:I
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v26

    move-object/from16 v8, v26

    .local v8, e:Lorg/apache/http/ParseException;
    invoke-virtual {v8}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_4

    const-string v10, "failed to send a CONNECT request"

    :cond_4
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .end local v8           #e:Lorg/apache/http/ParseException;
    .end local v10           #errorMessage:Ljava/lang/String;
    :catch_2
    move-exception v26

    move-object/from16 v8, v26

    .local v8, e:Lorg/apache/http/HttpException;
    invoke-virtual {v8}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_5

    const-string v10, "failed to send a CONNECT request"

    :cond_5
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .end local v8           #e:Lorg/apache/http/HttpException;
    .end local v10           #errorMessage:Ljava/lang/String;
    :catch_3
    move-exception v26

    move-object/from16 v8, v26

    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_6

    const-string v10, "failed to send a CONNECT request"

    :cond_6
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v23           #statusCode:I
    .restart local v5       #arr$:[Lorg/apache/http/Header;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v19       #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    :catch_4
    move-exception v26

    move-object/from16 v8, v26

    .restart local v8       #e:Ljava/io/IOException;
    if-eqz v22, :cond_7

    throw v22

    :cond_7
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_8

    const-string v10, "failed to create an SSL socket"

    :cond_8
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v23       #statusCode:I
    :cond_9
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v25

    .local v25, version:Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v27

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v28

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v23

    move-object/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/net/http/EventHandler;->endData()V

    invoke-virtual/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    const/16 v26, 0x0

    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v13           #headers:Landroid/net/http/Headers;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #params:Lorg/apache/http/params/HttpParams;
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v19           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v21           #proxySock:Ljava/net/Socket;
    .end local v23           #statusCode:I
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .end local v25           #version:Lorg/apache/http/ProtocolVersion;
    :goto_3
    return-object v26

    :cond_a
    :try_start_7
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v22, v0

    const/16 v26, 0x7530

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    new-instance v26, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v28

    invoke-direct/range {v26 .. v28}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v26

    move-object/from16 v8, v26

    .restart local v8       #e:Ljava/io/IOException;
    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLSocket;->close()V

    :cond_b
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_c

    const-string v10, "failed to create an SSL socket"

    :cond_c
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v9       #error:Landroid/net/http/SslError;
    :catchall_0
    move-exception v27

    :try_start_8
    monitor-exit v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v27

    .restart local v6       #canHandle:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v27, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v27, :cond_e

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    const-wide/32 v28, 0x927c0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/Object;->wait(J)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mAborted:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6

    :cond_e
    :goto_4
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mAborted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_f

    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLSocket;->close()V

    new-instance v27, Landroid/net/http/SSLConnectionClosedByUserException;

    const-string v28, "connection closed by the user"

    invoke-direct/range {v27 .. v28}, Landroid/net/http/SSLConnectionClosedByUserException;-><init>(Ljava/lang/String;)V

    throw v27

    :catchall_1
    move-exception v27

    monitor-exit v26
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v27

    :cond_f
    :try_start_c
    monitor-exit v26
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v6           #canHandle:Z
    :cond_10
    new-instance v7, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v7}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .local v7, conn:Landroid/net/http/AndroidHttpClientConnection;
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v16, params:Lorg/apache/http/params/BasicHttpParams;
    const-string v26, "http.socket.buffer-size"

    const/16 v27, 0x2000

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v26, v7

    goto/16 :goto_3

    .end local v7           #conn:Landroid/net/http/AndroidHttpClientConnection;
    .end local v16           #params:Lorg/apache/http/params/BasicHttpParams;
    .restart local v6       #canHandle:Z
    :catch_6
    move-exception v27

    goto :goto_4

    .end local v6           #canHandle:Z
    .end local v9           #error:Landroid/net/http/SslError;
    .restart local v17       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21       #proxySock:Ljava/net/Socket;
    :catch_7
    move-exception v26

    move-object/from16 v8, v26

    move-object/from16 v20, v21

    .end local v21           #proxySock:Ljava/net/Socket;
    .restart local v20       #proxySock:Ljava/net/Socket;
    goto/16 :goto_1

    .end local v17           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v20           #proxySock:Ljava/net/Socket;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21       #proxySock:Ljava/net/Socket;
    :catch_8
    move-exception v26

    move-object/from16 v8, v26

    move-object/from16 v20, v21

    .end local v21           #proxySock:Ljava/net/Socket;
    .restart local v20       #proxySock:Ljava/net/Socket;
    move-object/from16 v17, v18

    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v17       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    goto/16 :goto_1
.end method

.method restartConnection(Z)V
    .locals 3
    .parameter "proceed"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    iput-object p1, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
