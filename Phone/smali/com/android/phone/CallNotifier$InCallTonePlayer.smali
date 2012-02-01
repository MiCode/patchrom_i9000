.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .parameter
    .parameter "toneId"

    .prologue
    .line 1903
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 1904
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1905
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 1906
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1907
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1911
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1913
    const/4 v9, 0x0

    .line 1917
    .local v9, toneType:I
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->getPartialWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 1918
    .local v3, partialWakeLock:Landroid/os/PowerManager$WakeLock;
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 1920
    .local v4, phoneType:I
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1921
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1924
    :cond_0
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v11, :pswitch_data_0

    .line 2028
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad toneId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1926
    :pswitch_0
    const/16 v9, 0x16

    .line 1927
    const/16 v10, 0x50

    .line 1935
    .local v10, toneVolume:I
    const v8, 0x7fffffeb

    .line 2036
    .local v8, toneLengthMillis:I
    :goto_0
    :try_start_0
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 2037
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2038
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x6

    move v6, v11

    .line 2040
    .local v6, stream:I
    :goto_1
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is not null and in Video Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :goto_2
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v6, v10}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2081
    .end local v6           #stream:I
    .local v7, toneGenerator:Landroid/media/ToneGenerator;
    :goto_3
    const/4 v1, 0x1

    .line 2082
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 2084
    .local v2, okToPlayTone:Z
    if-eqz v7, :cond_4

    .line 2085
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 2086
    .local v5, ringerMode:I
    const/4 v11, 0x2

    if-ne v4, v11, :cond_17

    .line 2087
    const/16 v11, 0x5d

    if-ne v9, v11, :cond_10

    .line 2088
    if-eqz v5, :cond_2

    const/4 v11, 0x1

    if-eq v5, v11, :cond_2

    .line 2090
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$900()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2091
    :cond_1
    const/4 v2, 0x1

    .line 2092
    const/4 v1, 0x0

    .line 2118
    :cond_2
    :goto_4
    monitor-enter p0

    .line 2119
    if-eqz v2, :cond_3

    :try_start_1
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 2120
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2121
    invoke-virtual {v7, v9}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2123
    add-int/lit8 v11, v8, 0x14

    int-to-long v11, v11

    :try_start_2
    invoke-virtual {p0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2128
    :goto_5
    if-eqz v1, :cond_3

    .line 2129
    :try_start_3
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2133
    :cond_3
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->release()V

    .line 2134
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2135
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2138
    .end local v5           #ringerMode:I
    :cond_4
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2139
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2155
    :cond_5
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_6

    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/16 v12, 0xd

    if-eq v11, v12, :cond_6

    .line 2156
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:calling resetAudioStateAfterDisconnect  + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2157
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v11}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 2159
    :cond_6
    return-void

    .line 1940
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v7           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_1
    const/4 v11, 0x2

    if-ne v4, v11, :cond_7

    .line 1941
    const/16 v9, 0x60

    .line 1942
    const/16 v10, 0x32

    .line 1943
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1944
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_7
    const/4 v11, 0x1

    if-eq v4, v11, :cond_8

    const/4 v11, 0x3

    if-ne v4, v11, :cond_9

    .line 1946
    :cond_8
    const/16 v9, 0x11

    .line 1947
    const/16 v10, 0x50

    .line 1948
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1194

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1950
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_9
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1954
    :pswitch_2
    const/16 v9, 0x12

    .line 1955
    const/16 v10, 0x50

    .line 1956
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 1957
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1963
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_3
    const/16 v9, 0x19

    .line 1964
    const/16 v10, 0x50

    .line 1965
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .line 1966
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1968
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_4
    const/16 v9, 0x1b

    .line 1969
    const/16 v10, 0x50

    .line 1970
    .restart local v10       #toneVolume:I
    const/16 v8, 0xc8

    .line 1971
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1973
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_5
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 1975
    const/16 v9, 0x5d

    .line 1976
    const/16 v10, 0x50

    .line 1977
    .restart local v10       #toneVolume:I
    const/16 v8, 0x2ee

    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1979
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :cond_a
    const/16 v9, 0x1b

    .line 1980
    const/16 v10, 0x50

    .line 1981
    .restart local v10       #toneVolume:I
    const/16 v8, 0xc8

    .line 1983
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1985
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_6
    const/16 v9, 0x56

    .line 1986
    const/16 v10, 0x50

    .line 1987
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1388

    .line 1988
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1990
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_7
    const/16 v9, 0x27

    .line 1991
    const/16 v10, 0x32

    .line 1992
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 1993
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1995
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_8
    const/16 v9, 0x25

    .line 1996
    const/16 v10, 0x32

    .line 1997
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1f4

    .line 1998
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2001
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_9
    const/16 v9, 0x5f

    .line 2002
    const/16 v10, 0x32

    .line 2003
    .restart local v10       #toneVolume:I
    const/16 v8, 0x177

    .line 2004
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2006
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_a
    const/16 v9, 0x57

    .line 2007
    const/16 v10, 0x32

    .line 2008
    .restart local v10       #toneVolume:I
    const/16 v8, 0x1388

    .line 2009
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2011
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_b
    const/16 v9, 0x17

    .line 2012
    const/16 v10, 0x50

    .line 2014
    .restart local v10       #toneVolume:I
    const v8, 0x7fffffeb

    .line 2015
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2017
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_c
    const/16 v9, 0x15

    .line 2018
    const/16 v10, 0x50

    .line 2019
    .restart local v10       #toneVolume:I
    const/16 v8, 0xfa0

    .line 2020
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2022
    .end local v8           #toneLengthMillis:I
    .end local v10           #toneVolume:I
    :pswitch_d
    const/16 v9, 0x19

    .line 2023
    const/16 v10, 0x32

    .line 2024
    .restart local v10       #toneVolume:I
    const/16 v8, 0x3e8

    .line 2025
    .restart local v8       #toneLengthMillis:I
    goto/16 :goto_0

    .line 2038
    :cond_b
    const/16 v11, 0xb

    move v6, v11

    goto/16 :goto_1

    .line 2043
    :cond_c
    :try_start_4
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is not null and in voice Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x6

    move v6, v11

    .restart local v6       #stream:I
    :goto_6
    goto/16 :goto_2

    .end local v6           #stream:I
    :cond_d
    const/4 v11, 0x0

    move v6, v11

    goto :goto_6

    .line 2049
    :cond_e
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 2050
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is null and in Video Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    const/16 v6, 0xb

    .restart local v6       #stream:I
    goto/16 :goto_2

    .line 2054
    .end local v6           #stream:I
    :cond_f
    const-string v11, "CallNotifier"

    const-string v12, "InCallTonePlayer: mBlutoothHandsfree is null and in Voice Call"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2056
    const/4 v6, 0x0

    .restart local v6       #stream:I
    goto/16 :goto_2

    .line 2061
    .end local v6           #stream:I
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 2062
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    const/4 v7, 0x0

    .restart local v7       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_3

    .line 2094
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #needToStopTone:Z
    .restart local v2       #okToPlayTone:Z
    .restart local v5       #ringerMode:I
    :cond_10
    const/16 v11, 0x60

    if-eq v9, v11, :cond_11

    const/16 v11, 0x27

    if-eq v9, v11, :cond_11

    const/16 v11, 0x25

    if-eq v9, v11, :cond_11

    const/16 v11, 0x5f

    if-ne v9, v11, :cond_13

    .line 2098
    :cond_11
    if-eqz v5, :cond_2

    .line 2099
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$900()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2100
    :cond_12
    const/4 v2, 0x1

    .line 2101
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 2103
    :cond_13
    const/16 v11, 0x57

    if-eq v9, v11, :cond_14

    const/16 v11, 0x56

    if-ne v9, v11, :cond_16

    .line 2105
    :cond_14
    if-eqz v5, :cond_2

    const/4 v11, 0x1

    if-eq v5, v11, :cond_2

    .line 2107
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$900()Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2108
    :cond_15
    const/4 v2, 0x1

    .line 2109
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 2112
    :cond_16
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 2115
    :cond_17
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 2124
    :catch_1
    move-exception v0

    .line 2125
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InCallTonePlayer stopped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2135
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v11

    .line 1924
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 2162
    monitor-enter p0

    .line 2163
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2164
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2166
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2167
    monitor-exit p0

    .line 2168
    return-void

    .line 2167
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
