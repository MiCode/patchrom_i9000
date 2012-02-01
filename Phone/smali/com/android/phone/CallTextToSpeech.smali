.class public Lcom/android/phone/CallTextToSpeech;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTextToSpeech$1;,
        Lcom/android/phone/CallTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static _instance:Lcom/android/phone/CallTextToSpeech;


# instance fields
.field private DEFAULT_TTS_STREAM:Ljava/lang/String;

.field private DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

.field private IsTtsInitiated:Z

.field private NewVoicemail:Ljava/lang/String;

.field private incomingCallInfo:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mOriginRingVolume:I

.field private mOriginTtsVolume:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsId:I

.field private mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->_instance:Lcom/android/phone/CallTextToSpeech;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "TtsId"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 43
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    .line 44
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 45
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 47
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    .line 50
    iput v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    .line 51
    iput v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    .line 54
    iput v2, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    .line 60
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->incomingCallInfo:Ljava/lang/String;

    .line 61
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    .line 64
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    .line 65
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    .line 68
    iput-boolean v2, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    .line 71
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 72
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 73
    iput-object p1, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    .line 74
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 76
    iput p2, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    .line 77
    new-instance v1, Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/CallTextToSpeech$TtsListener;-><init>(Lcom/android/phone/CallTextToSpeech;Lcom/android/phone/CallTextToSpeech$1;)V

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    .line 78
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 79
    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {p0, v1}, Lcom/android/phone/CallTextToSpeech;->speakTts(I)V

    .line 80
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallTextToSpeech;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/CallTextToSpeech;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;
    .locals 2
    .parameter "context"
    .parameter "TtsId"

    .prologue
    .line 96
    const-class v0, Lcom/android/phone/CallTextToSpeech;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/phone/CallTextToSpeech;->_instance:Lcom/android/phone/CallTextToSpeech;

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lcom/android/phone/CallTextToSpeech;->_instance:Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v1}, Lcom/android/phone/CallTextToSpeech;->destroy()V

    .line 99
    :cond_0
    new-instance v1, Lcom/android/phone/CallTextToSpeech;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/CallTextToSpeech;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/android/phone/CallTextToSpeech;->_instance:Lcom/android/phone/CallTextToSpeech;

    .line 100
    sget-object v1, Lcom/android/phone/CallTextToSpeech;->_instance:Lcom/android/phone/CallTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public IsSpeakingTts()Z
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, IsSpeakingTts:Z
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 117
    :cond_0
    return v0
.end method

.method protected destroy()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    .line 236
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->_instance:Lcom/android/phone/CallTextToSpeech;

    .line 238
    :cond_0
    return-void
.end method

.method public resetVolumeForTts(I)V
    .locals 4
    .parameter "TtsId"

    .prologue
    const/4 v3, 0x0

    .line 220
    packed-switch p1, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 224
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setVolumeForTts(I)V
    .locals 5
    .parameter "TtsId"

    .prologue
    const/16 v1, 0xf

    const/16 v2, 0x9

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    .line 192
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    .line 195
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v2, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 203
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-le v0, v3, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public speakTts(I)V
    .locals 9
    .parameter "TtsId"

    .prologue
    const v8, 0x7f0d025b

    const/4 v5, 0x0

    const-string v7, "utteranceId"

    const-string v6, "TTS ended : "

    const-string v4, "streamType"

    .line 122
    sget-object v2, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Getting into speak TTS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 130
    .local v0, TtsCallerInfo:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v1, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    .line 136
    const-string v2, "streamType"

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS ended : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 139
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallTextToSpeech;->incomingCallInfo:Ljava/lang/String;

    .line 141
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->incomingCallInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 142
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 149
    const-string v2, "streamType"

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS ended : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallTextToSpeech;->incomingCallInfo:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->incomingCallInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 154
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 160
    :cond_2
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_3

    .line 161
    const-string v2, "streamType"

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :goto_1
    const-string v2, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS ended : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0183

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 169
    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 164
    :cond_3
    const-string v2, "streamType"

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stopTts(I)V
    .locals 1
    .parameter "TtsId"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 181
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/CallTextToSpeech;->resetVolumeForTts(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->destroy()V

    .line 184
    :cond_0
    return-void
.end method
