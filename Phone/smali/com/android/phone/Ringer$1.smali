.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, r:Landroid/media/Ringtone;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 419
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 333
    :pswitch_1
    invoke-static {}, Lcom/android/phone/Ringer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRingHandler: msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 336
    invoke-static {}, Lcom/android/phone/Ringer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating ringtone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 339
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 341
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 343
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 344
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v0, v2, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 346
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    :cond_4
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 349
    if-eqz v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_6

    .line 352
    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->setRepeat(Z)V

    .line 360
    :goto_1
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    #setter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v1, v2}, Lcom/android/phone/Ringer;->access$402(Lcom/android/phone/Ringer;I)I

    .line 361
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v4, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 362
    const/4 v1, 0x7

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/Ringer$1;->sendEmptyMessageDelayed(IJ)Z

    .line 364
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 365
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 366
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 367
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    #setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v2, v3, v4}, Lcom/android/phone/Ringer;->access$502(Lcom/android/phone/Ringer;J)J

    .line 369
    :cond_5
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 346
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 355
    :cond_6
    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->setRepeat(Z)V

    goto :goto_1

    .line 382
    :pswitch_2
    invoke-static {}, Lcom/android/phone/Ringer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "mRingHandler: PLAY_TTS..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 384
    :cond_7
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    move-result-object v2

    #setter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1, v2}, Lcom/android/phone/Ringer;->access$602(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;

    .line 385
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 391
    :pswitch_3
    invoke-static {}, Lcom/android/phone/Ringer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "mRingHandler: STOP_RING..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 392
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #r:Landroid/media/Ringtone;
    check-cast v0, Landroid/media/Ringtone;

    .line 393
    .restart local v0       #r:Landroid/media/Ringtone;
    if-eqz v0, :cond_c

    .line 395
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallTextToSpeech;->IsSpeakingTts()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 396
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/CallTextToSpeech;->stopTts(I)V

    .line 397
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/phone/CallTextToSpeech;->resetVolumeForTts(I)V

    .line 398
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1, v7}, Lcom/android/phone/Ringer;->access$602(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;

    .line 400
    :cond_9
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 406
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$800(Lcom/android/phone/Ringer;)Lcom/android/phone/CallMotion;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 407
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$800(Lcom/android/phone/Ringer;)Lcom/android/phone/CallMotion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallMotion;->stopMotionCatch()V

    .line 408
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #setter for: Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;
    invoke-static {v1, v7}, Lcom/android/phone/Ringer;->access$802(Lcom/android/phone/Ringer;Lcom/android/phone/CallMotion;)Lcom/android/phone/CallMotion;

    .line 411
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/Ringer$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 403
    :cond_c
    invoke-static {}, Lcom/android/phone/Ringer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    goto :goto_2

    .line 415
    :pswitch_4
    invoke-static {}, Lcom/android/phone/Ringer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RETURN_ORIGIN_VOLUME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 416
    :cond_d
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)I

    move-result v2

    invoke-virtual {v1, v5, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
