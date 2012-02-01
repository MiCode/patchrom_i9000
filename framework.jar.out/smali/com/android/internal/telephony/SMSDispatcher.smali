.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0x927c0

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x3e8

.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field protected static final EVENT_ALERT_TIMEOUT:I = 0x9

.field static final EVENT_DEVICE_READY:I = 0x13a

.field static final EVENT_GET_CB_RSP:I = 0x139

.field protected static final EVENT_GET_STORED_MSG_COUNT_RSP:I = 0x12

.field protected static final EVENT_ICC_AVAILABLE:I = 0x14

.field protected static final EVENT_ICC_FULL:I = 0x6

.field protected static final EVENT_NEW_BROADCAST_SMS:I = 0xd

.field static final EVENT_NEW_CB:I = 0x137

.field protected static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_NEW_SMS_ON_SIM:I = 0xf

.field protected static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x5

.field protected static final EVENT_POST_ALERT:I = 0x7

.field protected static final EVENT_RADIO_ON:I = 0xc

.field protected static final EVENT_READ_SMS_DONE:I = 0x10

.field protected static final EVENT_REPORT_MEMORY_STATUS_DONE:I = 0xb

.field protected static final EVENT_SEND_CONFIRMED_SMS:I = 0x8

.field protected static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_SET_CB_RSP:I = 0x138

.field protected static final EVENT_SET_MEMORY_RSP:I = 0x11

.field protected static final EVENT_SMS_NO_NETWORK_RESPONSE:I = 0x13

.field protected static final EVENT_STOP_SENDING:I = 0xa

.field protected static final EVENT_WRITE_SMS_DONE:I = 0x15

.field private static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field protected static final RAW_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SINGLE_PART_SMS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field private static boot_time:Z

.field private static cbConfig:Landroid/telephony/gsm/CbConfig;

.field private static current_sim_status:I

.field private static gcf_flag:Z

.field private static langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

.field private static languageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private static mFreeSlot:I

.field protected static mRemainingMessages:I

.field protected static mRemainingSlot:Z

.field private static mSmsMessage:Landroid/telephony/SmsMessage;

.field private static mSmsMessageBase:Lcom/android/internal/telephony/SmsMessageBase;

.field private static mTotalSlotcount:I

.field private static receive_storage_low_event:Z

.field private static receive_storage_ok_event:Z

.field private static replace_address:Ljava/lang/String;

.field private static replace_pid:I

.field private static sConcatenatedRef:I

.field private static sim_used_cnt:I


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private class2Sms:Landroid/telephony/SmsMessage;

.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mClass0MsgFlag:Z

.field protected mClass2MsgFlag:Z

.field private mClass2_replaceType:Z

.field protected mCm:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

.field private mGcfResultReceiver:Landroid/content/BroadcastReceiver;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected final mRawUri:Landroid/net/Uri;

.field private mReplaceMessageMatched:Z

.field protected mReportMemoryStatusPending:Z

.field protected mResolver:Landroid/content/ContentResolver;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mSimStatusChanged:Z

.field protected mSimStorageAvailable:Z

.field protected mStorageAvailable:Z

.field private mSubmitPduBase:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

.field private mfoundMatch:Z

.field protected read_pdu:Ljava/lang/String;

.field protected receive_intent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    new-array v0, v4, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    sget-object v1, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ENGLISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-boolean v3, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-char v4, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v3

    const-string v1, "sequence"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->mFreeSlot:I

    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_low_event:Z

    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_ok_event:Z

    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->boot_time:Z

    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 10
    .parameter "phone"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "raw"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    const/16 v4, 0x1388

    iput v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->WAKE_LOCK_TIMEOUT:I

    iput-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2MsgFlag:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mReplaceMessageMatched:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mGcfResultReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v4, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v4, p1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "sms_outgoing_check_interval_ms"

    const v6, 0x927c0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, check_period:I
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "sms_outgoing_check_max_count"

    const/16 v6, 0x3e8

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, max_count:I
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;-><init>(Lcom/android/internal/telephony/SMSDispatcher;II)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewSMS(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xf

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x13

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setSmsNetworkNoResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x14

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v9, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x6

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xc

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x137

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCB(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x13a

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DB_DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.DB_DEVICE_STORAGE_OK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, gcf_filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mGcfResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_low_event:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_low_event:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_ok_event:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_ok_event:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->boot_time:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/SMSDispatcher;->boot_time:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    return v0
.end method

.method private broadcastCbSettingsAvailable()V
    .locals 3

    .prologue
    const-string v1, "SMSDispatcher"

    const-string v2, "[CB]Entered broadcastCbSettingsAvailable method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private comparePageNumber(BI)Z
    .locals 11
    .parameter "sequence"
    .parameter "referenceNumber"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const-string v10, "SMSDispatcher"

    const-string v0, "SMSDispatcher"

    const-string v0, " [CB] In comparePageNumber in SMSDispathcher"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "reference_number ="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v8, where:Ljava/lang/StringBuilder;
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AND"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sequence ="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .local v7, cursorCount:I
    const-string v0, "SMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [CB] Number duplicates = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v7, v9, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method private concatenateCb(Landroid/telephony/gsm/CbMessage;B)V
    .locals 24
    .parameter "cbMsg"
    .parameter "totalPages"

    .prologue
    const-string v3, "SMSDispatcher"

    const-string v4, "[CB]Entered concatenateCb method"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getSn()S

    move-result v21

    .local v21, sn:S
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getRefNum()I

    move-result v19

    .local v19, referenceNumber:I
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] Reference number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPage()B

    move-result v9

    .local v9, currentPage:B
    const/16 v18, 0x0

    check-cast v18, [[B

    .local v18, pdus:[[B
    const/4 v10, 0x0

    .local v10, cursor:Landroid/database/Cursor;
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v3, "reference_number ="

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v23, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .local v11, cursorCount:I
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] number of matches = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->comparePageNumber(BI)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    sub-int v3, p2, v3

    if-ge v11, v3, :cond_1

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .local v22, values:Landroid/content/ContentValues;
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] Inserting into database. current page number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "reference_number"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "count"

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v3, "sequence"

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v3, "pdu"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_0

    .end local v11           #cursorCount:I
    .end local v22           #values:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .restart local v11       #cursorCount:I
    :cond_1
    const/4 v3, 0x1

    sub-int v3, p2, v3

    if-ne v11, v3, :cond_5

    :try_start_1
    const-string v3, "pdu"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .local v17, pduColumn:I
    const-string v3, "sequence"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .local v20, sequenceColumn:I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPageLength()I

    move-result v16

    .local v16, length:I
    mul-int v13, v16, p2

    .local v13, datalength:I
    move/from16 v0, p2

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v15, 0x1

    .local v15, i:I
    :goto_1
    if-gt v15, v11, :cond_2

    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] In for loop of concatenate method: cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v12, v3

    .local v12, cursorSequence:I
    const/4 v3, 0x1

    sub-int v3, v12, v3

    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v18, v3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .end local v12           #cursorSequence:I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPage()B

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v4

    aput-object v4, v18, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchCbPdus([[B)V

    if-eqz v10, :cond_0

    goto/16 :goto_0

    .end local v13           #datalength:I
    .end local v15           #i:I
    .end local v16           #length:I
    .end local v17           #pduColumn:I
    .end local v20           #sequenceColumn:I
    :cond_3
    const-string v3, "SMSDispatcher"

    const-string v4, "[CB] got duplicate message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_0

    goto/16 :goto_0

    .end local v11           #cursorCount:I
    :catch_0
    move-exception v3

    move-object v14, v3

    .local v14, e:Landroid/database/SQLException;
    :try_start_2
    const-string v3, "SMSDispatcher"

    const-string v4, "[CB] exception : Can\'t access multipart SMS database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_0

    goto/16 :goto_0

    .end local v14           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .restart local v11       #cursorCount:I
    :cond_5
    if-eqz v10, :cond_0

    goto/16 :goto_0
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private dispatchErrorCodeForGetCb(Lcom/android/internal/telephony/CommandException;)V
    .locals 3
    .parameter "getRsp"

    .prologue
    const-string v1, "SMSDispatcher"

    const-string v2, "[CB]In dispatchErrorCodeForGetCb method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.GET_CB_ERR_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "getRsp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private dispatchErrorCodeForSetCb(Lcom/android/internal/telephony/CommandException;)V
    .locals 3
    .parameter "setRsp"

    .prologue
    const-string v1, "SMSDispatcher"

    const-string v2, "[CB]In dispatchErrorCodeForSetCb method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SET_CB_ERR_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "setRsp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private duplicatedMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;)Z
    .locals 12
    .parameter "sms"
    .parameter "concatRef"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "reference_number ="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v8, where:Ljava/lang/StringBuilder;
    iget v0, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AND sequence = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AND address = ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .local v7, cursorCount:I
    const-string v0, "SMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seqNumber"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicatedMessage!! cursorCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    if-nez v7, :cond_1

    move v0, v9

    :goto_0
    return v0

    :cond_1
    move v0, v10

    goto :goto_0
.end method

.method private filterCbMsg(Landroid/telephony/gsm/CbMessage;)V
    .locals 9
    .parameter "cbMessage"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "[CB] No match found for language and MsgId\'s"

    const-string v5, "SMSDispatcher"

    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] filterCbMsg"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, matched:Z
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .local v1, lang:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    if-eqz v3, :cond_0

    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] The settings are: cbEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v4, v4, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selectedId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v4, v4, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgIdCount =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v4, v4, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgIdMaxCount =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v4, v4, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    if-nez v3, :cond_1

    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] CB is now disabled.It\'ll discard"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    if-ne v3, v7, :cond_3

    const/4 v2, 0x1

    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] all channels selected.So no filtering required"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v2, :cond_6

    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] No match found for msgId"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-eqz v3, :cond_2

    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] my channels selected. So  filtering is required"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v3, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v3, v3

    if-ge v0, v3, :cond_4

    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB ] msgID =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v4, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/telephony/gsm/CbMessage;->getMsgId()S

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v4, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v0

    if-ne v3, v4, :cond_5

    const/4 v2, 0x1

    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] found match for msgId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v4, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] no languages selected"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v3, v1, v0

    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] user selected language = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/gsm/CbMessage;->getLanguage()I

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v4

    if-ne v3, v4, :cond_8

    if-nez v2, :cond_9

    :cond_8
    invoke-virtual {p1}, Landroid/telephony/gsm/CbMessage;->getLanguage()I

    move-result v3

    sget-object v4, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_UNSPECIFIED:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v4}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v4

    if-ne v3, v4, :cond_a

    if-eqz v2, :cond_a

    :cond_9
    iput-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] found match for language and MsgId\'s"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] No match found for language and MsgId\'s"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    if-nez v3, :cond_c

    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] No match found for language and MsgId\'s"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] found match : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method private handleIccFull()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private isMultipartTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 2
    .parameter "tracker"

    .prologue
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v0, map:Ljava/util/HashMap;
    const-string v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNttDcmCarrierMailer([B)Z
    .locals 19
    .parameter "pdu"

    .prologue
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Rx: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .local v10, index:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #index:I
    .local v11, index:I
    aget-byte v16, p1, v10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v15, v0

    .local v15, transactionId:I
    add-int/lit8 v10, v11, 0x1

    .end local v11           #index:I
    .restart local v10       #index:I
    aget-byte v16, p1, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v14, v0

    .local v14, pduType:I
    const/4 v7, 0x0

    .local v7, headerLength:I
    const/16 v16, 0x6

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x7

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_0
    new-instance v13, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .local v13, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Length error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v7, v0

    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v16

    add-int/lit8 v10, v16, 0x2

    move v9, v10

    .local v9, headerStartIndex:I
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Content-Type error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v12

    .local v12, mimeType:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .local v3, applicationId:J
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v6, v0

    .local v6, binaryContentType:I
    const/16 v16, 0x30a

    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    const/16 v16, 0x44

    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    const/16 v16, 0x310

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    :cond_3
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CONTENT_TYPE_B_EMN? = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v10, v9, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v8

    .local v8, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v16, 0x2f

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .local v5, applicationIdObj:Ljava/lang/Object;
    move-object v0, v5

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    check-cast v5, Ljava/lang/Long;

    .end local v5           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_4
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "applicationId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8           #headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_5
    sparse-switch v6, :sswitch_data_0

    const/16 v16, 0x0

    goto/16 :goto_0

    :sswitch_0
    const-wide/32 v16, 0x9056

    cmp-long v16, v3, v16

    if-nez v16, :cond_6

    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : i-mode.net"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-wide/16 v16, 0x7

    cmp-long v16, v3, v16

    if-nez v16, :cond_7

    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : fota"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    :sswitch_2
    const-wide/32 v16, 0x905c

    cmp-long v16, v3, v16

    if-nez v16, :cond_8

    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : Carrier Mail"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_8
    const-wide/16 v16, 0x9

    cmp-long v16, v3, v16

    if-nez v16, :cond_9

    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : mopera U"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x30a -> :sswitch_2
        0x310 -> :sswitch_0
    .end sparse-switch
.end method

.method private isNttDcmSLC([B)Z
    .locals 19
    .parameter "pdu"

    .prologue
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Rx: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .local v10, index:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #index:I
    .local v11, index:I
    aget-byte v16, p1, v10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v15, v0

    .local v15, transactionId:I
    add-int/lit8 v10, v11, 0x1

    .end local v11           #index:I
    .restart local v10       #index:I
    aget-byte v16, p1, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v14, v0

    .local v14, pduType:I
    const/4 v7, 0x0

    .local v7, headerLength:I
    const/16 v16, 0x6

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x7

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_0
    new-instance v13, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .local v13, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Length error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v7, v0

    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v16

    add-int/lit8 v10, v16, 0x2

    move v9, v10

    .local v9, headerStartIndex:I
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Content-Type error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v12

    .local v12, mimeType:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .local v3, applicationId:J
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v6, v0

    .local v6, binaryContentType:I
    const/16 v16, 0x30

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CONTENT_TYPE_B_SLC? = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v16

    add-int v10, v10, v16

    invoke-virtual {v13, v10, v9, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v8

    .local v8, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v16, 0x2f

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .local v5, applicationIdObj:Ljava/lang/Object;
    move-object v0, v5

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    check-cast v5, Ljava/lang/Long;

    .end local v5           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_3
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "applicationId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8           #headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_4
    packed-switch v6, :pswitch_data_0

    const/16 v16, 0x0

    goto/16 :goto_0

    :pswitch_0
    const-wide/32 v16, 0x905f

    cmp-long v16, v3, v16

    if-nez v16, :cond_5

    const-string v16, "SMSDispatcher"

    const-string v17, "Receive SLC : storage syncML"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private rejectDuplicates([S)[S
    .locals 6
    .parameter "msgIDs"

    .prologue
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB]In rejectDuplicates of SMSDispatcher"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, messageId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Short;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    aget-short v3, p1, v0

    .local v3, val:S
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3           #val:S
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [S

    .local v2, ret:[S
    const/4 v0, 0x0

    .end local p0
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v4

    aput-short v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private setLanguageSettings([Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V
    .locals 3
    .parameter "languageId"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public GetCBEnableConfig()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v0, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    return v0
.end method

.method protected SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 1
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected abstract activateCellBroadcastSms(ILandroid/os/Message;)V
.end method

.method public cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V
    .locals 5
    .parameter "getRsp"

    .prologue
    const-string v4, "SMSDispatcher"

    const-string v2, "SMSDispatcher"

    const-string v2, "[CB]cacheCbsettings"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, msgId:[S
    iget-object v2, p1, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->rejectDuplicates([S)[S

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, p1, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    iput-boolean v3, v2, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    array-length v3, v1

    iput v3, v2, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, p1, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    iput-char v3, v2, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-object v1, v2, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, p1, Landroid/telephony/gsm/CbConfig;->selectedId:C

    iput-char v3, v2, Landroid/telephony/gsm/CbConfig;->selectedId:C

    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] cbEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectedId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgIdCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgIdMaxCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v2, v2, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB ] msgID =   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v3, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 8
    .parameter "intent"
    .parameter "permission"
    .parameter "isVailedSUPLHeader"

    .prologue
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected dispatchBroadcastPdus([[BZ)V
    .locals 5
    .parameter "pdus"
    .parameter "isEmergencyMessage"

    .prologue
    const-string v2, "pdus"

    const-string v4, "SMSDispatcher"

    const-string v3, "Dispatching "

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " emergency SMS CB pdus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SMS CB pdus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dispatchCbPdus([[B)V
    .locals 2
    .parameter "pdus"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchPdus([[B)V
    .locals 2
    .parameter "pdus"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected dispatchPdusToMobileTracker([[BLjava/lang/String;)V
    .locals 2
    .parameter "pdus"
    .parameter "intentAction"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 4
    .parameter "pdus"
    .parameter "port"

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewSMS(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetSmsNetworkNoResponse(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsAvailable(Landroid/os/Handler;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "SMSDispatcher"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x10403bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCbConfig()V
    .locals 2

    .prologue
    const/16 v1, 0x139

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, reply:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCbConfig(Landroid/os/Message;)V

    return-void
.end method

.method public getCbSettings()Landroid/telephony/gsm/CbConfig;
    .locals 4

    .prologue
    const-string v3, "SMSDispatcher"

    const-string v1, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMSDispathcher-CB] bCBEnabled =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v2, v2, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectedId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v2, v2, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgIdMaxCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v2, v2, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgIdCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v2, v2, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v1, v1, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v1, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CB] msgIDs =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v2, v2, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    return-object v1
.end method

.method protected abstract getCellBroadcastSmsConfig(Landroid/os/Message;)V
.end method

.method protected abstract handleBroadcastSms([B)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .parameter "msg"

    .prologue
    const-string v7, "class2"

    .local v7, smsc:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, pdu:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    sparse-switch v4, :sswitch_data_0

    .end local p1
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .restart local p1
    :sswitch_1
    const-string v4, "SMSDispatcher"

    const-string v5, "New SMS Message Received"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception processing incoming SMS. Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/telephony/SmsMessage;

    .local v31, sms:Landroid/telephony/SmsMessage;
    const-string v4, "ril.sms.gcf-mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, GcfMode:Ljava/lang/String;
    const-string v4, "On"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    :goto_1
    :try_start_0
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v4

    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v4, v5, :cond_7

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->isCphsMwiMessage()Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSMSavailable()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object/from16 v17, v4

    .local v17, ex:Ljava/lang/RuntimeException;
    const-string v4, "SMSDispatcher"

    const-string v5, "Exception dispatching message"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2MsgFlag:Z

    move v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v17           #ex:Ljava/lang/RuntimeException;
    :cond_2
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    goto :goto_1

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    if-eqz v4, :cond_4

    if-eqz v31, :cond_6

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->class2Sms:Landroid/telephony/SmsMessage;

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/SMSDispatcher;->replace_address:Ljava/lang/String;

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->replace_pid:I

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/16 v5, 0x12

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getStoredMessageCount(Landroid/os/Message;)V

    :cond_4
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mClass2MsgFlag:Z

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    goto :goto_2

    :cond_6
    const-string v4, "SMSDispatcher"

    const-string v5, "class2sms pdu is null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v4

    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    :goto_3
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v27

    .local v27, result:I
    const/4 v4, -0x1

    move/from16 v0, v27

    move v1, v4

    if-eq v0, v1, :cond_0

    const/16 v4, 0x8

    move/from16 v0, v27

    move v1, v4

    if-ne v0, v1, :cond_9

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v27           #result:I
    :cond_8
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mClass2MsgFlag:Z

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    goto :goto_3

    .restart local v27       #result:I
    :cond_9
    const/4 v4, 0x1

    move/from16 v0, v27

    move v1, v4

    if-ne v0, v1, :cond_a

    const/4 v4, 0x1

    move/from16 v20, v4

    .local v20, handled:Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2MsgFlag:Z

    move v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v27

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v20           #handled:Z
    :cond_a
    const/4 v4, 0x0

    move/from16 v20, v4

    goto :goto_4

    .end local v10           #GcfMode:Ljava/lang/String;
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v27           #result:I
    .end local v31           #sms:Landroid/telephony/SmsMessage;
    :sswitch_2
    const-string v4, "SMSDispatcher"

    const-string v5, "mSimStorageAvailable && mStorageAvailable OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v21, v0

    .local v21, index:[I
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_b

    move-object/from16 v0, v21

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    :cond_b
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SMSDispatcher] Error on SMS_ON_SIM with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ EF_SMS RECORD index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v21, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x0

    aget v5, v21, v5

    const/16 v6, 0x10

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->readSmsFromSim(ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v21           #index:[I
    .restart local p1
    :sswitch_3
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    .local v25, read_pdu:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x1

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    aput-object p1, v25, v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    move v4, v0

    if-eqz v4, :cond_13

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    if-ne v4, v5, :cond_f

    const/4 v4, 0x0

    :goto_5
    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    const/4 v4, 0x1

    aget-object v4, v25, v4

    const-string v5, "ff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] slot is empty slot."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->mFreeSlot:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->mFreeSlot:I

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    if-ge v4, v5, :cond_d

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReplaceMessageMatched:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/16 v6, 0x10

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->readSmsFromSim(ILandroid/os/Message;)V

    :cond_d
    :goto_6
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->mFreeSlot:I

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    if-eq v4, v5, :cond_e

    sget-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mReplaceMessageMatched:Z

    move v4, v0

    if-nez v4, :cond_0

    :cond_e
    const-string v4, "SMSDispatcher"

    const-string v5, "Replace message writes first!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->class2Sms:Landroid/telephony/SmsMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    move v4, v0

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x3

    const/16 v6, 0x15

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v7, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->mFreeSlot:I

    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_10
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] slot is used slot."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v25 .. v25}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v31

    .restart local v31       #sms:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    .local v14, current_address:Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v15

    .local v15, current_pid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->class2Sms:Landroid/telephony/SmsMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read msg : address= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incoming msg : address= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->replace_address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->replace_pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_11

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->replace_address:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->replace_pid:I

    if-ne v15, v4, :cond_11

    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matched Message, Overwrite index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/4 v6, 0x3

    const/16 v9, 0x15

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->writeIndexSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReplaceMessageMatched:Z

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    goto/16 :goto_6

    :cond_11
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    if-ge v4, v5, :cond_d

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReplaceMessageMatched:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/16 v6, 0x10

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->readSmsFromSim(ILandroid/os/Message;)V

    goto/16 :goto_6

    .end local v14           #current_address:Ljava/lang/String;
    .end local v15           #current_pid:I
    .end local v31           #sms:Landroid/telephony/SmsMessage;
    :cond_12
    const-string v4, "SMSDispatcher"

    const-string v5, "L3 ACK: SIM Memory Low!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x1

    aget-object v4, v25, v4

    const-string v5, "ff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "SMSDispatcher"

    const-string v5, "Writed Message Read!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v25 .. v25}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v31

    .restart local v31       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    goto/16 :goto_0

    .end local v31           #sms:Landroid/telephony/SmsMessage;
    :cond_14
    const-string v4, "SMSDispatcher"

    const-string v5, "Empty slot readed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v25           #read_pdu:[Ljava/lang/String;
    .restart local p1
    :sswitch_4
    const-string v4, "SMSDispatcher"

    const-string v5, "EVENT_ICC_AVAILABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] Calling getCbConfig"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCbConfig()V

    goto/16 :goto_0

    :sswitch_6
    :try_start_2
    const-string v4, "SMSDispatcher"

    const-string v5, "[SMSDispatcher] New CB Message Received"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_15

    const-string v4, "SMSDispatcher"

    const-string v5, "[CB]Exception processing incoming CB"

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .end local v11           #ar:Landroid/os/AsyncResult;
    :catch_1
    move-exception v4

    move-object/from16 v16, v4

    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v16           #e:Ljava/lang/Exception;
    .restart local v11       #ar:Landroid/os/AsyncResult;
    :cond_15
    :try_start_3
    iget-object v12, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Landroid/telephony/gsm/CbMessage;

    .local v12, cbMessage:Landroid/telephony/gsm/CbMessage;
    iget v13, v12, Landroid/telephony/gsm/CbMessage;->cbType:I

    .local v13, cbType:I
    move-object v0, v12

    iget v0, v0, Landroid/telephony/gsm/CbMessage;->message_length:I

    move/from16 v23, v0

    .local v23, message_length:I
    move-object v0, v12

    iget-object v0, v0, Landroid/telephony/gsm/CbMessage;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    .local v22, message:Ljava/lang/String;
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cbType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/telephony/gsm/CbMessage;->getCount()B

    move-result v32

    .local v32, totalPages:B
    move/from16 v0, v32

    new-array v0, v0, [[B

    move-object/from16 v24, v0

    .local v24, pdus:[[B
    const/4 v4, 0x0

    invoke-virtual {v12}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v5

    aput-object v5, v24, v4

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->filterCbMsg(Landroid/telephony/gsm/CbMessage;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    invoke-virtual {v12}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleBroadcastSms([B)V

    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] Received msg is matched with the settings"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] Received msg is not matched with the settings"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v12           #cbMessage:Landroid/telephony/gsm/CbMessage;
    .end local v13           #cbType:I
    .end local v22           #message:Ljava/lang/String;
    .end local v23           #message_length:I
    .end local v24           #pdus:[[B
    .end local v32           #totalPages:B
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .restart local p1
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .restart local p1
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .restart local p1
    :sswitch_a
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    move v4, v0

    if-nez v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    const/4 v4, 0x0

    aget v30, p1, v4

    .local v30, sim_status:I
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    check-cast p1, [I

    const/4 v4, 0x1

    aget v33, p1, v4

    .local v33, totalSlotcount:I
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_17

    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SmsDispatcher] Error on EVENT_ICC_FULL with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current_sim_status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sim_status[0]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    move v0, v4

    move/from16 v1, v30

    if-eq v0, v1, :cond_18

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    :goto_7
    sput v30, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    sput v33, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTotalSlotcount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    move v4, v0

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingSlot:Z

    const-string v4, "SMSDispatcher"

    const-string v5, "replace type message!! start slot scanning..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/16 v6, 0x10

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->readSmsFromSim(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_18
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    goto :goto_7

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    move v4, v0

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    move v4, v0

    if-eqz v4, :cond_1a

    const-string v4, "SMSDispatcher"

    const-string v5, "Sim Status Changed !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v4, v0

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    :cond_1a
    :goto_8
    const/4 v4, 0x1

    move/from16 v0, v30

    move v1, v4

    if-ne v0, v1, :cond_1d

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->class2Sms:Landroid/telephony/SmsMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v4, v0

    if-nez v4, :cond_1c

    const-string v4, "SMSDispatcher"

    const-string v5, "mSimStorageAvailable OK.. but mStorageAvailable is not OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SMSDispatcher"

    const-string v5, "send Nack without saving class2 message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x3

    const/16 v6, 0x15

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v7, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_1d
    const-string v4, "SMSDispatcher"

    const-string v5, "mSimStorage is not Available. so device cannot write sms to sim!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v4, v0

    if-nez v4, :cond_1e

    const-string v4, "SMSDispatcher"

    const-string v5, "L3 ACK: PDA & SIM Memory Low 1!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_1e
    const-string v4, "SMSDispatcher"

    const-string v5, "L3 ACK: SIM Memory Low!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v30           #sim_status:I
    .end local v33           #totalSlotcount:I
    .restart local p1
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v21, v0

    .restart local v21       #index:[I
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1f

    move-object/from16 v0, v21

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_20

    :cond_1f
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeSmsToSim Fail: exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_20
    const-string v4, "SMSDispatcher"

    const-string v5, "*****************************************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SMSDispatcher"

    const-string v5, "writeSmsToSim was processed successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SMSDispatcher"

    const-string v5, "*****************************************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v21           #index:[I
    .restart local p1
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .restart local p1
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/app/AlertDialog;

    check-cast v4, Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .local v28, sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object v4, v0

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v28           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_21
    :goto_9
    const-string v4, "SMSDispatcher"

    const-string v5, "EVENT_ALERT_TIMEOUT, message stop sending"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v4

    move-object/from16 v17, v4

    .local v17, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMSDispatcher"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .end local v17           #ex:Landroid/app/PendingIntent$CanceledException;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .restart local v28       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->isMultipartTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :goto_a
    const/16 v4, 0x9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_a

    .end local v28           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .restart local v28       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object v4, v0

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v28           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_b
    const/16 v4, 0x9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    :catch_3
    move-exception v4

    move-object/from16 v17, v4

    .restart local v17       #ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMSDispatcher"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .end local v17           #ex:Landroid/app/PendingIntent$CanceledException;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Memory status report to modem pending : mStorageAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_23
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    goto/16 :goto_0

    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    move v4, v0

    if-eqz v4, :cond_0

    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending pending memory status report : mStorageAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v5, v0

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_13
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] received response for getCb"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_24

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/telephony/gsm/CbConfig;

    .local v19, getRsp:Landroid/telephony/gsm/CbConfig;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->broadcastCbSettingsAvailable()V

    goto/16 :goto_0

    .end local v19           #getRsp:Landroid/telephony/gsm/CbConfig;
    :cond_24
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CB Exception] Received exception in get response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    .local v18, expt:Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchErrorCodeForGetCb(Lcom/android/internal/telephony/CommandException;)V

    goto/16 :goto_0

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v18           #expt:Lcom/android/internal/telephony/CommandException;
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_25

    const-string v4, "SMSDispatcher"

    const-string v5, "[CB]Exception processing cb config set request"

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/CommandException;

    .local v29, setRsp:Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchErrorCodeForSetCb(Lcom/android/internal/telephony/CommandException;)V

    goto/16 :goto_0

    .end local v29           #setRsp:Lcom/android/internal/telephony/CommandException;
    :cond_25
    const-string v4, "SMSDispatcher"

    const-string v5, "********************************************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SMSDispatcher"

    const-string v5, "[CB] SetCbConfig was processed successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SMSDispatcher"

    const-string v5, "********************************************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_26

    const-string v4, "SMSDispatcher"

    const-string v5, "General Response Failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x11

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .local v26, reply:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move v5, v0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .end local v26           #reply:Landroid/os/Message;
    :cond_26
    const-string v4, "SMSDispatcher"

    const-string v5, "reportSmsMemoryStatus set successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_d
        0x8 -> :sswitch_f
        0x9 -> :sswitch_e
        0xa -> :sswitch_10
        0xb -> :sswitch_11
        0xc -> :sswitch_12
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x11 -> :sswitch_15
        0x12 -> :sswitch_b
        0x13 -> :sswitch_0
        0x14 -> :sswitch_4
        0x15 -> :sswitch_c
        0x137 -> :sswitch_6
        0x138 -> :sswitch_14
        0x139 -> :sswitch_13
        0x13a -> :sswitch_5
    .end sparse-switch
.end method

.method protected handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "ss"
    .parameter "tracker"

    .prologue
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    const/4 v5, 0x5

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMSDispatcher"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .local v0, appName:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x10403c0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x10403c1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x10403c2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x10403c3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x9

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1770

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    const/4 v13, 0x3

    const/4 v11, -0x1

    const/4 v10, 0x1

    const-string v8, "SendNextMsg"

    const-string v12, "SMSDispatcher"

    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .local v5, sentIntent:Landroid/app/PendingIntent;
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_4

    const-string v8, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMS send complete. Broadcasting intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_0

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v2, v8, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    .local v2, messageRef:I
    iput v2, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2           #messageRef:I
    :cond_0
    if-eqz v5, :cond_2

    :try_start_0
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v8, v11, :cond_1

    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    sub-int/2addr v8, v10

    sput v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    :cond_1
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .local v4, sendNext:Landroid/content/Intent;
    const-string v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .end local v4           #sendNext:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_0

    :cond_4
    const-string v8, "SMSDispatcher"

    const-string v8, "SMS send failed"

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .local v6, ss:I
    if-eqz v6, :cond_5

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_5
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_6

    iget v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v8, v13, :cond_6

    iget v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {p0, v13, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, retryMsg:Landroid/os/Message;
    const-wide/16 v8, 0x7d0

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v3           #retryMsg:Landroid/os/Message;
    :cond_6
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_2

    const/4 v0, 0x1

    .local v0, error:I
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_7

    const/4 v0, 0x6

    :cond_7
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, fillIn:Landroid/content/Intent;
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_8

    const-string v9, "errorCode"

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v8, v8, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_8
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v8, v11, :cond_9

    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    sub-int/2addr v8, v10

    sput v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    :cond_9
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_a

    const-string v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a
    const-string v8, "SMSDispatcher"

    const-string v9, "Error cause is GENERIC"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .end local v1           #fillIn:Landroid/content/Intent;
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method protected abstract handleStatusReport(Landroid/os/AsyncResult;)V
.end method

.method protected processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I
    .locals 23
    .parameter "sms"
    .parameter "concatRef"
    .parameter "portAddrs"

    .prologue
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v4, "reference_number ="

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v22, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move v4, v0

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND address = ?"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .local v8, whereArgs:[Ljava/lang/String;
    const/16 v19, 0x0

    check-cast v19, [[B

    .local v19, pdus:[[B
    const/4 v10, 0x0

    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/SMSDispatcher;->duplicatedMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    if-eqz v10, :cond_0

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v4

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .local v11, cursorCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v11, v4, :cond_3

    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .local v21, values:Landroid/content/ContentValues;
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "reference_number"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "count"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "sequence"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_2

    const-string v4, "destination_port"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 v4, 0x1

    if-eqz v10, :cond_0

    goto/16 :goto_0

    .end local v21           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v4, "pdu"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .local v18, pduColumn:I
    const-string v4, "sequence"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .local v20, sequenceColumn:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move v0, v4

    new-array v0, v0, [[B

    move-object/from16 v19, v0

    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-ge v15, v11, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-object v0, v10

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v12, v4

    .local v12, cursorSequence:I
    const/4 v4, 0x1

    sub-int v4, v12, v4

    move-object v0, v10

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v19, v4

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v12           #cursorSequence:I
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    aput-object v5, v19, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz p3, :cond_9

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v4, v0

    const/16 v5, 0xb84

    if-ne v4, v5, :cond_8

    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v17, output:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    if-ge v15, v4, :cond_7

    aget-object v4, v19, v15

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v16

    .local v16, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v13

    .local v13, data:[B
    const/4 v4, 0x0

    array-length v5, v13

    move-object/from16 v0, v17

    move-object v1, v13

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .end local v11           #cursorCount:I
    .end local v13           #data:[B
    .end local v15           #i:I
    .end local v16           #msg:Landroid/telephony/SmsMessage;
    .end local v17           #output:Ljava/io/ByteArrayOutputStream;
    .end local v18           #pduColumn:I
    .end local v20           #sequenceColumn:I
    :catch_0
    move-exception v4

    move-object v14, v4

    .local v14, e:Landroid/database/SQLException;
    :try_start_2
    const-string v4, "SMSDispatcher"

    const-string v5, "Can\'t access multipart SMS database"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x2

    if-eqz v10, :cond_0

    goto/16 :goto_0

    .end local v14           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    .restart local v11       #cursorCount:I
    .restart local v15       #i:I
    .restart local v17       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #pduColumn:I
    .restart local v20       #sequenceColumn:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v4

    goto/16 :goto_1

    .end local v17           #output:Ljava/io/ByteArrayOutputStream;
    :cond_8
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    :goto_4
    const/4 v4, -0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_4
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "smsc"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "pdu"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v3, v1, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .local v2, ss:I
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #ss:I
    .end local v3           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected sendRawPduForMobileTracker([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "smsc"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "pdu"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v3, v1, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .local v2, ss:I
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsForMobileTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #ss:I
    .end local v3           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSmsForMobileTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendTextForMobileTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
.end method

.method public setCSCCbConfig(Z)Z
    .locals 5
    .parameter "cbEnable"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SMSDispatcher"

    const-string v2, "SMSDispatcher"

    const-string v2, "[CB] CSC UPDATE for CB CONFIG "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .local v0, cbSet:Landroid/telephony/gsm/CbConfig;
    iput-boolean p1, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    const/16 v2, 0x31

    iput-char v2, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    const/16 v2, 0x32

    iput-char v2, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    iput v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    new-array v2, v3, [S

    iput-object v2, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgIdCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgIdMaxCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bCBEnabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x138

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, reply:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V

    const/4 v2, 0x1

    return v2
.end method

.method public setCbConfig(ZCI[S[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V
    .locals 6
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"
    .parameter "languageId"

    .prologue
    const-string v5, "SMSDispatcher"

    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .local v0, cbSet:Landroid/telephony/gsm/CbConfig;
    iput-boolean p1, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    iput-char p2, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    iput-char v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    array-length v3, p4

    iput v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    iput-object p4, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/SMSDispatcher;->setLanguageSettings([Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V

    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SmsDispatcher-setCbConfig] bCBEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectedId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdMaxCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v3, v3

    if-ge v1, v3, :cond_0

    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgIDs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x138

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, reply:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V

    return-void
.end method

.method protected abstract setCellBroadcastConfig([ILandroid/os/Message;)V
.end method
