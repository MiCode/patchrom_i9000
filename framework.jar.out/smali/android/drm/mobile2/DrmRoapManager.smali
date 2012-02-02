.class public Landroid/drm/mobile2/DrmRoapManager;
.super Ljava/lang/Object;
.source "DrmRoapManager.java"

# interfaces
.implements Landroid/drm/mobile2/HttpConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile2/DrmRoapManager$DataHandler;,
        Landroid/drm/mobile2/DrmRoapManager$HttpThread;
    }
.end annotation


# static fields
.field public static final DRM_RINGTONE_ALERT:Ljava/lang/String; = "DrmRingtoneExpiry"


# instance fields
.field public RTAlarmID:I

.field public RTAlarmPopup:I

.field public RTAlarmtype:I

.field public RTFileName:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private httpThread:Ljava/lang/Thread;

.field public omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 375
    :try_start_0
    const-string v1, "drm2_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 377
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libdrm2_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/drm/mobile2/OMADRMManager;)V
    .locals 2
    .parameter "drmManager"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "SISODRM"

    iput-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    .line 29
    iput-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->httpThread:Ljava/lang/Thread;

    .line 31
    iput-object p1, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    .line 41
    invoke-direct {p0}, Landroid/drm/mobile2/DrmRoapManager;->roapInit()V

    .line 42
    return-void
.end method

.method private native Drm2DownloadCancel()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation
.end method

.method private native DrmStore2Ro(Ljava/lang/String;ILjava/lang/String;J)Z
.end method

.method private native DrmStore2RoTrigger(I[B)Z
.end method

.method static synthetic access$000(Landroid/drm/mobile2/DrmRoapManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private native dcfHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;
.end method

.method private native drm2QueryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private handlenativecallback(IIILjava/lang/Object;J)V
    .locals 7
    .parameter "what"
    .parameter "ext1"
    .parameter "ext2"
    .parameter "object"
    .parameter "ext3"

    .prologue
    .line 268
    packed-switch p1, :pswitch_data_0

    .line 337
    :pswitch_0
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "Default case:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local p4
    .end local p5
    :goto_0
    return-void

    .line 270
    .restart local p4
    .restart local p5
    :pswitch_1
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "Request rcvd for Http create session"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request rcvd for Http create session obj is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    move-object v0, p4

    check-cast v0, Landroid/drm/mobile2/HttpConfig;

    move-object v2, v0

    .line 274
    .local v2, config:Landroid/drm/mobile2/HttpConfig;
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call from config obj"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/drm/mobile2/HttpConfig;->getHttpSocketTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0, p4, p1}, Landroid/drm/mobile2/DrmRoapManager;->sendHttpRequest(Ljava/lang/Object;I)V

    goto :goto_0

    .line 280
    .end local v2           #config:Landroid/drm/mobile2/HttpConfig;
    :pswitch_2
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "DRM_ROAP_PROGRESS_NOTIFY "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    check-cast p4, [I

    .end local p4
    move-object v0, p4

    check-cast v0, [I

    move-object v1, v0

    .line 282
    .local v1, a:[I
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRM_ROAP_PROGRESS_NOTIFY:pduType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRM_ROAP_PROGRESS_NOTIFY:protocolType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRM_ROAP_PROGRESS_NOTIFY:statusType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    const/4 v6, 0x2

    aget v6, v1, v6

    invoke-interface {v3, v4, v5, v6}, Landroid/drm/mobile2/OMADRMManager$OnRoapListener;->onRoapProgress(III)Z

    goto/16 :goto_0

    .line 289
    :cond_0
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "ROAP LISTENER is NOT SET"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    .end local v1           #a:[I
    .restart local p4
    :pswitch_3
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRM_ROAP_RESULT_NOTIFY msg.arg2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msg.arg1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    if-eqz v3, :cond_1

    .line 296
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    invoke-interface {v3, p2, p3}, Landroid/drm/mobile2/OMADRMManager$OnRoapListener;->onRoapResult(II)Z

    goto/16 :goto_0

    .line 298
    :cond_1
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "ROAP LISTENER is NOT SET"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 302
    :pswitch_4
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRM_ROAP_USER_CONSENT_REGIST_OF_ROACQ:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, p4

    check-cast v0, Ljava/lang/Long;

    move-object p5, v0

    .end local p5
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    if-eqz v3, :cond_2

    .line 305
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    check-cast p4, Ljava/lang/Long;

    .end local p4
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroid/drm/mobile2/OMADRMManager$OnRoapListener;->onRoapUserConcent(J)Z

    goto/16 :goto_0

    .line 308
    .restart local p4
    :cond_2
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "ROAP LISTENER is NOT SET"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 312
    .restart local p5
    :pswitch_5
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ODF_START_DOWNLOAD:file path is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nfile size is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    if-eqz v3, :cond_3

    .line 315
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-interface {v3, p4, p5, p6}, Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;->onStartDownload(Ljava/lang/String;J)Z

    goto/16 :goto_0

    .line 318
    .restart local p4
    :cond_3
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "mOnDownloadListener is NOT SET"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 323
    :pswitch_6
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "CO_DOWNLOAD_PROGRESS:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    if-eqz v3, :cond_4

    .line 325
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    check-cast p4, [B

    .end local p4
    check-cast p4, [B

    invoke-interface {v3, p4, p2}, Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;->onProgressDownload([BI)Z

    .line 330
    :goto_1
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "ByteArrayOutputStream: Success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 328
    .restart local p4
    :cond_4
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "mOnDownloadListener is NOT SET"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 333
    :pswitch_7
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v4, "CO_DOWNLOAD_FINISH:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Landroid/drm/mobile2/DrmRoapManager;->omaDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v3, v3, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;->onStopDownload(Z)Z

    goto/16 :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private native roapInit()V
.end method

.method private sendHttpRequest(Ljava/lang/Object;I)V
    .locals 8
    .parameter "obj"
    .parameter "type"

    .prologue
    .line 132
    move-object v0, p1

    check-cast v0, Landroid/drm/mobile2/HttpConfig;

    move-object v1, v0

    .line 133
    .local v1, config:Landroid/drm/mobile2/HttpConfig;
    iget-object v4, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Url is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/drm/mobile2/HttpConfig;->pUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n Method is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/drm/mobile2/HttpConfig;->method:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n config post data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    iget-object v7, v1, Landroid/drm/mobile2/HttpConfig;->postData:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nconfig header"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/drm/mobile2/HttpConfig;->pSendHeader:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Http request rcvd"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    new-instance v2, Landroid/drm/mobile2/DrmRoapManager$DataHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Landroid/drm/mobile2/DrmRoapManager$DataHandler;-><init>(Landroid/drm/mobile2/DrmRoapManager;Landroid/os/Looper;)V

    .line 147
    .local v2, datahandle:Landroid/drm/mobile2/DrmRoapManager$DataHandler;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/drm/mobile2/DrmRoapManager$HttpThread;

    invoke-direct {v4, p0, v1, v2}, Landroid/drm/mobile2/DrmRoapManager$HttpThread;-><init>(Landroid/drm/mobile2/DrmRoapManager;Landroid/drm/mobile2/HttpConfig;Landroid/drm/mobile2/DrmRoapManager$DataHandler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    .local v3, httpThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method


# virtual methods
.method public native Drm2GoSilentURL(Ljava/lang/String;)Z
.end method

.method public native Drm2TransactionTracking(Z)Z
.end method

.method public native ProcessHttpResponse(Landroid/drm/mobile2/DrmHttpEvent;)V
.end method

.method public native SubmitUserConsent(JZZ)V
.end method

.method public cancelRoapProcess()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Landroid/drm/mobile2/HttpManager;->closeHttpConnection()Z

    move-result v0

    .line 204
    .local v0, status:Z
    if-eqz v0, :cond_1

    .line 205
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v2, "Client is closed succesfully.Interrupt the thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->httpThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->httpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 212
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/drm/mobile2/DrmRoapManager;->Drm2DownloadCancel()Z

    move-result v0

    .line 213
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drm2DownloadCancel success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v0

    .line 209
    :cond_1
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v2, "Client is already closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;
    .locals 1
    .parameter "dcfFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0, p1}, Landroid/drm/mobile2/DrmRoapManager;->dcfHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method public native native_drm_init()Z
.end method

.method postCallBackfromNative(IIILjava/lang/Object;J)V
    .locals 3
    .parameter "what"
    .parameter "ext1"
    .parameter "ext2"
    .parameter "obj"
    .parameter "ext3"

    .prologue
    .line 248
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GOT THE CALLBACK FROM  NATIVE what is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ext1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct/range {p0 .. p6}, Landroid/drm/mobile2/DrmRoapManager;->handlenativecallback(IIILjava/lang/Object;J)V

    .line 263
    return-void
.end method

.method public processRoap(Ljava/lang/String;ILjava/lang/String;J)Z
    .locals 3
    .parameter "strRoap"
    .parameter "strRoapSize"
    .parameter "fileName"
    .parameter "fileSize"

    .prologue
    .line 220
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v1, "Inside ProcessRoap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct/range {p0 .. p5}, Landroid/drm/mobile2/DrmRoapManager;->DrmStore2Ro(Ljava/lang/String;ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public processRoap([BI)Z
    .locals 3
    .parameter "buf"
    .parameter "size"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    const-string v1, "Inside ProcessRoap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Landroid/drm/mobile2/DrmRoapManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trigger is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0, p2, p1}, Landroid/drm/mobile2/DrmRoapManager;->DrmStore2RoTrigger(I[B)Z

    move-result v0

    return v0
.end method

.method declared-synchronized queryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z
    .locals 1
    .parameter "file"
    .parameter "drmConInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/drm/mobile2/DrmRoapManager;->drm2QueryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
