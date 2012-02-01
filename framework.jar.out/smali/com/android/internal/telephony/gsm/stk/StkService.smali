.class public Lcom/android/internal/telephony/gsm/stk/StkService;
.super Landroid/os/Handler;
.source "StkService.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/stk/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/StkService$1;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final EVENT_USSD_COMPLETE:I = 0x7

.field static final MSG_ID_CALL_CONTROL_RESULT:I = 0xd

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT:I = 0xe

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field static final MSG_ID_PHONE_DISCONNECT:I = 0xf

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RELEASE_COMPLETE_MESSAGE:I = 0x8

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SEND_DTMF_PAUSE:I = 0x10

.field static final MSG_ID_SEND_DTMF_RESULT:I = 0xb

.field static final MSG_ID_SEND_SMS_RESULT:I = 0xc

.field static final MSG_ID_SESSION_END:I = 0x1

.field private static final MSG_ID_SIM_LOADED:I = 0x14

.field static final MSG_ID_TIMEOUT:I = 0x9

.field private static final NOT_IN_USE:I = 0x0

.field static final STK_REFRESH:Ljava/lang/String; = "default refresh..."

.field static final STK_RESET:Ljava/lang/String; = "default reset..."

.field static final STK_SENDING:Ljava/lang/String; = "null alphaId, default sending..."

.field private static final WAITING_RELEASE_COMPLETE:I = 0x1

.field private static final WAITING_RELEASE_COMPLETE_TIME:I = 0x7530

.field static final WAITING_SEND_DTMF:I = 0x5

.field static final WAITING_SEND_DTMF_TIME:I = 0xdac

.field private static final WAITING_SETUP_CALL:I = 0x4

.field private static final WAITING_SETUP_CALL_HOLD_RESULT:I = 0x3

.field private static final WAITING_SETUP_CALL_HOLD_RESULT_TIME:I = 0x1388

.field private static final WAITING_SETUP_CALL_TIME:I = 0x2710

.field private static final WAITING_SMS_RESULT:I = 0x2

.field private static final WAITING_SMS_RESULT_TIME:I = 0xea60

.field private static final WAKE_LOCK_TIMEOUT:I = 0xfde8

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;


# instance fields
.field private isTerminalResponseForSEUPMENU:Z

.field private mCallControlResultCode:I

.field private mCallType:I

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

.field private mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mSendTerminalResponseExpectedByCallSetup:Z

.field private mSetupCallDisc:Z

.field private mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field private mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

.field private mTimeoutDest:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"
    .parameter "mSimSmsInt"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object p6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-static {p0, p4}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSendDTMFResult(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->createWakelock()V

    return-void
.end method

.method private cancelTimeOut()V
    .locals 1

    .prologue
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeMessages(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    return-void
.end method

.method private createWakelock()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "STKService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private eventDownload(III[BZ)V
    .locals 11
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p4, :cond_0

    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v1, v0, v4

    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .local v7, rawData:[B
    array-length v9, v7

    const/4 v10, 0x2

    sub-int v5, v9, v10

    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .local v3, hexString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gsm/stk/AppInterface;
    .locals 7

    .prologue
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/stk/StkService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/stk/StkService;
    .locals 9
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"
    .parameter "mSimSmsInt"
    .parameter "phone"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    if-nez v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v8, Landroid/os/HandlerThread;

    const-string v0, "Stk Telephony service"

    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v8, thread:Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    .end local v8           #thread:Landroid/os/HandlerThread;
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    goto :goto_0
.end method

.method private handleCallControlResultNoti(Ljava/lang/String;)V
    .locals 23
    .parameter "callcontrol_result"

    .prologue
    const/4 v15, 0x0

    .local v15, call_type:I
    const/4 v14, 0x0

    .local v14, callControlResultCode:I
    const/4 v12, 0x0

    .local v12, alphaidpresent:Z
    const/4 v11, 0x0

    .local v11, alphaid_len:I
    const/16 v4, 0x40

    new-array v10, v4, [B

    .local v10, alpha_id:[B
    const/16 v17, 0x0

    .local v17, length_of_mod:B
    const-string v22, ""

    .local v22, voicecall_ss_modified_address:Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, modified_ussd_string:Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, modified_sms_dest_address:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, callControlResult:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, rawData:[B
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v21

    const/4 v4, 0x0

    aget-byte v4, v21, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    const/4 v4, 0x1

    aget-byte v4, v21, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    const/4 v4, 0x1

    aget-byte v14, v21, v4

    const/4 v4, 0x0

    aget-byte v15, v21, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The call control result by SIM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    :try_start_0
    aget-byte v4, v21, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v12, 0x1

    :goto_0
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    const/16 v4, 0x40

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_1

    add-int/lit8 v4, v16, 0x4

    aget-byte v4, v21, v4

    aput-byte v4, v10, v16
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .end local v16           #i:I
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    :cond_1
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_8

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$CallType:[I

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_2
    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-eq v4, v5, :cond_2

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v13, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    move v4, v0

    if-eqz v4, :cond_9

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    :cond_4
    :goto_4
    return-void

    :pswitch_0
    const/16 v4, 0x46

    :try_start_1
    aget-byte v4, v21, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :cond_5
    const/16 v4, 0x48

    aget-byte v17, v21, v4

    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    add-int/lit8 v4, v16, 0x49

    aget-byte v4, v21, v4

    packed-switch v4, :pswitch_data_1

    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :pswitch_1
    add-int/lit8 v4, v16, 0x49

    aget-byte v5, v21, v4

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v21, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v16, 0x49

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v21

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_6

    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_6

    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    goto :goto_6

    .end local v16           #i:I
    :catch_1
    move-exception v4

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The Modified number by SIM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x1040429

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .local v18, message:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .end local v18           #message:Ljava/lang/CharSequence;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x1040429

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .restart local v18       #message:Ljava/lang/CharSequence;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .end local v18           #message:Ljava/lang/CharSequence;
    :pswitch_5
    const/16 v4, 0x48

    aget-byte v17, v21, v4

    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    add-int/lit8 v4, v16, 0x49

    aget-byte v4, v21, v4

    packed-switch v4, :pswitch_data_2

    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :pswitch_6
    add-int/lit8 v4, v16, 0x49

    aget-byte v5, v21, v4

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v21, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v16, 0x49

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v21

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_8

    :pswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_8

    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x104042a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .restart local v18       #message:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .end local v16           #i:I
    .end local v18           #message:Ljava/lang/CharSequence;
    :cond_8
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x104042b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .restart local v18       #message:Ljava/lang/CharSequence;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v13, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .end local v18           #message:Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    move v4, v0

    if-eqz v4, :cond_4

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    :goto_9
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    goto/16 :goto_4

    :cond_a
    const-string v4, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .locals 22
    .parameter "resMsg"

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x0

    .local v8, resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    const/4 v15, 0x0

    .local v15, helpRequired:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-result-object v4

    .local v4, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    const/4 v11, 0x0

    .local v11, calldisabledNoti:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v15, 0x1

    :pswitch_1
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    iget v5, v4, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    :cond_2
    :goto_1
    :pswitch_2
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:Z

    move v3, v0

    if-nez v3, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    move v3, v0

    if-eqz v3, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    move v15, v3

    :goto_2
    const-string v3, "gsm.STK_USER_SESSION"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    move v15, v3

    goto :goto_2

    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :pswitch_4
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    move v3, v0

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;-><init>(I)V

    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v16

    .local v16, input:Lcom/android/internal/telephony/gsm/stk/Input;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    move v3, v0

    if-nez v3, :cond_5

    if-nez v15, :cond_2

    new-instance v8, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    move v5, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    move v6, v0

    invoke-direct {v8, v3, v5, v6}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto/16 :goto_1

    :cond_5
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    move v3, v0

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Z)V

    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto/16 :goto_1

    .end local v16           #input:Lcom/android/internal/telephony/gsm/stk/Input;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v3, :cond_6

    const-string v3, "setup call address is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_6
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v17, intent:Landroid/content/Intent;
    if-nez v17, :cond_7

    const-string v3, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_7
    const/high16 v3, 0x1000

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    move v3, v0

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    .local v18, isInCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    .local v14, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .local v9, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    .local v21, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/4 v3, 0x1

    move/from16 v18, v3

    :goto_3
    if-eqz v18, :cond_11

    const-string v3, "phone is in call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_b

    const-string v3, "show Notification - Can\'t call by Incall"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v5, 0x10400be

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .local v19, message:Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const/4 v5, 0x1

    invoke-static {v3, v11, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .end local v19           #message:Ljava/lang/CharSequence;
    :cond_a
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_c

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->switchHoldingAndActive()V

    const/4 v3, 0x3

    const/16 v5, 0x1388

    move-object/from16 v0, p0

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move-object v12, v3

    .local v12, e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "fail to setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .end local v12           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_10

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v20

    .local v20, ringing:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v13

    .local v13, fg:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v10

    .local v10, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V

    :cond_d
    :goto_4
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :goto_5
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    const/4 v3, 0x4

    const/16 v4, 0x2710

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    goto/16 :goto_0

    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .restart local v10       #bg:Lcom/android/internal/telephony/Call;
    .restart local v13       #fg:Lcom/android/internal/telephony/Call;
    .restart local v20       #ringing:Lcom/android/internal/telephony/Call;
    :cond_e
    :try_start_2
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :catch_1
    move-exception v3

    move-object v12, v3

    .restart local v12       #e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "fail to setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .end local v12           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v10       #bg:Lcom/android/internal/telephony/Call;
    .restart local v13       #fg:Lcom/android/internal/telephony/Call;
    .restart local v20       #ringing:Lcom/android/internal/telephony/Call;
    :cond_f
    :try_start_3
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :cond_10
    const-string v3, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :cond_11
    const-string v3, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .end local v9           #backgroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v14           #foregroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #isInCall:Z
    .end local v21           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :pswitch_7
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:Z

    move v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfoData:I

    move v7, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 12
    .parameter "cmdParams"

    .prologue
    const v3, 0x104042c

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v11, "null alphaId, default sending..."

    const-string v5, "gsm.STK_SETUP_MENU"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .local v10, sessionEnd:Ljava/lang/Boolean;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {v7, p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .local v7, cmdMsg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v1, "Unsupported command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :pswitch_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    const-string v1, "gsm.STK_SETUP_MENU"

    const-string v1, ""

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local p1
    :cond_1
    :goto_1
    :pswitch_1
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.command"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, intent:Landroid/content/Intent;
    const-string v1, "STK CMD"

    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_0

    .end local v8           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_2
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "SETUP_MENU property Setting. -AAA"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_3

    const-string v1, "gsm.STK_SETUP_MENU"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    const/16 v2, 0x13

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "gsm.STK_SETUP_MENU"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "SETUP_MENU property Setting. -BBB"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "gsm.STK_SETUP_MENU"

    const-string v1, "SIM Toolkit"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    if-nez v1, :cond_1

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "here : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "default refresh..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    const v2, 0x1040427

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .local v9, message:Ljava/lang/CharSequence;
    :goto_2
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto/16 :goto_1

    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "default reset..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    const v2, 0x1040428

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .restart local v9       #message:Ljava/lang/CharSequence;
    goto :goto_2

    .end local v9           #message:Ljava/lang/CharSequence;
    :cond_6
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .restart local v9       #message:Ljava/lang/CharSequence;
    goto :goto_2

    .end local v9           #message:Ljava/lang/CharSequence;
    :pswitch_4
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendSS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_1

    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_8
    const-string v1, "wakelock for SS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_1

    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_a
    const-string v1, "wakelock for USSD"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_b

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_1

    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendSMS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_1

    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_d
    const-string v1, "wakelock for SMS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method private handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 18
    .parameter "cmdParams"

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    move-object v0, v3

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    move/from16 v16, v0

    .local v16, commandQualifier:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provide local info command Qualifier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v16, :pswitch_data_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v10, v0

    sget-object v11, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .local v15, calendar:Ljava/util/Calendar;
    const/4 v2, 0x0

    .local v2, res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    if-nez v15, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " d : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hh : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ss : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " zone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AM_PM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;

    .end local v2           #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v15, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0xa

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    :goto_1
    const/16 v7, 0xc

    invoke-virtual {v15, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xd

    invoke-virtual {v15, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xff

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;-><init>(IIIIIII)V

    .restart local v2       #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .end local v2           #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :cond_1
    const/16 v6, 0xa

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    goto :goto_1

    .end local v15           #calendar:Ljava/util/Calendar;
    :pswitch_2
    const/4 v8, 0x0

    .local v8, response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    .local v17, loc:Ljava/util/Locale;
    if-nez v17, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_2
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;

    .end local v8           #response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;-><init>(Ljava/lang/String;)V

    .restart local v8       #response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 13
    .parameter "cmdParams"

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xb

    const/16 v10, 0xa

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DTMF String is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    const/4 v9, 0x0

    aget-byte v2, v8, v9

    .local v2, rawDataLength:I
    mul-int/lit8 v8, v2, 0x2

    new-array v4, v8, [B

    .local v4, tempDTMFString:[B
    const/4 v5, 0x0

    .local v5, tempDTMFStringLength:I
    const/4 v6, 0x0

    .local v6, workingPtr:I
    const/4 v1, 0x0

    .local v1, i:I
    move v7, v6

    .end local v6           #workingPtr:I
    .local v7, workingPtr:I
    :goto_0
    if-ge v1, v2, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0xf

    int-to-byte v3, v8

    .local v3, temp:B
    if-ne v3, v12, :cond_1

    const/16 v3, 0x70

    :goto_1
    add-int/lit8 v6, v7, 0x1

    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    aput-byte v3, v4, v7

    add-int/lit8 v5, v5, 0x1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    int-to-byte v3, v8

    const/16 v8, 0xf

    if-eq v3, v8, :cond_0

    if-ne v3, v12, :cond_4

    const/16 v3, 0x70

    :goto_2
    add-int/lit8 v7, v6, 0x1

    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    aput-byte v3, v4, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v7

    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    goto :goto_0

    :cond_1
    if-ne v3, v10, :cond_2

    const/16 v3, 0x2a

    goto :goto_1

    :cond_2
    if-ne v3, v11, :cond_3

    const/16 v3, 0x23

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v3, 0x30

    int-to-byte v3, v8

    goto :goto_1

    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    :cond_4
    if-ne v3, v10, :cond_5

    const/16 v3, 0x2a

    goto :goto_2

    :cond_5
    if-ne v3, v11, :cond_6

    const/16 v3, 0x23

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v3, 0x30

    int-to-byte v3, v8

    goto :goto_2

    .end local v3           #temp:B
    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    :cond_7
    const-string v8, "wakelock for DTMF"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v9, 0xfde8

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    new-instance v8, Lcom/android/internal/telephony/gsm/stk/DtmfString;

    invoke-direct {v8, v5, v4}, Lcom/android/internal/telephony/gsm/stk/DtmfString;-><init>(I[B)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->processDTMFString()V

    return-void
.end method

.method private handleProactiveCommandSendSMS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 5
    .parameter "cmdParams"

    .prologue
    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Smscaddress is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Sms Pdu is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3, v4, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->sendRawPduSat([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const/4 v1, 0x2

    const v2, 0xea60

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    return-void
.end method

.method private handleProactiveCommandSendSS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 9
    .parameter "cmdParams"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v1, "ro.csc.sales_code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "ORO"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XFA"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XFM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OMN"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v1, 0x7530

    invoke-virtual {p0, v8, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    return-void

    .restart local p1
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local p1
    :catch_0
    move-exception v1

    move-object v7, v1

    .local v7, e:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "fail to send SS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_1
.end method

.method private handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 8
    .parameter "cmdParams"

    .prologue
    const/4 v7, 0x1

    const-string v6, "ro.csc.sales_code"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ussdString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdString:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget v1, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->dcsCode:I

    .local v1, dcsCode:I
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget v2, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdLength:I

    .local v2, ussdLength:I
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdString:[B

    .local v3, ussdString:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcsCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ORO"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "XFA"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "XFM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "XFC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "XFE"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "XFV"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "OMN"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendEncodedUssd([BII)V

    const/16 v4, 0x7530

    invoke-virtual {p0, v7, v4}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-boolean v7, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    goto :goto_0
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .locals 10
    .parameter "rilMsg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    .local v7, cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v1, v2, :cond_0

    iget-object v7, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .restart local v7       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v7, :cond_0

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_0

    :pswitch_3
    :try_start_0
    iget-object v9, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v1

    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_2
    iget-object v2, v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    :pswitch_4
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .restart local v7       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v7, :cond_0

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 9
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p2, :cond_0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .local v3, rawData:[B
    array-length v5, v3

    sub-int v2, v5, v8

    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;Lcom/android/internal/telephony/gsm/stk/ResponseData;)V
    .locals 8
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "data"
    .parameter "resp"

    .prologue
    const-string v6, " sendTerminalResponse"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v6, "(cmdDet == null) "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    .local v5, tag:I
    iget-boolean v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_1

    or-int/lit16 v5, v5, 0x80

    :cond_1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    .local v3, length:I
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_7

    const-string v6, " making Send SS Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    if-eqz v6, :cond_2

    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    add-int/lit8 v3, v6, 0x1

    :cond_2
    if-nez v3, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    const-string v6, " SS Release complete error info "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x34

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    const/4 v4, 0x0

    .local v4, rawData:[B
    :try_start_0
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_4

    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v4           #rawData:[B
    :cond_4
    :goto_3
    if-eqz p4, :cond_5

    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .restart local v4       #rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .local v2, hexString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    .end local v2           #hexString:Ljava/lang/String;
    .end local v4           #rawData:[B
    :cond_6
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .restart local v4       #rawData:[B
    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #rawData:[B
    :cond_7
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_4

    const-string v6, " making Send USSD Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v6, " USSD result error "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x37

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x0

    .restart local v4       #rawData:[B
    :try_start_1
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_4

    const/4 v6, 0x0

    aget-byte v6, v4, v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_8

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v4, v6

    :cond_8
    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :catch_1
    move-exception v6

    move-object v1, v6

    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #rawData:[B
    :cond_9
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x0

    .restart local v4       #rawData:[B
    :try_start_2
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    :goto_5
    if-eqz v4, :cond_4

    const/4 v6, 0x1

    aget-byte v6, v4, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v6, 0x0

    aget-byte v6, v4, v6

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v6, 0x2

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_3

    :catch_2
    move-exception v6

    move-object v1, v6

    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V
    .locals 8
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v4

    .local v4, tag:I
    iget-boolean v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_1

    or-int/lit16 v4, v4, 0x80

    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_4

    move v2, v6

    .local v2, length:I
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_2

    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .local v3, rawData:[B
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .local v1, hexString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TERMINAL RESPONSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    .end local v1           #hexString:Ljava/lang/String;
    .end local v2           #length:I
    .end local v3           #rawData:[B
    :cond_4
    const/4 v5, 0x1

    move v2, v5

    goto :goto_1
.end method

.method private validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z
    .locals 2
    .parameter "resMsg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compareTo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkSessionEnd(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkProactiveCmd(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkEvent(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkCallSetUp(Landroid/os/Handler;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized STK command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :pswitch_1
    const-string v5, "ril message arrived"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    .local v19, data:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .local v16, ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_0

    :try_start_0
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    .end local v19           #data:Ljava/lang/String;
    check-cast v19, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v19       #data:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    .end local v19           #data:Ljava/lang/String;
    .end local p1
    :cond_1
    :goto_0
    :pswitch_2
    return-void

    .restart local v16       #ar:Landroid/os/AsyncResult;
    .restart local p1
    :catch_0
    move-exception v5

    move-object/from16 v20, v5

    .local v20, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto :goto_0

    :pswitch_4
    const-string v5, "MSG_ID_PHONE_DISCONNECT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v21, intent:Landroid/content/Intent;
    if-nez v21, :cond_2

    const-string v5, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    :cond_2
    const/high16 v5, 0x1000

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v21           #intent:Landroid/content/Intent;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto/16 :goto_0

    .restart local p1
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V

    goto/16 :goto_0

    .restart local p1
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v6, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->event:I

    .local v6, event:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v7, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->sourceID:I

    .local v7, sourceId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v8, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->destinationID:I

    .local v8, destinationId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->additionalInfo:[B

    move-object v9, v0

    .local v9, additionalInfo:[B
    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/stk/StkService;->eventDownload(III[BZ)V

    goto/16 :goto_0

    .end local v6           #event:I
    .end local v7           #sourceId:I
    .end local v8           #destinationId:I
    .end local v9           #additionalInfo:[B
    .restart local p1
    :pswitch_8
    const-string v5, "handleMsg : MSG_ID_RELEASE_COMPLETE_MESSAGE"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    packed-switch v5, :pswitch_data_1

    :pswitch_9
    goto/16 :goto_0

    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    const/16 v23, 0x0

    .local v23, ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_3

    :try_start_1
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    check-cast v23, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v23       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_3
    if-nez v23, :cond_4

    new-instance v23, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;

    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;-><init>()V

    .restart local v23       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_4
    const-string v5, "got ReleaseComplete and need it"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCallType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-eq v5, v6, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v5, v6, :cond_6

    :cond_5
    const-string v5, "send fail TR "

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_1
    move-exception v5

    move-object/from16 v20, v5

    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    .restart local v23       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v23

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;Lcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :pswitch_b
    const-string v5, "mWaitingSetupCallHoldResult = true"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :pswitch_c
    const-string v5, "MSG_ID_TIMEOUT timeout!!!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-nez v5, :cond_8

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    packed-switch v5, :pswitch_data_2

    :cond_9
    :goto_1
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v5, v5, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v5, v5, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x7

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v5, :cond_e

    const-string v5, "setup call address is null"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_e
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v21       #intent:Landroid/content/Intent;
    if-nez v21, :cond_f

    const-string v5, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_f
    const/high16 v5, 0x1000

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    const-string v5, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v21           #intent:Landroid/content/Intent;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    :pswitch_12
    const-string v5, "MSG_ID_SEND_DTMF_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .restart local v16       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_11

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    .local v18, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x7

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_10
    const-string v5, "send DTMF Error except GENERIC_FAILURE!!!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .end local v18           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .end local v16           #ar:Landroid/os/AsyncResult;
    :pswitch_13
    const-string v5, "handleMsg : MSG_ID_SEND_SMS_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-eqz v5, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Msg ID data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .local v22, result:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_12

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_12

    :try_start_2
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v22, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v16           #ar:Landroid/os/AsyncResult;
    :cond_12
    const/4 v5, 0x0

    aget v5, v22, v5

    sparse-switch v5, :sswitch_data_0

    const-string v5, "SMS SEND GENERIC FAIL"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_2
    move-exception v5

    move-object/from16 v20, v5

    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :sswitch_0
    const-string v5, "SMS SEND OK"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "SMS SEND FAIL - MEMORY NOT AVAILABLE"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "SMS SEND FAIL RETRY"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .end local v22           #result:[I
    .restart local p1
    :pswitch_14
    const-string v5, "handleMsg : MSG_ID_CALL_CONTROL_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    .local v17, callcontrol_result:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_17

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_17

    :try_start_3
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17           #callcontrol_result:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v17       #callcontrol_result:Ljava/lang/String;
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call control result data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleCallControlResultNoti(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v17           #callcontrol_result:Ljava/lang/String;
    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_3
    move-exception v5

    move-object/from16 v20, v5

    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :pswitch_15
    const-string v5, "pause 3 secs"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->processDTMFString()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_c
        :pswitch_5
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_7
        :pswitch_4
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_e
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8016 -> :sswitch_1
        0x802a -> :sswitch_2
    .end sparse-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "onCmdResponse()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x6

    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;)V
    .locals 2
    .parameter "eventMsg"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "onEventDownload()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/16 v1, 0xe

    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method processDTMFString()V
    .locals 5

    .prologue
    const/16 v4, 0x70

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dtmfStringLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    DTMFString : <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, countP:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendDtmfLastRequest(C)V

    :cond_0
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    mul-int/lit16 v2, v2, 0xdac

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendDtmfRequest(C)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    goto/16 :goto_0
.end method

.method sendDtmfLastRequest(C)V
    .locals 2
    .parameter "c"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmfLastRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method sendDtmfRequest(C)V
    .locals 2
    .parameter "c"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmfRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method public declared-synchronized sentTerminalResponseForSetupMenu(Z)V
    .locals 1
    .parameter "value"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startTimeOut(II)V
    .locals 3
    .parameter "timeDest"
    .parameter "duration"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
