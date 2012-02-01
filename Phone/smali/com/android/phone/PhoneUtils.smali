.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$8;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;
    }
.end annotation


# static fields
.field private static ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

.field private static RAW_CONTACTS_SNS_PROJECTION:[Ljava/lang/String;

.field private static mCallConnectedToneHandle:Landroid/media/MediaPlayer;

.field private static mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

.field private static mIsMmiDialogHiding:Z

.field private static mMmiDialog:Landroid/app/AlertDialog;

.field private static mMmiTimeoutCbMsg:Landroid/os/Message;

.field private static mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

.field private static sBirthFormat:[Ljava/lang/String;

.field static sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static sConnectionMuteTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsNoiseSuppressionEnabled:Z

.field private static sIsSpeakerEnabled:Z

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 124
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    .line 140
    sput-object v2, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 142
    sput-object v2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 145
    sput-boolean v4, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    .line 148
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/PhoneUtils;->sBirthFormat:[Ljava/lang/String;

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sns_id"

    aput-object v1, v0, v3

    const-string v1, "sp"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/PhoneUtils;->RAW_CONTACTS_SNS_PROJECTION:[Ljava/lang/String;

    .line 157
    sput-object v2, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    .line 158
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    .line 160
    sput-object v2, Lcom/android/phone/PhoneUtils;->sToast:Landroid/widget/Toast;

    .line 163
    sput-object v2, Lcom/android/phone/PhoneUtils;->mCallConnectedToneHandle:Landroid/media/MediaPlayer;

    .line 164
    sput-object v2, Lcom/android/phone/PhoneUtils;->mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

    .line 243
    new-instance v0, Lcom/android/phone/PhoneUtils$1;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$1;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    .line 1778
    new-instance v0, Lcom/android/phone/PhoneUtils$4;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$4;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/Phone;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    sput-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    return-object p0
.end method

.method static synthetic access$500()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/phone/PhoneUtils;->sBirthFormat:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/phone/PhoneUtils;->RAW_CONTACTS_SNS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private static activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2669
    const-string v0, "activateSpeakerIfDocked()..."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2671
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-ne v0, v2, :cond_1

    .line 2672
    const-string v0, "activateSpeakerIfDocked(): In a dock -> may need to turn on speaker."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2673
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2674
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 2676
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2677
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2680
    :cond_1
    return-void
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "cm"
    .parameter "ringing"

    .prologue
    .line 533
    const-string v0, "answerAndEndActive()..."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    const-string v0, "PhoneUtils"

    const-string v1, "end active call failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v0, 0x0

    .line 556
    :goto_0
    return v0

    .line 552
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    .line 556
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static answerCall(Lcom/android/internal/telephony/Call;)Z
    .locals 11
    .parameter "ringing"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 287
    const-string v7, "answerCall()..."

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/Ringer;->stopRing()V

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, answered:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 295
    .local v1, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 296
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    move v6, v9

    .line 297
    .local v6, phoneIsCdma:Z
    :goto_0
    const/4 v2, 0x0

    .line 299
    .local v2, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v6, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_0

    .line 302
    iget-object v4, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 303
    .local v4, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 307
    .end local v4           #notifier:Lcom/android/phone/CallNotifier;
    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "answerCall: call state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 310
    if-eqz v6, :cond_1

    .line 311
    :try_start_0
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_4

    .line 315
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 338
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V

    .line 339
    const/4 v0, 0x1

    .line 342
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 345
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->setAudioModeInAnswering(Lcom/android/internal/telephony/Call;)V

    .line 348
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V

    .line 362
    :cond_2
    :goto_2
    return v0

    .end local v2           #bthf:Lcom/android/phone/BluetoothHandsfree;
    .end local v6           #phoneIsCdma:Z
    :cond_3
    move v6, v10

    .line 296
    goto :goto_0

    .line 320
    .restart local v2       #bthf:Lcom/android/phone/BluetoothHandsfree;
    .restart local v6       #phoneIsCdma:Z
    :cond_4
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 325
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 330
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 331
    if-eqz v2, :cond_1

    .line 332
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 349
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 350
    .local v3, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "answerCall: caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    if-eqz v6, :cond_2

    .line 354
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v8, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 356
    if-eqz v2, :cond_2

    .line 357
    invoke-virtual {v2, v10}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    goto :goto_2
.end method

.method private static audioModeToString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2230
    packed-switch p0, :pswitch_data_0

    .line 2237
    :pswitch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2231
    :pswitch_1
    const-string v0, "MODE_INVALID"

    goto :goto_0

    .line 2232
    :pswitch_2
    const-string v0, "MODE_CURRENT"

    goto :goto_0

    .line 2233
    :pswitch_3
    const-string v0, "MODE_NORMAL"

    goto :goto_0

    .line 2234
    :pswitch_4
    const-string v0, "MODE_RINGTONE"

    goto :goto_0

    .line 2235
    :pswitch_5
    const-string v0, "MODE_IN_CALL"

    goto :goto_0

    .line 2236
    :pswitch_6
    const-string v0, "MODE_IN_VIDEOCALL"

    goto :goto_0

    .line 2230
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method static cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1391
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 1392
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMmiCode: num pending MMIs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1396
    if-lez v1, :cond_2

    .line 1401
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/MmiCode;

    .line 1402
    invoke-interface {p0}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1403
    invoke-interface {p0}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1404
    const/4 v0, 0x1

    .line 1409
    :goto_0
    sget-object v1, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v1, :cond_0

    .line 1411
    :try_start_0
    sget-object v1, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v1}, Lcom/android/internal/telephony/IExtendedNetworkService;->clearMmiString()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    :cond_0
    :goto_1
    sget-object v1, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 1417
    sput-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1419
    :cond_1
    return v0

    .line 1412
    :catch_0
    move-exception v1

    .line 1413
    sput-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method static checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-string v2, "com.android.phone.extra.GATEWAY_URI"

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    .line 2563
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2564
    const-string v0, "PhoneUtils"

    const-string v1, "checkAndCopyPhoneProviderExtras: some or all extras are missing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :goto_0
    return-void

    .line 2568
    :cond_0
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2570
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 2465
    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2468
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, PRIVATE string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2469
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    .line 2478
    :goto_0
    return v0

    .line 2470
    :cond_1
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2474
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, UNKNOWN string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2475
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    goto :goto_0

    .line 2477
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, normal str. number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2478
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static dialVideoCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 10
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"

    .prologue
    .line 672
    const/4 v6, 0x0

    .line 674
    .local v6, status:I
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "placeCall: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 677
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 679
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===> phone.dial() returned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 681
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 684
    .local v5, phoneType:I
    if-nez v1, :cond_2

    .line 685
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 686
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dialed MMI code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 687
    const/4 v6, 0x1

    .line 689
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_0

    .line 691
    :try_start_1
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v8, p1}, Lcom/android/internal/telephony/IExtendedNetworkService;->setMmiString(Ljava/lang/String;)V

    .line 692
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extended NW bindService setUssdString ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 741
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v5           #phoneType:I
    :cond_0
    :goto_0
    return v6

    .line 693
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 694
    .local v3, e:Landroid/os/RemoteException;
    const/4 v8, 0x0

    :try_start_2
    sput-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 736
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #phoneType:I
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 737
    .local v4, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "PhoneUtils"

    const-string v9, "Exception from phone.dial()"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    const/4 v6, 0x2

    goto :goto_0

    .line 698
    .end local v4           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    .line 701
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 703
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 704
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 707
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 714
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v2, "content"

    .line 715
    .local v2, content:Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 716
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 717
    .local v7, userDataObject:Ljava/lang/Object;
    if-nez v7, :cond_5

    .line 718
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 731
    .end local v7           #userDataObject:Ljava/lang/Object;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 734
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 723
    .restart local v7       #userDataObject:Ljava/lang/Object;
    :cond_5
    instance-of v8, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v8, :cond_6

    .line 724
    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .end local v7           #userDataObject:Ljava/lang/Object;
    iput-object p2, v7, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_1

    .line 726
    .restart local v7       #userDataObject:Ljava/lang/Object;
    :cond_6
    check-cast v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v7           #userDataObject:Ljava/lang/Object;
    iget-object v8, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v8, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x7d8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1160
    .line 1161
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v0

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayMMIComplete: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1165
    sget-object v1, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 1167
    :try_start_0
    sget-object v1, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1168
    const-string v1, "Extended NW displayMMIComplete removeMsg"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1171
    :goto_0
    sput-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1175
    :cond_0
    sget-object v1, Lcom/android/phone/PhoneUtils$8;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1201
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected MmiCode state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1178
    :pswitch_0
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- using text from PENDING MMI message: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v2, v1

    move v1, v6

    .line 1204
    :goto_1
    if-eqz p4, :cond_1

    .line 1205
    invoke-virtual {p4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1210
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 1211
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v4, :cond_4

    .line 1212
    const-string v0, "displaying PUK unblocking progress dialog."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1216
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1217
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1218
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1219
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1220
    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1221
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setType(I)V

    .line 1222
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1225
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1229
    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    .line 1363
    :cond_2
    :goto_2
    return-void

    .line 1182
    :pswitch_1
    const v1, 0x7f0d002e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    move v1, v6

    .line 1183
    goto :goto_1

    .line 1185
    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1188
    const v1, 0x10400e0

    .line 1189
    const v2, 0x7f0d0054

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 1197
    :cond_3
    :pswitch_3
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- using text from MMI message: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v2, v1

    move v1, v6

    .line 1199
    goto :goto_1

    .line 1234
    :cond_4
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1235
    invoke-virtual {v3, v5}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 1240
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_6

    .line 1241
    const-string v0, "MMI code has finished running."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1244
    sget-object v0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v0, :cond_7

    .line 1246
    :try_start_1
    sget-object v0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IExtendedNetworkService;->getUserMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1250
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extended NW displayMMIInitiate ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1251
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1258
    :goto_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    .line 1264
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setType(I)V

    .line 1266
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1270
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    sput-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    move-object v0, v2

    goto :goto_3

    .line 1274
    :cond_6
    const-string v0, "USSD code has requested user input. Constructing input dialog."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1299
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1301
    const v1, 0x7f030011

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1304
    const v0, 0x7f080044

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1307
    new-instance v3, Lcom/android/phone/PhoneUtils$2;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/phone/PhoneUtils$2;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lcom/android/internal/telephony/MmiCode;)V

    .line 1324
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0044

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d002f

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    .line 1334
    new-instance v1, Lcom/android/phone/PhoneUtils$3;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/PhoneUtils$3;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;)V

    .line 1350
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1351
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1354
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setType(I)V

    .line 1356
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1360
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 1169
    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    goto/16 :goto_4

    .line 1175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 12
    .parameter "context"
    .parameter "mmiCode"
    .parameter "buttonCallbackMessage"
    .parameter "previousAlert"

    .prologue
    const v11, 0x7f0d002d

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 977
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayMMIInitiate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 978
    if-eqz p3, :cond_0

    .line 979
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 1011
    :cond_0
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v5, :cond_1

    .line 1012
    const-string v5, "running USSD code, displaying indeterminate progress."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1014
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1015
    .local v2, pd:Landroid/app/ProgressDialog;
    const-string v4, ""

    .line 1017
    .local v4, textmsg:Ljava/lang/CharSequence;
    :try_start_0
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v5}, Lcom/android/internal/telephony/IExtendedNetworkService;->getMmiRunningText()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1023
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extended NW displayMMIInitiate ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1025
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1026
    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1027
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1028
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1029
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1031
    sput-object p2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1033
    :try_start_1
    sget-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x3a98

    invoke-virtual {v5, p2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v5, v2

    .line 1060
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :goto_2
    return-object v5

    .line 1019
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    .restart local v4       #textmsg:Ljava/lang/CharSequence;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1020
    .local v0, e:Landroid/os/RemoteException;
    sput-object v9, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 1021
    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 1034
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 1035
    .local v0, e:Ljava/lang/NullPointerException;
    sput-object v9, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    goto :goto_1

    .line 1040
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v8

    .line 1042
    .local v1, isCancelable:Z
    :goto_3
    if-nez v1, :cond_3

    .line 1043
    const-string v5, "not a USSD code, displaying status toast."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1044
    const v5, 0x7f0d002c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1045
    .local v3, text:Ljava/lang/CharSequence;
    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move-object v5, v9

    .line 1047
    goto :goto_2

    .end local v1           #isCancelable:Z
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_2
    move v1, v7

    .line 1040
    goto :goto_3

    .line 1049
    .restart local v1       #isCancelable:Z
    :cond_3
    const-string v5, "running USSD code, displaying indeterminate progress."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1052
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1053
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1054
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1055
    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1056
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1058
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    move-object v5, v2

    .line 1060
    goto :goto_2
.end method

.method static displaySSInfo(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SuppServiceNotification;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .locals 3
    .parameter "phone"
    .parameter "context"
    .parameter "SSnoti"
    .parameter "dismissCallbackMessage"
    .parameter "previousAlert"

    .prologue
    const v2, 0x7f0d0290

    .line 1071
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1072
    .local v0, text:Ljava/lang/CharSequence;
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v1, :cond_1

    .line 1074
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_0

    .line 1146
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1147
    return-void

    .line 1077
    :pswitch_0
    const v1, 0x7f0d028e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1078
    goto :goto_0

    .line 1080
    :pswitch_1
    const v1, 0x7f0d028f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1081
    goto :goto_0

    .line 1083
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1084
    goto :goto_0

    .line 1086
    :pswitch_3
    const v1, 0x7f0d0291

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1087
    goto :goto_0

    .line 1089
    :pswitch_4
    const v1, 0x7f0d0292

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1090
    goto :goto_0

    .line 1092
    :pswitch_5
    const v1, 0x7f0d0293

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1093
    goto :goto_0

    .line 1095
    :pswitch_6
    const v1, 0x7f0d0294

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1096
    goto :goto_0

    .line 1098
    :pswitch_7
    const v1, 0x7f0d0295

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1099
    goto :goto_0

    .line 1101
    :pswitch_8
    const v1, 0x7f0d0296

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1106
    :cond_1
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1108
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1111
    :pswitch_9
    const v1, 0x7f0d0297

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1112
    goto :goto_0

    .line 1114
    :pswitch_a
    const v1, 0x7f0d0298

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1115
    goto :goto_0

    .line 1117
    :pswitch_b
    const v1, 0x7f0d0299

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1118
    goto :goto_0

    .line 1120
    :pswitch_c
    const v1, 0x7f0d029a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1121
    goto :goto_0

    .line 1123
    :pswitch_d
    const v1, 0x7f0d029b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1124
    goto :goto_0

    .line 1126
    :pswitch_e
    const v1, 0x7f0d029c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1127
    goto/16 :goto_0

    .line 1129
    :pswitch_f
    const v1, 0x7f0d029d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1130
    goto/16 :goto_0

    .line 1132
    :pswitch_10
    const v1, 0x7f0d029e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1133
    goto/16 :goto_0

    .line 1135
    :pswitch_11
    const v1, 0x7f0d029f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1136
    goto/16 :goto_0

    .line 1138
    :pswitch_12
    const v1, 0x7f0d02a0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1139
    goto/16 :goto_0

    .line 1141
    :pswitch_13
    const v1, 0x7f0d02a1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1074
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1108
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method static dumpCallManager()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-string v5, "NO "

    const-string v9, "  Conn: "

    const-string v8, "  State: "

    const-string v6, "PhoneUtils"

    .line 2870
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2871
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2873
    const-string v2, "PhoneUtils"

    const-string v2, "############### dumpCallManager() ##############"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    const-string v2, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallManager: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2882
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2883
    const-string v3, " - FG call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "YES "

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2884
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2885
    const-string v2, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2886
    const-string v2, "  Conn: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2887
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2889
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2890
    const-string v3, " - BG call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "YES "

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2892
    const-string v2, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2893
    const-string v2, "  Conn: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2894
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2896
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2897
    const-string v3, " - RINGING call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "YES "

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2898
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2899
    const-string v2, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2900
    const-string v0, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 2905
    if-eqz v0, :cond_0

    .line 2906
    const-string v3, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2909
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2910
    const-string v4, " - FG call: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2911
    const-string v4, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2912
    const-string v4, "  Conn: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2913
    const-string v3, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2915
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2916
    const-string v4, " - BG call: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2917
    const-string v4, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2918
    const-string v4, "  Conn: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2919
    const-string v3, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2920
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2921
    const-string v3, " - RINGING call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2922
    const-string v3, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2923
    const-string v3, "  Conn: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2924
    const-string v0, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2883
    :cond_1
    const-string v4, "NO "

    move-object v4, v5

    goto/16 :goto_0

    .line 2890
    :cond_2
    const-string v4, "NO "

    move-object v4, v5

    goto/16 :goto_1

    .line 2897
    :cond_3
    const-string v4, "NO "

    move-object v4, v5

    goto/16 :goto_2

    .line 2928
    :cond_4
    const-string v0, "PhoneUtils"

    const-string v0, "############## END dumpCallManager() ###############"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    return-void
.end method

.method static dumpCallState()V
    .locals 9

    .prologue
    const-string v8, "PhoneUtils"

    .line 2759
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2760
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2761
    const-string v2, "PhoneUtils"

    const-string v2, "dumpCallState():"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    const-string v2, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Call state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const-string v3, "  - FG call: "

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 2765
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const-string v3, "  - BG call: "

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 2766
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const-string v3, "  - RINGING call: "

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 2768
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 2769
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 2770
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 2771
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    .line 2772
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2773
    const-string v7, "  - hasRingingCall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2774
    const-string v2, " hasActiveCall "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2775
    const-string v2, " hasHoldingCall "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2776
    const-string v2, " allLinesTaken "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2777
    const-string v2, "PhoneUtils"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2781
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2782
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v1, :cond_2

    .line 2783
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - CDMA call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    .line 2794
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - Ringer state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    return-void

    .line 2771
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2786
    :cond_2
    const-string v1, "PhoneUtils"

    const-string v1, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static dumpCallState(Lcom/android/internal/telephony/Phone;)V
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v9, " isAlive "

    const-string v8, " hasConnections "

    const-string v7, "PhoneUtils"

    .line 2798
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2799
    const-string v1, "PhoneUtils"

    const-string v1, "dumpCallState():"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2805
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2806
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2807
    const-string v3, "  - FG call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2808
    const-string v3, " isAlive "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2809
    const-string v3, " isRinging "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2810
    const-string v3, " isDialing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2811
    const-string v3, " isIdle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2812
    const-string v3, " hasConnections "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2813
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2816
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2817
    const-string v3, "  - BG call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2818
    const-string v3, " isAlive "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2819
    const-string v3, " isRinging "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2820
    const-string v3, " isDialing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2821
    const-string v3, " isIdle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2822
    const-string v3, " hasConnections "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2823
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2826
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2827
    const-string v3, "  - RINGING call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2828
    const-string v3, " isAlive "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2829
    const-string v3, " isRinging "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2830
    const-string v3, " isDialing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2831
    const-string v3, " isIdle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2832
    const-string v3, " hasConnections "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2833
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v5

    .line 2837
    :goto_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    .line 2838
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    .line 2839
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 2840
    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2841
    const-string v6, "  - hasRingingCall "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2842
    const-string v2, " hasActiveCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2843
    const-string v2, " hasHoldingCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2844
    const-string v2, " allLinesTaken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2845
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2849
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v1, :cond_5

    .line 2850
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - CDMA call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_0
    :goto_4
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    .line 2861
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - Ringer state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    return-void

    :cond_1
    move v2, v6

    .line 2836
    goto/16 :goto_0

    :cond_2
    move v3, v6

    .line 2837
    goto/16 :goto_1

    :cond_3
    move v4, v6

    .line 2838
    goto/16 :goto_2

    :cond_4
    move v5, v6

    .line 2839
    goto/16 :goto_3

    .line 2853
    :cond_5
    const-string v1, "PhoneUtils"

    const-string v1, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2747
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2748
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2749
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2750
    const-string v1, " isAlive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2751
    const-string v1, " isRinging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2752
    const-string v1, " isDialing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2753
    const-string v1, " isIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2754
    const-string v1, " hasConnections "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2755
    const-string v1, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    return-void
.end method

.method static explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 874
    :try_start_0
    const-string v1, "explicitCallTransfer"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 875
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    return-void

    .line 876
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 877
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "explicitCallTransfer: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 2629
    if-eqz p0, :cond_1

    .line 2630
    const-string v0, "tel"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2631
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2636
    :goto_0
    return-object v0

    .line 2633
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2636
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "PhoneUtils"

    .line 3185
    if-eqz p0, :cond_4

    .line 3187
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3188
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3189
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3196
    :goto_0
    if-eqz v0, :cond_4

    .line 3197
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 3198
    if-eqz v0, :cond_4

    .line 3200
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3201
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3202
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallNumber : voicemail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    :cond_0
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3209
    :goto_1
    return-object v0

    .line 3190
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 3192
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 3194
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3208
    :cond_4
    const-string v0, "PhoneUtils"

    const-string v0, "getCallNumber : number is null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1497
    const/4 v0, 0x0

    .line 1499
    if-eqz p1, :cond_0

    .line 1503
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1504
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1505
    check-cast v0, Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1506
    if-eqz v0, :cond_0

    .line 1507
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1536
    :cond_0
    :goto_0
    return-object v0

    .line 1510
    :cond_1
    instance-of v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_3

    .line 1512
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1517
    :goto_1
    if-nez v0, :cond_0

    .line 1520
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallerInfo: number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1524
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1525
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1526
    if-eqz v0, :cond_0

    .line 1527
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1528
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1530
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    .line 1515
    :cond_3
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method

.method static getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v5, "PhoneUtils"

    .line 3137
    .line 3138
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3139
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3140
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3143
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v2

    .line 3149
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3150
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3151
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x7f0d0028

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    .line 3153
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3154
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 3156
    if-nez v1, :cond_3

    .line 3157
    const-string v0, "PhoneUtils"

    const-string v0, "getCallerName : callerInfo is null"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 3182
    :goto_1
    return-object v0

    .line 3145
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 3146
    goto :goto_0

    .line 3161
    :cond_3
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3162
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 3181
    :goto_2
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3163
    :cond_4
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3164
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_2

    .line 3166
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 3168
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v0, v2, :cond_6

    .line 3170
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_2

    .line 3172
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3173
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v2, :cond_7

    .line 3174
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3175
    :cond_7
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v0, v2, :cond_8

    .line 3176
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_2

    :cond_9
    move-object v0, v4

    goto :goto_2
.end method

.method static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCompactNameFromCallerInfo: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1892
    const/4 v0, 0x0

    .line 1893
    if-eqz p0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1897
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1905
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1909
    :cond_1
    if-eqz p0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v1, :cond_4

    .line 1910
    const v0, 0x7f0d0008

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1917
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompactNameFromCallerInfo: compactName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1918
    return-object v0

    .line 1901
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 1911
    :cond_4
    if-eqz p0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v0, v1, :cond_5

    .line 1912
    const v0, 0x7f0d0009

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1914
    :cond_5
    const v0, 0x7f0d0007

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static getMute()Z
    .locals 3

    .prologue
    .line 2172
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2174
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2176
    if-eqz v1, :cond_0

    .line 2177
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2179
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    .line 2181
    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 1457
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1458
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1462
    const-string v2, "sip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1463
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1477
    :cond_0
    return-object v0

    .line 1469
    :cond_1
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1473
    const-string v2, "voicemail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1475
    :cond_2
    new-instance v0, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v0
.end method

.method static getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 2617
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2618
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2601
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2602
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2605
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2607
    :goto_0
    return-object v0

    .line 2606
    :catch_0
    move-exception v0

    .line 2607
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2582
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2583
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2586
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2588
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2590
    :goto_0
    return-object v0

    .line 2589
    :catch_0
    move-exception v0

    .line 2590
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2723
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Phone;

    .line 2724
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 2725
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v1

    .line 2726
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- pickPhoneBasedOnNumber:found SipPhone! obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, p0

    .line 2734
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHeadsetHook()..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2256
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 2328
    :goto_0
    return v0

    .line 2268
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    .line 2269
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    .line 2270
    :goto_2
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 2272
    :goto_3
    if-eqz v0, :cond_8

    .line 2275
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2276
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 2277
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    :goto_4
    move v0, v4

    .line 2328
    goto :goto_0

    :cond_1
    move v0, v3

    .line 2268
    goto :goto_1

    :cond_2
    move v1, v3

    .line 2269
    goto :goto_2

    :cond_3
    move v2, v3

    .line 2270
    goto :goto_3

    .line 2278
    :cond_4
    if-eq v0, v4, :cond_5

    const/4 v3, 0x3

    if-ne v0, v3, :cond_7

    .line 2280
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 2281
    const-string v0, "handleHeadsetHook: ringing (both lines in use) ==> answer!"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2282
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_4

    .line 2284
    :cond_6
    const-string v0, "handleHeadsetHook: ringing ==> answer!"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2285
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_4

    .line 2289
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2292
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_4
.end method

.method static hangup(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 512
    if-eqz p0, :cond_0

    .line 513
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static hangup(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "call"

    .prologue
    .line 489
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 491
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V

    .line 497
    :goto_0
    const/4 v2, 0x1

    .line 502
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :goto_1
    return v2

    .line 495
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 499
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call hangup: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static hangup(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, hungup:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 380
    .local v3, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 381
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 383
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 384
    const-string v4, "HANGUP ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 385
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 394
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hungup="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 396
    return v2

    .line 386
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 387
    const-string v4, "HANGUP foreground call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 388
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 390
    const-string v4, "HANGUP background call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 391
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "foreground"

    .prologue
    .line 444
    const-string v0, "hangup active call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 445
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "background"

    .prologue
    .line 449
    const-string v0, "hangup holding call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 450
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "phone"

    .prologue
    .line 459
    const/4 v2, 0x0

    .line 460
    .local v2, hungUpRingingCall:Z
    const/4 v1, 0x0

    .line 461
    .local v1, hungUpFgCall:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 462
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 465
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 466
    const-string v4, "endCallInternal: Hang up Ringing Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 467
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 471
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 472
    const-string v4, "endCallInternal: Hang up Foreground Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 473
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 476
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 8
    .parameter "ringing"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "No Ringing call to hangup"

    const-string v4, "hangup ringing call"

    .line 400
    const-string v3, "hangup ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopRing()V

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 406
    .local v1, phoneType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 411
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 412
    const-string v3, "hangup ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 413
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 436
    :goto_0
    return v3

    .line 414
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 415
    const-string v3, "hangup Call waiting call"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 417
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->sendCdmaCallWaitingReject()V

    move v3, v6

    .line 418
    goto :goto_0

    .line 423
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_1
    const-string v3, "No Ringing call to hangup"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v3, v5

    .line 424
    goto :goto_0

    .line 426
    .end local v2           #state:Lcom/android/internal/telephony/Call$State;
    :cond_2
    if-eq v1, v6, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 430
    :cond_3
    const-string v3, "hangup ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 432
    .restart local v2       #state:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_5

    .line 433
    :cond_4
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_0

    .line 435
    :cond_5
    const-string v3, "No Ringing call to hangup"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v3, v5

    .line 436
    goto :goto_0

    .line 439
    .end local v2           #state:Lcom/android/internal/telephony/Call$State;
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "call"

    .prologue
    .line 2354
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2355
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2356
    const/4 v2, 0x1

    .line 2359
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 2339
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasPhoneProviderExtras(Landroid/content/Intent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2545
    if-nez p0, :cond_0

    move v0, v2

    .line 2551
    :goto_0
    return v0

    .line 2548
    :cond_0
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2549
    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2551
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .parameter "cm"

    .prologue
    const/4 v4, 0x1

    .line 3222
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3223
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3224
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3226
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    .line 3236
    :goto_0
    return v3

    .line 3229
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    .line 3230
    goto :goto_0

    .line 3232
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    .line 3233
    goto :goto_0

    .line 3236
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static hideMmiDialog()V
    .locals 2

    .prologue
    .line 1374
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    const-string v0, "PhoneUtils"

    const-string v1, "Hide Mmi Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 1377
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    .line 1379
    :cond_0
    return-void
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V
    .locals 4
    .parameter "cm"

    .prologue
    .line 259
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    .line 264
    :cond_0
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, p0}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ussd.IExtendedNetworkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 269
    const-string v1, "Extended NW bindService IExtendedNetworkService"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method static isAnyKeyMode(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "anykey_mode"

    const-string v4, "answeringmode_auto_mode"

    .line 2983
    const-string v0, "anykey_mode"

    .line 2984
    const-string v0, "answeringmode_auto_mode"

    .line 2986
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "answeringmode_auto_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2987
    if-ge v0, v3, :cond_0

    move v0, v2

    .line 2997
    :goto_0
    return v0

    .line 2992
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "anykey_mode"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2993
    if-ge v0, v3, :cond_1

    move v0, v2

    .line 2995
    goto :goto_0

    :cond_1
    move v0, v3

    .line 2997
    goto :goto_0
.end method

.method static isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "reject_number"

    const-string v4, "autoreject_mode"

    .line 2934
    const-string v0, "isAutoRejectCall"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2935
    const-string v0, "com.sec.android.app.callsetting.allcalls"

    .line 2936
    const-string v0, "reject_num"

    .line 2938
    const-string v0, "reject_number"

    .line 2939
    const-string v0, "reject_checked"

    .line 2940
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2941
    const-string v0, "autoreject_mode"

    .line 2942
    const-string v0, "unknown_mode"

    .line 2944
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "autoreject_mode"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2945
    if-ge v0, v8, :cond_0

    move v0, v7

    .line 2977
    :goto_0
    return v0

    .line 2949
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 2950
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unknown_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2951
    if-lez v3, :cond_2

    .line 2953
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v0, v3, :cond_1

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v8

    .line 2955
    goto :goto_0

    .line 2957
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 2959
    const-string v3, "reject_checked=1"

    .line 2961
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2962
    if-nez v0, :cond_3

    .line 2963
    const-string v0, "isAutoRejectCall : cursor is null"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v7

    .line 2964
    goto :goto_0

    .line 2966
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2968
    :cond_4
    const-string v1, "reject_number"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2970
    invoke-static {v1, v6}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2971
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 2972
    goto :goto_0

    .line 2974
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2976
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 2977
    goto :goto_0
.end method

.method static isConferenceCall(Lcom/android/internal/telephony/Call;)Z
    .locals 6
    .parameter "call"

    .prologue
    const/4 v5, 0x1

    .line 1943
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1944
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 1945
    .local v2, phoneType:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 1946
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    .line 1947
    .local v3, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_2

    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v4, v5

    .line 1958
    .end local v3           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :goto_0
    return v4

    .line 1953
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1954
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    move v4, v5

    .line 1955
    goto :goto_0

    .line 1958
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static isDisconnecting(Lcom/android/internal/telephony/CallManager;)Z
    .locals 4
    .parameter "cm"

    .prologue
    .line 3213
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 3214
    .local v2, ringCall:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3215
    .local v1, fgCall:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3216
    .local v0, bgCall:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isMultiCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 4
    .parameter "cm"

    .prologue
    const/4 v3, 0x0

    .line 1981
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1982
    .local v1, foreCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1983
    .local v0, backCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1985
    :goto_0
    return v2

    .line 1984
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1985
    goto :goto_0
.end method

.method static isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter

    .prologue
    .line 2687
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2693
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2695
    if-eqz v0, :cond_0

    .line 2696
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2699
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 2738
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isRoutableViaGateway(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 2651
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2659
    :goto_0
    return v0

    .line 2654
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2655
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2656
    goto :goto_0

    .line 2658
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2659
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 2063
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 2064
    invoke-virtual {p0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method static isWebExEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v0, "com.cisco.webex.meetings"

    .line 3240
    .line 3241
    const-string v0, "com.cisco.webex.meetings"

    .line 3243
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3244
    if-eqz v0, :cond_0

    .line 3245
    const-string v1, "com.cisco.webex.meetings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 3248
    :cond_0
    const-string v0, "com.cisco.webex.meetings"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3258
    const-string v1, "share"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3260
    const-string v1, "SignInFlag"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWebExEnabled : bSignInOrNot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3262
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .line 3250
    :catch_0
    move-exception v0

    .line 3251
    const-string v0, "isWebExEnabled : NameNotFoundException"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v4

    .line 3252
    goto :goto_0

    .line 3253
    :catch_1
    move-exception v0

    .line 3254
    const-string v1, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 3255
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2865
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    return-void
.end method

.method static mergeCalls()V
    .locals 1

    .prologue
    .line 924
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 925
    return-void
.end method

.method static mergeCalls(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    const-string v4, "mergeCalls"

    .line 928
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 929
    .local v2, phoneType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 930
    const-string v3, "mergeCalls"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 931
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 932
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_0

    .line 935
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 942
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 952
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    :try_start_0
    const-string v3, "mergeCalls"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallManager;->conference(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 949
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeCalls: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0d0007

    .line 2495
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, p2

    .line 2531
    :goto_0
    return-object v0

    .line 2497
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2503
    const v0, 0x7f0d01d9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v0, :cond_6

    .line 2505
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2506
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    iput v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2514
    :goto_1
    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v1, v2, :cond_2

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v1, p3, :cond_4

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v1, :cond_4

    .line 2517
    :cond_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v1

    .line 2518
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 2520
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_5

    .line 2521
    const v0, 0x7f0d0008

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2525
    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpecialCnap: number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; presentation now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2527
    iput v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2530
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyForSpecialCnapCases: returning number string="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2522
    :cond_5
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v1, v2, :cond_3

    .line 2523
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, p2

    goto :goto_1
.end method

.method static okToAddCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 11
    .parameter "cm"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2421
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 2424
    .local v6, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    .line 2449
    :goto_0
    return v8

    .line 2428
    :cond_0
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2429
    .local v7, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 2430
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 2434
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2435
    .local v1, app:Lcom/android/phone/PhoneApp;
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_1

    iget-object v8, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getAddCallMenuStateAfterCallWaiting()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_0

    :cond_1
    move v8, v9

    goto :goto_0

    .line 2437
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :cond_2
    if-eq v7, v10, :cond_3

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    .line 2444
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    .line 2445
    .local v5, hasRingingCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 2446
    .local v3, hasActiveCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 2447
    .local v4, hasHoldingCall:Z
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    move v0, v10

    .line 2449
    .local v0, allLinesTaken:Z
    :goto_1
    if-nez v5, :cond_6

    if-nez v0, :cond_6

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v8, :cond_4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v8, :cond_4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_6

    :cond_4
    move v8, v10

    goto :goto_0

    .end local v0           #allLinesTaken:Z
    :cond_5
    move v0, v9

    .line 2447
    goto :goto_1

    .restart local v0       #allLinesTaken:Z
    :cond_6
    move v8, v9

    .line 2449
    goto :goto_0

    .line 2455
    .end local v0           #allLinesTaken:Z
    .end local v3           #hasActiveCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    :cond_7
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2398
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2399
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2401
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2402
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    .line 2410
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :goto_0
    return v2

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_0
    move v2, v4

    .line 2402
    goto :goto_0

    .line 2410
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2371
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2372
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2375
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2376
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_0

    move v2, v4

    .line 2385
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :goto_0
    return v2

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_0
    move v2, v5

    .line 2376
    goto :goto_0

    .line 2378
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    if-eq v1, v4, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 2385
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_0

    .line 2389
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pickPhoneBasedOnNumber: scheme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sipUri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2715
    if-eqz p3, :cond_0

    .line 2716
    invoke-static {p0, p3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2717
    if-eqz v0, :cond_0

    .line 2719
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method static placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 10
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"

    .prologue
    .line 594
    const/4 v6, 0x0

    .line 596
    .local v6, status:I
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "placeCall: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 598
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 599
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===> phone.dial() returned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 601
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 604
    .local v5, phoneType:I
    if-nez v1, :cond_2

    .line 605
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 606
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dialed MMI code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 607
    const/4 v6, 0x1

    .line 609
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_0

    .line 611
    :try_start_1
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v8, p1}, Lcom/android/internal/telephony/IExtendedNetworkService;->setMmiString(Ljava/lang/String;)V

    .line 612
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extended NW bindService setUssdString ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 659
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v5           #phoneType:I
    :cond_0
    :goto_0
    return v6

    .line 613
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 614
    .local v3, e:Landroid/os/RemoteException;
    const/4 v8, 0x0

    :try_start_2
    sput-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 654
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #phoneType:I
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 655
    .local v4, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "PhoneUtils"

    const-string v9, "Exception from phone.dial()"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    const/4 v6, 0x2

    goto :goto_0

    .line 618
    .end local v4           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    .line 621
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 623
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 624
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 632
    :cond_3
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v2, "content"

    .line 633
    .local v2, content:Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 634
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 635
    .local v7, userDataObject:Ljava/lang/Object;
    if-nez v7, :cond_5

    .line 636
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 649
    .end local v7           #userDataObject:Ljava/lang/Object;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 652
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 641
    .restart local v7       #userDataObject:Ljava/lang/Object;
    :cond_5
    instance-of v8, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v8, :cond_6

    .line 642
    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .end local v7           #userDataObject:Ljava/lang/Object;
    iput-object p2, v7, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_1

    .line 644
    .restart local v7       #userDataObject:Ljava/lang/Object;
    :cond_6
    check-cast v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v7           #userDataObject:Ljava/lang/Object;
    iget-object v8, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v8, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method static placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I
    .locals 11
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "gatewayUri"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x2

    const-string v9, "PhoneUtils"

    .line 770
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCallVia: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' GW:\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 774
    if-eqz p4, :cond_0

    const-string v6, "tel"

    invoke-virtual {p4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 775
    :cond_0
    const-string v6, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported URL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 832
    :goto_0
    return v6

    .line 784
    :cond_1
    invoke-virtual {p4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, gatewayNumber:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6, p1, v3}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 793
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    :goto_1
    if-nez v1, :cond_2

    .line 794
    const-string v6, "PhoneUtils"

    const-string v6, "Got null connection."

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 795
    goto :goto_0

    .line 788
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 789
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "PhoneUtils"

    const-string v6, "Exception dialing gateway"

    invoke-static {v9, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    const/4 v1, 0x0

    .restart local v1       #connection:Lcom/android/internal/telephony/Connection;
    goto :goto_1

    .line 798
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 799
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v8, :cond_7

    const/4 v6, 0x1

    move v5, v6

    .line 801
    .local v5, phoneIsCdma:Z
    :goto_2
    if-eqz v5, :cond_3

    .line 802
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 806
    :cond_3
    if-eqz v5, :cond_4

    .line 807
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 809
    :cond_4
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 810
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 811
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 816
    const/4 v4, 0x0

    .line 818
    .local v4, info:Lcom/android/internal/telephony/CallerInfo;
    const-string v6, "content"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 819
    invoke-static {p0, p3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 825
    :cond_5
    if-nez v4, :cond_6

    .line 826
    invoke-static {p0, p2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 828
    :cond_6
    iput-object p2, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 829
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 831
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    move v6, v10

    .line 832
    goto :goto_0

    .end local v4           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #phoneIsCdma:Z
    :cond_7
    move v5, v10

    .line 799
    goto :goto_2
.end method

.method static playCallConnectTone(Landroid/content/Context;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "call_conn_tone"

    .line 3025
    const-string v0, "call_conn_tone"

    .line 3026
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3029
    if-eqz v0, :cond_1

    const-string v1, "XEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "KPN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "O2U"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3030
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_conn_tone"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3034
    :goto_0
    if-ge v0, v2, :cond_2

    .line 3036
    const-string v0, "call connect tone is unchecked"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v3

    .line 3048
    :goto_1
    return v0

    .line 3032
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_conn_tone"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 3039
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 3041
    goto :goto_1

    .line 3044
    :cond_3
    const/high16 v0, 0x7f06

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/phone/PhoneUtils;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mCallConnectedToneHandle:Landroid/media/MediaPlayer;

    .line 3045
    sget-object v0, Lcom/android/phone/PhoneUtils;->mCallConnectedToneHandle:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 3046
    const-string v0, "playCallConnectTone : excuted"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :cond_4
    move v0, v2

    .line 3048
    goto :goto_1
.end method

.method static playCallEndTone(Landroid/content/Context;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v3, "call_end_tone"

    .line 3003
    const-string v0, "call_end_tone"

    .line 3004
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_end_tone"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3005
    if-ge v0, v2, :cond_0

    .line 3007
    const-string v0, "call disconnect tone is unchecked"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3008
    const/4 v0, 0x0

    .line 3021
    :goto_0
    return v0

    .line 3010
    :cond_0
    const v0, 0x7f060001

    new-instance v1, Lcom/android/phone/PhoneUtils$5;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$5;-><init>()V

    invoke-static {p0, v0, v1, p1}, Lcom/android/phone/PhoneUtils;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

    .line 3018
    sget-object v0, Lcom/android/phone/PhoneUtils;->mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 3019
    const-string v0, "playCallEndTone : excuted"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :cond_1
    move v0, v2

    .line 3021
    goto :goto_0
.end method

.method static playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;I)Landroid/media/MediaPlayer;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const-string v8, "create failed:"

    const-string v7, "PhoneUtils"

    .line 3069
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 3070
    if-eqz v0, :cond_2

    .line 3072
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 3073
    if-nez v6, :cond_0

    move-object v0, v9

    .line 3117
    :goto_0
    return-object v0

    .line 3074
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 3075
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 3076
    if-nez p3, :cond_3

    .line 3077
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3081
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 3083
    if-nez p2, :cond_4

    .line 3084
    new-instance v1, Lcom/android/phone/PhoneUtils$6;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$6;-><init>()V

    .line 3092
    :goto_2
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3095
    new-instance v1, Lcom/android/phone/PhoneUtils$7;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3104
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 3106
    :catch_0
    move-exception v0

    .line 3107
    const-string v1, "PhoneUtils"

    const-string v1, "create failed:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    move-object v0, v9

    .line 3117
    goto :goto_0

    .line 3078
    :cond_3
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 3079
    const/16 v1, 0xb

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 3109
    :catch_1
    move-exception v0

    .line 3110
    const-string v1, "PhoneUtils"

    const-string v1, "create failed:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 3112
    :catch_2
    move-exception v0

    .line 3113
    const-string v1, "PhoneUtils"

    const-string v1, "create failed:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    move-object v1, p2

    goto :goto_2
.end method

.method static restoreMuteState()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 887
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 890
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 893
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_4

    .line 895
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 898
    .local v2, phoneType:I
    const/4 v3, 0x0

    .line 904
    .local v3, shouldMute:Ljava/lang/Boolean;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 905
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #shouldMute:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .line 911
    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 912
    const-string v4, "problem retrieving mute value for this connection."

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 913
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 917
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    move-object v4, v3

    .line 920
    .end local v2           #phoneType:I
    .end local v3           #shouldMute:Ljava/lang/Boolean;
    :goto_1
    return-object v4

    .line 907
    .restart local v2       #phoneType:I
    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    :cond_2
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 909
    :cond_3
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #shouldMute:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    goto :goto_0

    .line 920
    .end local v2           #phoneType:I
    .end local v3           #shouldMute:Ljava/lang/Boolean;
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1
.end method

.method static restoreSpeakerMode(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 2054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreSpeakerMode, restoring to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2057
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    if-eq v0, v1, :cond_0

    .line 2058
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2060
    :cond_0
    return-void
.end method

.method static sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 841
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 842
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 843
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 845
    const-string v1, "PhoneUtils"

    const-string v2, "onReceive: (CDMA) sending empty flash to network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 849
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_0
    return-void
.end method

.method static separateCall(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 956
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "separateCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    return-void

    .line 958
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 959
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "separateCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static setAudioMode()V
    .locals 1

    .prologue
    .line 2205
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2206
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "PhoneUtils"

    .line 2212
    const-string v0, "PhoneUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioMode()..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2215
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2217
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 2218
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->setAudioMode()V

    .line 2219
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 2221
    if-eq v1, v0, :cond_0

    .line 2228
    :goto_0
    return-void

    .line 2225
    :cond_0
    const-string v0, "PhoneUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioMode() no change: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->audioModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setAudioModeInAnswering(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter

    .prologue
    .line 2190
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2191
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2194
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2196
    instance-of v1, v1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2197
    const-string v1, "PhoneUtils"

    const-string v2, "setAudioModeInAnswering() : force set to MODE_IN_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 2202
    :goto_0
    return-void

    .line 2200
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto :goto_0
.end method

.method static setMute(Z)V
    .locals 5
    .parameter "muted"

    .prologue
    .line 2132
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2135
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 2140
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2141
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2142
    const-string v3, "problem retrieving mute value for this connection."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2144
    :cond_0
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2146
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :cond_1
    return-void
.end method

.method private static setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMuteInternal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2153
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2154
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2156
    if-eqz v0, :cond_0

    .line 2157
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 2159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMicrophoneMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 2164
    :goto_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    .line 2165
    return-void

    .line 2162
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_0
.end method

.method static showHidedMmiDialog()V
    .locals 2

    .prologue
    .line 1366
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1367
    const-string v0, "showHidedMmiDialog..."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1368
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1369
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    .line 1371
    :cond_0
    return-void
.end method

.method static startCallConnectedVibration(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "vibration_call_connected"

    .line 3052
    const-string v0, "vibration_call_connected"

    .line 3053
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibration_call_connected"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCallConnectedVibration : setting - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3057
    if-ge v0, v3, :cond_0

    move v0, v4

    .line 3064
    :goto_0
    return v0

    .line 3060
    :cond_0
    if-ne v0, v3, :cond_1

    .line 3061
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    .line 3062
    const/16 v1, 0xe

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrateImmVibe(II)V

    :cond_1
    move v0, v3

    .line 3064
    goto :goto_0
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const-string v8, ", Name/Number Pres="

    .line 1580
    if-nez p1, :cond_0

    .line 1582
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1583
    iput-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1770
    :goto_0
    return-object v1

    .line 1616
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 1617
    instance-of v1, v2, Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1619
    new-instance v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1620
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1621
    move-object v0, v2

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    sget-object v4, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v1, v4, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v1

    iput-object v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1623
    iget-object v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1624
    iput-boolean v7, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1626
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: query based on Uri: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 1630
    :cond_1
    if-nez v2, :cond_4

    .line 1633
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1636
    const-string v2, "###### PhoneUtils.startGetCallerInfo: new query for phone number #####"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- number (address): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 1641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- phoneType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1642
    packed-switch v2, :pswitch_data_0

    .line 1647
    const-string v2, "  ==> Unknown phone type"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1651
    :goto_1
    new-instance v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1652
    new-instance v3, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1656
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1657
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1659
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1660
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: CNAP Info from FW(1): name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Name/Number Pres="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1670
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1673
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v3, v1, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1676
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1680
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_2

    .line 1681
    iput-boolean v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1699
    :goto_2
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: query based on number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, v2

    .line 1703
    goto/16 :goto_0

    .line 1643
    :pswitch_0
    const-string v2, "  ==> PHONE_TYPE_NONE"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1644
    :pswitch_1
    const-string v2, "  ==> PHONE_TYPE_GSM"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1645
    :pswitch_2
    const-string v2, "  ==> PHONE_TYPE_CDMA"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1646
    :pswitch_3
    const-string v2, "  ==> PHONE_TYPE_SIP"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1683
    :cond_2
    const-string v3, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1684
    sget-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v1, v3, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1686
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v3, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1687
    iput-boolean v7, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_2

    .line 1695
    :cond_3
    const-string v3, "startGetCallerInfo: No query to start, send trivial reply."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1696
    iput-boolean v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_2

    .line 1703
    :cond_4
    instance-of v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_9

    .line 1705
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 1708
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    if-eqz v1, :cond_5

    .line 1709
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: query already running, adding listener: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 1715
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: updatedNumber initially = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1717
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1719
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1721
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1722
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1723
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1725
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v3, v1, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1728
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: updatedNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: CNAP Info from FW(2): name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Name/Number Pres="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1736
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_6

    .line 1737
    iput-boolean v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    :goto_3
    move-object v1, v2

    .line 1761
    goto/16 :goto_0

    .line 1739
    :cond_6
    sget-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v1, v3, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v1

    iput-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1741
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1742
    iput-boolean v7, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_3

    .line 1745
    :cond_7
    const-string v1, "startGetCallerInfo: No query to attach to, send trivial reply."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1746
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v1, :cond_8

    .line 1747
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1750
    :cond_8
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1752
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1753
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1754
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: CNAP Info from FW(3): name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Name/Number Pres="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1759
    iput-boolean v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_3

    .line 1763
    :cond_9
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1764
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    iput-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1765
    iput-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1766
    iput-boolean v6, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1768
    const-string v2, "startGetCallerInfo: query already done, returning CallerInfo"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static startNewCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1995
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1996
    const-string v0, "PhoneUtils"

    const-string v1, "startNewCall: can\'t add a new call in the current state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 2018
    :goto_0
    return-void

    .line 2002
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2003
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 2006
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2009
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2010
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2015
    const-string v1, "add_call_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2017
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "heldCall"

    .prologue
    .line 856
    :try_start_0
    const-string v2, "switchHoldingAndActive"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 857
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 858
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 860
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 865
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 866
    const/4 v2, 0x1

    .line 869
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :goto_1
    return v2

    .line 863
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 867
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 868
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchHoldingAndActive: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 869
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnSpeaker(flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2022
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 2024
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2026
    if-eqz p2, :cond_0

    .line 2027
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 2029
    :cond_0
    if-eqz p1, :cond_2

    .line 2030
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 2039
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2040
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2041
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2043
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2046
    :cond_1
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled(Z)V

    .line 2047
    return-void

    .line 2032
    :cond_2
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method

.method private static updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 581
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_0
.end method
