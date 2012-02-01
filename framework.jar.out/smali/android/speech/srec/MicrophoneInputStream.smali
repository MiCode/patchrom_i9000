.class public final Landroid/speech/srec/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStream"


# instance fields
.field private mAudioRecord:I

.field private mOneByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "srec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .parameter "sampleRate"
    .parameter "fifoDepth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    invoke-static {}, Landroid/speech/srec/MicrophoneInputStream;->checkMicrophoneEnabled()Z

    invoke-static {p1, p2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordNew(II)I

    move-result v1

    iput v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AudioRecord constructor failed - busy?"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStart(I)I

    move-result v0

    .local v0, status:I
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord start failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private static native AudioRecordDelete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordNew(II)I
.end method

.method private static native AudioRecordRead(I[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordStart(I)I
.end method

.method private static native AudioRecordStop(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static checkMicrophoneEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .local v1, enabled:Z
    :try_start_0
    const-string v3, "misc_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IMiscPolicy;

    move-result-object v2

    .local v2, miscPolicy:Landroid/app/enterprise/IMiscPolicy;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IMiscPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2           #miscPolicy:Landroid/app/enterprise/IMiscPolicy;
    :goto_0
    if-nez v1, :cond_1

    const-string v3, "MicrophoneInputStream"

    const-string v4, "MICROPHONE IS DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const v4, 0x1869f

    if-gt v3, v4, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_1
    return v1

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-eqz v0, :cond_0

    :try_start_0
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v0}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v0}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    throw v0

    :catchall_2
    move-exception v0

    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "someone forgot to close MicrophoneInputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    iget-object v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    invoke-static {v1, v2, v3, v4}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result v0

    .local v0, rtn:I
    if-ne v0, v4, :cond_1

    iget-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p1, v1, v2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v0, p1, p2, p3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result v0

    return v0
.end method
