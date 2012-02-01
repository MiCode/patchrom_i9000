.class public Lcom/android/phone/PhoneVoiceRecorder;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final RECORD_START:I

.field private final RECORD_STOP:I

.field private callAddress:Ljava/lang/String;

.field public isRecording:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

.field private mRecordingTimeInMiliSecond:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "PhoneVoiceRecorder"

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->LOG_TAG:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    .line 38
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->RECORD_START:I

    .line 39
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->RECORD_STOP:I

    .line 40
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneVoiceRecorder$1;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->init()V

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneVoiceRecorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/phone/PhoneVoiceRecorder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    .line 35
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->callAddress:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    .line 37
    return-void
.end method


# virtual methods
.method public isRecordingCall(Ljava/lang/String;)Z
    .locals 3
    .parameter "callAddress"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->callAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecordingCall : Current Recording callAddress == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->callAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->callAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 3
    .parameter "callAddress"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->callAddress:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    .line 58
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->start()V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord fail : callindex == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()V

    .line 66
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->init()V

    .line 68
    :cond_0
    return-void
.end method
