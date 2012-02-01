.class public Landroid/drm/mobile2/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Landroid/drm/mobile2/HttpConstants;


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final DEBUG:Z = false

.field private static final HDR_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HDR_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HDR_KEY_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final HDR_VALUE_ACCEPT:Ljava/lang/String; = "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String; = null

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "DrmLicenseHttpManger"

.field private static final TEMP:Ljava/lang/String; = "\u0000"

.field private static client:Landroid/net/http/AndroidHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/drm/mobile2/HttpManager;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/drm/mobile2/HttpManager;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static closeHttpConnection()Z
    .locals 2

    .prologue
    sget-object v0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "DrmLicenseHttpManger"

    const-string v1, "Android HTTP CLient is already NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 7

    .prologue
    const-string v6, "DrmLicenseHttpManger"

    invoke-static {}, Landroid/drm/mobile2/HttpConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .local v3, userAgent:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    invoke-static {}, Landroid/drm/mobile2/HttpConfig;->getHttpSocketTimeout()I

    move-result v2

    .local v2, soTimeout:I
    const-string v4, "DrmLicenseHttpManger"

    const/4 v4, 0x3

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "DrmLicenseHttpManger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UA="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-object v0
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Landroid/drm/mobile2/HttpManager;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Landroid/drm/mobile2/HttpManager;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "DrmLicenseHttpManger"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I
    .locals 21
    .parameter "context"
    .parameter "session"
    .parameter "url"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .parameter "body"
    .parameter "header"
    .parameter "headerlen"
    .parameter "bodylen"
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-nez p2, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "URL must not be null."

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0
    .restart local p1
    :cond_0
    const/16 v16, 0x0

    .local v16, multiPart:Z
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v17, out:Ljava/io/ByteArrayOutputStream;
    const-string v4, "DrmLicenseHttpManger"

    const-string v5, "testing the Httpconnetion"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    .local v19, strheader:Ljava/lang/StringBuilder;
    const-string v4, "DrmLicenseHttpManger"

    const-string v5, "httpConnection: params list"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ttoken\t\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\turl\t\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tmethod\t\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_1

    const-string v6, "POST"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tisProxySet\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tproxyHost\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tproxyPort\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tbody\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\theader\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_3

    if-eqz p7, :cond_3

    const/4 v4, 0x0

    const/16 v5, 0x3e

    const-string v6, "</roap:"

    move-object/from16 v0, p7

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p7

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p7

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p7

    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t junk removed body\t= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v6, 0x0

    .local v6, status:Lorg/apache/http/StatusLine;
    :try_start_0
    new-instance v4, Ljava/net/URI;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .local v4, hostUrl:Ljava/net/URI;
    new-instance v7, Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    .end local v4           #hostUrl:Ljava/net/URI;
    const-string v8, "http"

    invoke-direct {v7, v5, v4, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .local v7, target:Lorg/apache/http/HttpHost;
    invoke-static {}, Landroid/drm/mobile2/HttpManager;->createHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    sput-object v4, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    const/4 v4, 0x0

    .local v4, req:Lorg/apache/http/HttpRequest;
    const-string v4, "DrmLicenseHttpManger"

    .end local v4           #req:Lorg/apache/http/HttpRequest;
    const-string v5, "extracting the headers"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p3, :pswitch_data_0

    const-string p0, "DrmLicenseHttpManger"

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown HTTP method: "

    .end local p2
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Must be one of POST["

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] or GET["

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]."

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/16 p0, -0x1

    sget-object p1, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p1, :cond_8

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 p0, 0x1

    move-object/from16 p2, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p0

    move/from16 p0, v16

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local v16           #multiPart:Z
    .end local p4
    .end local p5
    .end local p6
    .end local p7
    .end local p8
    .end local p9
    .end local p10
    .local p0, multiPart:Z
    :goto_2
    return p4

    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, url:Ljava/lang/String;
    .local p3, method:I
    .restart local p4
    .restart local p5
    .restart local p6
    .restart local p7
    .restart local p8
    .restart local p9
    .restart local p10
    :cond_1
    const/4 v6, 0x1

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_2

    const-string v6, "GET"

    goto/16 :goto_0

    :cond_2
    const-string v6, "UNKNOWN"

    goto/16 :goto_0

    :cond_3
    const-string v4, "DrmLicenseHttpManger"

    const-string v5, "body is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    :pswitch_0
    :try_start_1
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .local v5, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance p2, Lorg/apache/http/entity/BasicHttpEntity;

    .end local p2           #url:Ljava/lang/String;
    invoke-direct/range {p2 .. p2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .local p2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    if-eqz p7, :cond_4

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v4, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    int-to-long v8, v4

    move-object/from16 v0, p2

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    :cond_4
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object/from16 p2, v5

    .local p2, req:Lorg/apache/http/HttpRequest;
    move-object/from16 v4, p2

    .end local v5           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local p2           #req:Lorg/apache/http/HttpRequest;
    .local v4, req:Lorg/apache/http/HttpRequest;
    :goto_3
    sget-object p2, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p2 .. p2}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    .local p2, params:Lorg/apache/http/params/HttpParams;
    if-eqz p4, :cond_5

    const-string v5, "DrmLicenseHttpManger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "proxy is set:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lorg/apache/http/HttpHost;

    move-object v0, v5

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    :cond_5
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string p2, "DrmLicenseHttpManger"

    .end local p2           #params:Lorg/apache/http/params/HttpParams;
    const-string v5, "GET Params"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Accept-Language"

    sget-object v5, Landroid/drm/mobile2/HttpManager;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Accept-Encoding"

    const-string v5, "gzip"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1

    move/from16 v0, p3

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const-string p2, "Accept"

    const-string v5, "application/vnd.oma.drm.roap-trigger+xml"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Cookie"

    const-string v5, "phone=919880438077"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string p2, "DrmLicenseHttpManger"

    const-string v5, " Before Execute"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p2

    move-object v1, v7

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v18

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local v18, status:Lorg/apache/http/StatusLine;
    :try_start_2
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .local v9, statusCode:I
    const-string p2, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xc8

    move v0, v9

    move/from16 v1, p2

    if-eq v0, v1, :cond_c

    const/16 p2, 0x12d

    move v0, v9

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    const/16 p2, 0x12e

    move v0, v9

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    :cond_6
    const-string p2, "Location"

    .local p2, locationHeader:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, locationHeaderValue:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, result:I
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    .end local p2           #locationHeader:Ljava/lang/String;
    if-eqz p2, :cond_7

    const-string p2, "Location"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p2

    .local p2, locHeader:Lorg/apache/http/Header;
    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .end local p2           #locHeader:Lorg/apache/http/Header;
    :cond_7
    const-string p2, "DrmLicenseHttpManger"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locHeader value :"

    .end local v5           #result:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DrmLicenseHttpManger"

    const-string v4, "We got 302 making another connection"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-static/range {v4 .. v15}, Landroid/drm/mobile2/HttpManager;->httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local v9           #statusCode:I
    move-result p0

    .local p0, result:I
    sget-object p1, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p1           #session:I
    if-eqz p1, :cond_a

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #result:I
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 p0, 0x1

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p0

    move/from16 p0, v16

    .end local v16           #multiPart:Z
    .local p0, multiPart:Z
    goto/16 :goto_2

    .local v6, status:Lorg/apache/http/StatusLine;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, url:Ljava/lang/String;
    .local p3, method:I
    :pswitch_1
    :try_start_3
    const-string v4, "DrmLicenseHttpManger"

    const-string v5, "GET MEthod"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v4, req:Lorg/apache/http/HttpRequest;
    goto/16 :goto_3

    .end local v4           #req:Lorg/apache/http/HttpRequest;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #session:I
    .end local p2           #url:Ljava/lang/String;
    :cond_8
    move-object/from16 p2, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p0

    move/from16 p0, v16

    .end local v16           #multiPart:Z
    .local p0, multiPart:Z
    goto/16 :goto_2

    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v4       #req:Lorg/apache/http/HttpRequest;
    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p3, method:I
    :cond_9
    const-string p2, "Content-Type"

    const-string v5, "application/vnd.oma.drm.roap-pdu+xml"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_4

    .end local v4           #req:Lorg/apache/http/HttpRequest;
    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #session:I
    :catch_0
    move-exception p0

    move-object/from16 p3, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .end local p5
    .end local p6
    .end local p7
    .end local p8
    .end local p9
    .end local p10
    .local p0, e:Ljava/net/URISyntaxException;
    .local p1, multiPart:Z
    :goto_5
    :try_start_4
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #e:Ljava/net/URISyntaxException;
    if-eqz p0, :cond_19

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 p0, 0x1

    move-object/from16 v20, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .local v20, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v20

    .end local v20           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_2

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .local v6, locationHeaderValue:Ljava/lang/String;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p0, result:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5
    .restart local p6
    .restart local p7
    .restart local p8
    .restart local p9
    .restart local p10
    :cond_a
    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .restart local p2       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p0

    move/from16 p0, v16

    .end local v16           #multiPart:Z
    .local p0, multiPart:Z
    goto/16 :goto_2

    .end local v6           #locationHeaderValue:Ljava/lang/String;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .local v4, response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p3, method:I
    :cond_b
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #session:I
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HTTP error: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local v9           #statusCode:I
    .end local p8
    :catch_1
    move-exception p0

    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .local p1, multiPart:Z
    goto :goto_5

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .restart local p0       #context:Landroid/content/Context;
    .local p1, session:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p8
    :cond_c
    const-string p0, "DrmLicenseHttpManger"

    .end local p0           #context:Landroid/content/Context;
    const-string p2, "After Execute"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    .local p0, a:[Lorg/apache/http/Header;
    new-instance p8, Ljava/lang/StringBuilder;

    .end local p8
    invoke-direct/range {p8 .. p8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p8, strheader:Ljava/lang/StringBuilder;
    const/16 p2, 0x0

    .local p2, i:I
    move/from16 p3, v16

    .end local v16           #multiPart:Z
    .end local p4           #isProxySet:Z
    .end local p5
    .end local p6
    .local p3, multiPart:Z
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p4, v0

    move/from16 v0, p2

    move/from16 v1, p4

    if-ge v0, v1, :cond_e

    aget-object p4, p0, p2

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p4

    const-string p5, "Content-Type"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_d

    const-string p4, "DrmLicenseHttpManger"

    const-string p5, "Header is Content-Type"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object p4, p0, p2

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p4

    const-string p5, "multipart/related"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_d

    const/16 p3, 0x1

    const-string p4, "DrmLicenseHttpManger"

    const-string p5, "MultiPart True"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    aget-object p4, p0, p2

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ":"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    aget-object p5, p0, p2

    invoke-interface/range {p5 .. p5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p5

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "\r\n"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "DrmLicenseHttpManger"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct/range {p5 .. p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "headers are:"

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    aget-object p6, p0, p2

    invoke-interface/range {p6 .. p6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    aget-object p6, p0, p2

    invoke-interface/range {p6 .. p6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p6

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_6

    :cond_e
    if-eqz p3, :cond_f

    :try_start_7
    const-string p0, "Transfer-Encoding:chunked"

    .end local p0           #a:[Lorg/apache/http/Header;
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\r\n"

    .end local p2           #i:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string p0, "DrmLicenseHttpManger"

    const-string p2, "######sending headers 1st..######"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_10

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V

    .end local v7           #target:Lorg/apache/http/HttpHost;
    const-string p0, "DrmLicenseHttpManger"

    const-string p2, "######headers sent 1st..######"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .local p0, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    .local p2, inputstream:Ljava/io/InputStream;
    sget p4, Landroid/drm/mobile2/HttpConfig;->MAX_DATA_LEN:I

    move/from16 v0, p4

    new-array v0, v0, [B

    move-object/from16 p7, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .local p7, res:[B
    if-eqz p0, :cond_1d

    :try_start_8
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result p4

    if-eqz p4, :cond_13

    const/16 p4, 0x0

    .end local p9
    .local p4, n:I
    :goto_7
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p4

    move-object/from16 v0, v17

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 p5, -0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_12

    const-string p5, "DrmLicenseHttpManger"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "chunked data:bytes read sofar"

    move-object/from16 v0, p6

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p5

    move-object/from16 v0, p5

    array-length v0, v0

    move v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p4           #n:I
    .end local p7           #res:[B
    .end local p10
    :catchall_0
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    :goto_8
    if-eqz p0, :cond_11

    :try_start_9
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_11
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    :catch_2
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_5

    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local p0       #entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .local p4, n:I
    .restart local p7       #res:[B
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    .restart local p10
    :cond_12
    :try_start_a
    const-string p4, "DrmLicenseHttpManger"

    .end local p4           #n:I
    const-string p5, "Last chunked data:"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, "DrmLicenseHttpManger"

    const-string p5, " sending last chunk data"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/16 p1, 0x0

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_b
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p7           #res:[B
    .end local p10
    :goto_9
    if-eqz p0, :cond_1b

    :try_start_c
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    move-object/from16 p0, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .local p0, out:Ljava/io/ByteArrayOutputStream;
    :goto_a
    sget-object p1, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p1, :cond_1a

    sget-object p1, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 p1, 0x1

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move/from16 p4, p1

    move-object/from16 p1, p0

    .end local p0           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, p3

    .end local p3           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p3, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    goto/16 :goto_2

    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .restart local p7       #res:[B
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    .restart local p9
    .restart local p10
    :cond_13
    :try_start_d
    const-string p4, "DrmLicenseHttpManger"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct/range {p5 .. p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "content length:"

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p9

    .end local p9
    move-object/from16 v0, p5

    move-wide/from16 v1, p9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p4

    const-wide/16 p9, 0x0

    cmp-long p4, p4, p9

    if-lez p4, :cond_1c

    const-string p4, "DrmLicenseHttpManger"

    const-string p5, "content length is present"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p4, 0x0

    .local p4, n1:I
    const/16 p5, 0x0

    .local p5, offset:I
    const/16 p6, 0x1

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p10
    .local p6, progress:I
    :cond_14
    :goto_b
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p4

    const/16 p9, -0x1

    move/from16 v0, p4

    move/from16 v1, p9

    if-eq v0, v1, :cond_16

    add-int p5, p5, p4

    const/16 p9, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p7

    move/from16 v2, p9

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz p3, :cond_15

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p9

    move-wide/from16 v0, p9

    long-to-int v0, v0

    move/from16 p9, v0

    div-int/lit8 p9, p9, 0xa

    mul-int p9, p9, p6

    move/from16 v0, p5

    move/from16 v1, p9

    if-lt v0, v1, :cond_14

    add-int/lit8 p6, p6, 0x1

    const-string p9, "DrmLicenseHttpManger"

    new-instance p10, Ljava/lang/StringBuilder;

    invoke-direct/range {p10 .. p10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending part "

    move-object/from16 v0, p10

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p10

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p10

    invoke-virtual/range {p10 .. p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    invoke-static/range {p9 .. p10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p9

    move-object/from16 v0, p9

    array-length v0, v0

    move v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_b

    :cond_15
    const-string p9, "DrmLicenseHttpManger"

    const-string p10, "Not MultiPartData"

    invoke-static/range {p9 .. p10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_16
    const-string p5, "DrmLicenseHttpManger"

    .end local p5           #offset:I
    new-instance p6, Ljava/lang/StringBuilder;

    .end local p6           #progress:I
    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "data read finished:(int)entity.getContentLength()"

    .end local p7           #res:[B
    invoke-virtual/range {p6 .. p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p9

    move-wide/from16 v0, p9

    long-to-int v0, v0

    move/from16 p7, v0

    invoke-virtual/range {p6 .. p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p5, "DrmLicenseHttpManger"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "data read finished:(int)entity.getContentLength()"

    invoke-virtual/range {p6 .. p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4           #n1:I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, "DrmLicenseHttpManger"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct/range {p5 .. p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "data read finished:(int)entity.getContentLength()"

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p6

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p5, "NO NEED TO SEND DATA NOW DATA HAS BEEN SENT ALREADY"

    invoke-virtual/range {p4 .. p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez p3, :cond_17

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p4

    move-wide/from16 v0, p4

    long-to-int v0, v0

    move v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_c
    const/16 p1, 0x0

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_e
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_9

    :catchall_1
    move-exception p2

    goto/16 :goto_8

    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .local p1, session:I
    :cond_17
    :try_start_f
    const-string p4, "DrmLicenseHttpManger"

    const-string p5, " MultiPartData already sent to the engine so sending last \r\n to engine"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_c

    .end local v9           #statusCode:I
    .end local v18           #status:Lorg/apache/http/StatusLine;
    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    .end local p1           #session:I
    .end local p2           #inputstream:Ljava/io/InputStream;
    .local v6, status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .local p8, header:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_3
    move-exception p0

    move-object/from16 p3, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9
    .end local p10
    .local p0, e:Ljava/lang/IllegalStateException;
    .local p1, multiPart:Z
    :goto_d
    :try_start_10
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #e:Ljava/lang/IllegalStateException;
    if-eqz p0, :cond_19

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 p0, 0x1

    move-object/from16 v20, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .restart local v20       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v20

    .end local v20           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_2

    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_4
    move-exception p0

    move-object/from16 p3, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9
    .end local p10
    .local p0, e:Ljava/lang/IllegalArgumentException;
    .local p1, multiPart:Z
    :goto_e
    :try_start_11
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #e:Ljava/lang/IllegalArgumentException;
    if-eqz p0, :cond_19

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 p0, 0x1

    move-object/from16 v20, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .restart local v20       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v20

    .end local v20           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_2

    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_5
    move-exception p0

    move-object/from16 p3, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9
    .end local p10
    .local p0, e:Ljava/net/SocketException;
    .local p1, multiPart:Z
    :goto_f
    :try_start_12
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #e:Ljava/net/SocketException;
    if-eqz p0, :cond_19

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 p0, 0x1

    move-object/from16 v20, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .restart local v20       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v20

    .end local v20           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_2

    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_6
    move-exception p0

    move-object/from16 p3, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9
    .end local p10
    .local p0, e:Ljava/lang/Exception;
    .local p1, multiPart:Z
    :goto_10
    :try_start_13
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #e:Ljava/lang/Exception;
    if-eqz p0, :cond_19

    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 p0, 0x1

    move-object/from16 v20, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .restart local v20       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v20

    .end local v20           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_2

    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v6       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catchall_2
    move-exception p0

    move-object/from16 p4, p0

    move-object/from16 p2, v6

    .end local v6           #status:Lorg/apache/http/StatusLine;
    .restart local p2       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, v16

    .end local v16           #multiPart:Z
    .end local p4           #isProxySet:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local p0       #multiPart:Z
    :goto_11
    sget-object p5, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p5, :cond_18

    sget-object p4, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p4 .. p4}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 p4, 0x1

    goto/16 :goto_2

    :cond_18
    throw p4

    .end local p0           #multiPart:Z
    .local p1, multiPart:Z
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    .local p3, status:Lorg/apache/http/StatusLine;
    .local p4, strheader:Ljava/lang/StringBuilder;
    :cond_19
    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .restart local p0       #multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    :goto_12
    const/16 p4, -0x1

    goto/16 :goto_2

    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catchall_3
    move-exception p0

    move-object/from16 p4, p0

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .restart local p2       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, v16

    .end local v16           #multiPart:Z
    .restart local p0       #multiPart:Z
    goto :goto_11

    .end local p4           #isProxySet:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p0, a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .local p8, strheader:Ljava/lang/StringBuilder;
    :catchall_4
    move-exception p0

    move-object/from16 p4, p0

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, p3

    .end local p3           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p3, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    goto :goto_11

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #multiPart:Z
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catchall_5
    move-exception p0

    move-object/from16 p4, p0

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .restart local p2       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, p3

    .end local p3           #multiPart:Z
    .restart local p0       #multiPart:Z
    move-object/from16 p3, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    goto :goto_11

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p0           #multiPart:Z
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catchall_6
    move-exception p0

    move-object/from16 p4, p0

    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .restart local p2       #status:Lorg/apache/http/StatusLine;
    move/from16 p0, p3

    .end local p3           #multiPart:Z
    .restart local p0       #multiPart:Z
    move-object/from16 p3, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    goto :goto_11

    .end local v9           #statusCode:I
    .end local p0           #multiPart:Z
    .local p1, multiPart:Z
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    .local p3, status:Lorg/apache/http/StatusLine;
    .local p4, strheader:Ljava/lang/StringBuilder;
    :catchall_7
    move-exception p0

    move-object/from16 v20, p0

    move/from16 p0, p1

    .end local p1           #multiPart:Z
    .restart local p0       #multiPart:Z
    move-object/from16 p1, p2

    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, p3

    .end local p3           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p3, p4

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p4, v20

    goto :goto_11

    .end local p0           #multiPart:Z
    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .end local p2           #status:Lorg/apache/http/StatusLine;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_7
    move-exception p0

    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .local p1, multiPart:Z
    goto/16 :goto_10

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p0, a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_8
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_10

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #a:[Lorg/apache/http/Header;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_9
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_10

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_a
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_10

    .end local v9           #statusCode:I
    .end local p1           #multiPart:Z
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_b
    move-exception p0

    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .restart local p1       #multiPart:Z
    goto/16 :goto_f

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local p0       #a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_c
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_f

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #a:[Lorg/apache/http/Header;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_d
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_f

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_e
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_f

    .end local v9           #statusCode:I
    .end local p1           #multiPart:Z
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_f
    move-exception p0

    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .restart local p1       #multiPart:Z
    goto/16 :goto_e

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local p0       #a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_10
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_e

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #a:[Lorg/apache/http/Header;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_11
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_e

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_12
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_e

    .end local v9           #statusCode:I
    .end local p1           #multiPart:Z
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #multiPart:Z
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .restart local p5       #proxyHost:Ljava/lang/String;
    .restart local p6       #proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p9
    .restart local p10
    :catch_13
    move-exception p0

    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    move-object/from16 p4, v19

    .end local v19           #strheader:Ljava/lang/StringBuilder;
    .local p4, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v16

    .end local v16           #multiPart:Z
    .restart local p1       #multiPart:Z
    goto/16 :goto_d

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local p0       #a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_14
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_d

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #a:[Lorg/apache/http/Header;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_15
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_d

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_16
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_d

    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #target:Lorg/apache/http/HttpHost;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local p0       #a:[Lorg/apache/http/Header;
    .local p1, session:I
    .local p2, i:I
    .local p3, multiPart:Z
    .restart local p7       #body:Ljava/lang/String;
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    .restart local p9
    .restart local p10
    :catch_17
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p2, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_5

    .end local v7           #target:Lorg/apache/http/HttpHost;
    .end local p0           #a:[Lorg/apache/http/Header;
    .end local p2           #out:Ljava/io/ByteArrayOutputStream;
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :catch_18
    move-exception p0

    move-object/from16 p4, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .restart local p4       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p2, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p2       #out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p3

    .end local p3           #multiPart:Z
    .local p1, multiPart:Z
    move-object/from16 p3, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p3, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_5

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p1           #multiPart:Z
    .end local p4           #strheader:Ljava/lang/StringBuilder;
    .end local p7           #body:Ljava/lang/String;
    .end local p9
    .end local p10
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p0, out:Ljava/io/ByteArrayOutputStream;
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :cond_1a
    move-object/from16 p2, v18

    .end local v18           #status:Lorg/apache/http/StatusLine;
    .local p2, status:Lorg/apache/http/StatusLine;
    move-object/from16 p1, p0

    .end local p0           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p0, p3

    .end local p3           #multiPart:Z
    .local p0, multiPart:Z
    move-object/from16 p3, p8

    .end local p8           #strheader:Ljava/lang/StringBuilder;
    .local p3, strheader:Ljava/lang/StringBuilder;
    goto/16 :goto_12

    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .restart local p8       #strheader:Ljava/lang/StringBuilder;
    :cond_1b
    move-object/from16 p0, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .local p0, out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_a

    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p7, res:[B
    .restart local p10
    :cond_1c
    move-object/from16 p1, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_9

    .restart local v17       #out:Ljava/io/ByteArrayOutputStream;
    .local p1, session:I
    .restart local p9
    :cond_1d
    move-object/from16 p0, v17

    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .local p0, out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    .locals 4
    .parameter "h"
    .parameter "length"
    .parameter "status"
    .parameter "data"
    .parameter "header"
    .parameter "session"

    .prologue
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/drm/mobile2/DrmHttpEvent;

    invoke-direct {v0}, Landroid/drm/mobile2/DrmHttpEvent;-><init>()V

    .local v0, event:Landroid/drm/mobile2/DrmHttpEvent;
    invoke-virtual {v0, p3}, Landroid/drm/mobile2/DrmHttpEvent;->setBody([B)V

    invoke-virtual {v0, p1}, Landroid/drm/mobile2/DrmHttpEvent;->setBodylen(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/drm/mobile2/DrmHttpEvent;->setEvent(I)V

    invoke-virtual {v0, p4}, Landroid/drm/mobile2/DrmHttpEvent;->setHeader(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/drm/mobile2/DrmHttpEvent;->setSession(I)V

    if-nez p4, :cond_0

    const-string v2, "DrmLicenseHttpManger"

    const-string v3, "sending null hedear"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/drm/mobile2/DrmHttpEvent;->setHeaderlen(I)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/drm/mobile2/DrmHttpEvent;->setStatus(I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/drm/mobile2/DrmHttpEvent;->setHeaderlen(I)V

    goto :goto_0
.end method
