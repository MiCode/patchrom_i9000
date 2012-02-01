.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# static fields
.field private static final ALARM_VOLUME_TEXT:I = 0x10403b5

.field private static final BEEP_DURATION:I = 0x96

.field private static final BLUETOOTH_INCALL_VOLUME_TEXT:I = 0x10403b4

.field private static final FREE_DELAY:I = 0x2710

.field private static final INCALL_VOLUME_TEXT:I = 0x10403b3

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MUSIC_VOLUME_TEXT:I = 0x10403b0

.field private static final NOTIFICATION_VOLUME_TEXT:I = 0x10403b6

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final RINGTONE_VOLUME_TEXT:I = 0x10403af

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final UNKNOWN_VOLUME_TEXT:I = 0x10403b7

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private final mAdditionalMessage:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mLargeStreamIcon:Landroid/widget/ImageView;

.field private final mLevel:Landroid/widget/ProgressBar;

.field private final mMessage:Landroid/widget/TextView;

.field private mRingIsSilent:Z

.field private final mSmallStreamIcon:Landroid/widget/ImageView;

.field private final mToast:Landroid/widget/Toast;

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 4
    .parameter "context"
    .parameter "volumeService"

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090072

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .local v1, view:Landroid/view/View;
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    const v2, 0x102024a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    const v2, 0x1020249

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const v2, 0x102024b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const v2, 0x102024c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    new-array v2, v2, [Landroid/media/ToneGenerator;

    iput-object v2, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 3
    .parameter "streamType"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, p1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v1, v0, p1

    monitor-exit p0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setLargeIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setRingerIcon()V
    .locals 5

    .prologue
    iget-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .local v1, ringerMode:I
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRingerIcon(), ringerMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_1

    const v0, 0x10801e5

    .local v0, icon:I
    :goto_0
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .end local v0           #icon:I
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const v0, 0x10801e0

    .restart local v0       #icon:I
    goto :goto_0

    .end local v0           #icon:I
    :cond_2
    const v0, 0x10801e2

    .restart local v0       #icon:I
    goto :goto_0
.end method

.method private setSmallIcon(I)V
    .locals 2
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const v1, 0x10801e6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const v1, 0x10801e7

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .local v0, toneGen:Landroid/media/ToneGenerator;
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onShowVolumeChanged(II)V
    .locals 11
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v6, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v1

    .local v1, index:I
    const v3, 0x10403b7

    .local v3, message:I
    const/4 v0, 0x0

    .local v0, additionalMessage:I
    iput-boolean v9, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_0

    const-string v6, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onShowVolumeChanged(streamType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v6, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v2

    .local v2, max:I
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, messageString:Ljava/lang/String;
    iget-object v6, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-nez v0, :cond_6

    iget-object v6, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v6, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    move-result v6

    if-eq v2, v6, :cond_3

    iget-object v6, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_3
    iget-object v6, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v6, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    iget-object v7, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v6, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6, v9}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v6, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    const/16 v7, 0x30

    invoke-virtual {v6, v7, v9, v9}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v6, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    and-int/lit8 v6, p2, 0x10

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v6, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v6}, Landroid/media/AudioService;->getRingerMode()I

    move-result v6

    if-ne v6, v10, :cond_4

    iget-object v6, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v6, v9}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    return-void

    .end local v4           #messageString:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Landroid/view/VolumePanel;->setRingerIcon()V

    const v3, 0x10403af

    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .local v5, ringuri:Landroid/net/Uri;
    if-nez v5, :cond_1

    const v0, 0x10403b2

    iput-boolean v10, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .end local v5           #ringuri:Landroid/net/Uri;
    :pswitch_2
    const v3, 0x10403b0

    iget-object v6, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v6

    if-eqz v6, :cond_5

    const v0, 0x10403b1

    const v6, 0x10801e3

    invoke-direct {p0, v6}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    const v3, 0x10403b3

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    :pswitch_4
    const v3, 0x10403b5

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    :pswitch_5
    const v3, 0x10403b6

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .restart local v5       #ringuri:Landroid/net/Uri;
    if-nez v5, :cond_1

    const v0, 0x10403b2

    iput-boolean v10, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .end local v5           #ringuri:Landroid/net/Uri;
    :pswitch_6
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    const v3, 0x10403b4

    const v6, 0x10801e4

    invoke-direct {p0, v6}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    .restart local v4       #messageString:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .local v1, numStreamTypes:I
    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    return-void

    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v3, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    :cond_3
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
