.class Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "PhoneVoiceRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    return-void
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "prefix"
    .parameter "num"

    .prologue
    const-string v3, " "

    .line 181
    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, t:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 183
    .end local v0           #t:Ljava/lang/String;
    :cond_0
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v0           #t:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0
.end method

.method private createFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/Sounds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    .line 163
    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFilePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancelRecording()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "title"
    .parameter "context"

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, dir:Ljava/io/File;
    const/4 v2, 0x0

    .line 193
    .local v2, files:[Ljava/io/File;
    new-instance v1, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;Ljava/lang/String;)V

    .line 194
    .local v1, filenameFilter:Ljava/io/FilenameFilter;
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    const-string v3, "/sdcard/Sounds"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 199
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 200
    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createNewFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    const/4 v0, 0x1

    .line 168
    .local v0, num:I
    const-string v1, "VoiceCall"

    .line 170
    .local v1, prefix:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 173
    goto :goto_0

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v2
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 111
    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 113
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 115
    const/16 v0, 0x326

    if-ne p2, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    int-to-long v1, p3

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J
    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$202(Lcom/android/phone/PhoneVoiceRecorder;J)J

    .line 119
    :cond_0
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 120
    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "onInfo - MediaRecorder.MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()V

    .line 123
    :cond_1
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "releaseMediaRecorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 156
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 157
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J
    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$202(Lcom/android/phone/PhoneVoiceRecorder;J)J

    .line 160
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const-string v6, "Exception"

    const-string v5, "PhoneVoiceRecorder"

    .line 83
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/Sounds/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, CallRecordingDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 85
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 88
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 89
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 90
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->createFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/16 v3, 0x2fa8

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 92
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 93
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    const/16 v3, 0x1f40

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 94
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 95
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 96
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-wide/16 v3, 0x0

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J
    invoke-static {v2, v3, v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$202(Lcom/android/phone/PhoneVoiceRecorder;J)J

    .line 99
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    .line 100
    const-string v2, "PhoneVoiceRecorder"

    const-string v3, "RecorderThread started"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    return-void

    .line 102
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 103
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "PhoneVoiceRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 105
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 106
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "PhoneVoiceRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 125
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)J

    move-result-wide v0

    .line 126
    .local v0, duration:J
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 127
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iput-boolean v8, v3, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 146
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".amr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d030b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v8, v8, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 148
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method
