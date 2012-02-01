.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    return-void
.end method

.method private dispatchWapPdu_DMNoti([BI)V
    .locals 3
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "WAP PUSH"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I
    .locals 13
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    const/4 v9, 0x1

    .local v9, ret:I
    move/from16 v0, p5

    new-array v0, v0, [B

    move-object v7, v0

    .local v7, header:[B
    const/4 v10, 0x0

    array-length v11, v7

    move-object v0, p1

    move/from16 v1, p4

    move-object v2, v7

    move v3, v10

    move v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, p4, p5

    .local v6, dataIndex:I
    array-length v10, p1

    sub-int/2addr v10, v6

    new-array v5, v10, [B

    .local v5, data:[B
    const/4 v10, 0x0

    array-length v11, v5

    invoke-static {p1, v6, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, intent:Landroid/content/Intent;
    const-string v10, "transactionId"

    invoke-virtual {v8, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "pduType"

    move-object v0, v8

    move-object v1, v10

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "header"

    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v10, "data"

    invoke-virtual {v8, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v10, "applicationId"

    move-object v0, v8

    move-object v1, v10

    move-wide/from16 v2, p8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Receive EMN : mimeType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " binaryContentType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " applicationId= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p7, :sswitch_data_0

    :goto_0
    return v9

    :sswitch_0
    const-string v10, "application/vnd.docomo.pf"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v10, 0x9056

    cmp-long v10, p8, v10

    if-nez v10, :cond_1

    const-string v10, "com.nttdocomo.email.service"

    const-string v11, "com.nttdocomo.email.service.ImodeMailService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v9, -0x1

    :cond_0
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : i-mode.net"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application id is unknown:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    const-string v10, "application/vnd.syncml.notification"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v10, 0x7

    cmp-long v10, p8, v10

    if-nez v10, :cond_3

    const-string v10, "jp.co.nttdocomo.fota"

    const-string v11, "jp.co.nttdocomo.fota.SMSService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v9, -0x1

    :cond_2
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : fota"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application id is unknown:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    const-string v10, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v10, 0x905c

    cmp-long v10, p8, v10

    if-nez v10, :cond_5

    const-string v10, "jp.co.nttdocomo.carriermail"

    const-string v11, "jp.co.nttdocomo.carriermail.SMSService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v9, -0x1

    :cond_4
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : Carrier Mail"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-wide/16 v10, 0x9

    cmp-long v10, p8, v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v11, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v10, v8, v11}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v9, -0x1

    :cond_6
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : mopera U"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application id is unknown:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x30a -> :sswitch_2
        0x310 -> :sswitch_0
    .end sparse-switch
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    new-array v2, p5, [B

    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p4, p5

    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_MMS"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .locals 4
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    new-array v0, p5, [B

    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchWapPdu_PushMsg([BI)V
    .locals 4
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchWapPdu_SLC([BIIIILjava/lang/String;IJ)I
    .locals 13
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    const/4 v9, 0x1

    .local v9, ret:I
    move/from16 v0, p5

    new-array v0, v0, [B

    move-object v7, v0

    .local v7, header:[B
    const/4 v10, 0x0

    array-length v11, v7

    move-object v0, p1

    move/from16 v1, p4

    move-object v2, v7

    move v3, v10

    move v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, p4, p5

    .local v6, dataIndex:I
    array-length v10, p1

    sub-int/2addr v10, v6

    new-array v5, v10, [B

    .local v5, data:[B
    const/4 v10, 0x0

    array-length v11, v5

    invoke-static {p1, v6, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.nttdocomo.android.syncmlapp.SP_SYNCML_PUSH"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, intent:Landroid/content/Intent;
    const-string v10, "transactionId"

    invoke-virtual {v8, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "pduType"

    move-object v0, v8

    move-object v1, v10

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "header"

    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v10, "data"

    invoke-virtual {v8, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v10, "applicationId"

    move-object v0, v8

    move-object v1, v10

    move-wide/from16 v2, p8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Receive SLC : mimeType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " binaryContentType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " applicationId= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "application/vnd.syncml+wbxml"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v10, 0x905f

    cmp-long v10, p8, v10

    if-nez v10, :cond_1

    const-string v10, "com.nttdocomo.android.syncmlapp"

    const-string v11, "com.nttdocomo.android.syncmlapp.SyncML_SMSService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v9, -0x1

    :cond_0
    :goto_0
    return v9

    :cond_1
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application id is unknown:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dispatchWapPdu_default([BIILjava/lang/String;II)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    new-array v2, p6, [B

    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p5, p6

    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 26
    .parameter "pdu"

    .prologue
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    .local v24, index:I
    add-int/lit8 v25, v24, 0x1

    .end local v24           #index:I
    .local v25, index:I
    aget-byte v4, p1, v24

    and-int/lit16 v6, v4, 0xff

    .local v6, transactionId:I
    add-int/lit8 v24, v25, 0x1

    .end local v25           #index:I
    .restart local v24       #index:I
    aget-byte v4, p1, v25

    and-int/lit16 v7, v4, 0xff

    .local v7, pduType:I
    const/4 v9, 0x0

    .local v9, headerLength:I
    const/4 v4, 0x6

    if-eq v7, v4, :cond_0

    const/4 v4, 0x7

    if-eq v7, v4, :cond_0

    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received non-PUSH WAP PDU. Type = "

    .end local v6           #transactionId:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :goto_0
    return v4

    .restart local v6       #transactionId:I
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Length error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/lit8 v24, v4, 0x2

    move/from16 v8, v24

    .local v8, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Content-Type error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v10

    .local v10, mimeType:Ljava/lang/String;
    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v11, v4

    .local v11, binaryContentType:I
    sparse-switch v11, :sswitch_data_0

    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received PDU. Unsupported Content-Type = "

    .end local v6           #transactionId:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v6       #transactionId:I
    :sswitch_0
    const-string v10, "application/vnd.oma.drm.rights+xml"

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v24, v24, v4

    const/16 v22, 0x0

    .local v22, dispatchedByApplication:Z
    sparse-switch v11, :sswitch_data_1

    :goto_2
    if-nez v22, :cond_3

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v10

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    :cond_3
    const/4 v4, -0x1

    goto/16 :goto_0

    .end local v22           #dispatchedByApplication:Z
    :sswitch_1
    const-string v10, "application/vnd.oma.drm.rights+wbxml"

    goto :goto_1

    :sswitch_2
    const-string v10, "application/vnd.wap.sic"

    goto :goto_1

    :sswitch_3
    const-string v10, "application/vnd.wap.slc"

    goto :goto_1

    :sswitch_4
    const-string v10, "application/vnd.wap.coc"

    goto :goto_1

    :sswitch_5
    const-string v10, "application/vnd.wap.mms-message"

    goto :goto_1

    :sswitch_6
    const-string v10, "application/vnd.omaloc-supl-init"

    goto :goto_1

    :sswitch_7
    const-string v10, "application/vnd.docomo.pf"

    goto :goto_1

    :sswitch_8
    const-string v10, "application/vnd.syncml.notification"

    goto :goto_1

    :sswitch_9
    const-string v10, "application/vnd.wap.connectivity-wbxml"

    goto :goto_1

    :sswitch_a
    const-string v10, "application/vnd.syncml.dm+wbxml"

    goto :goto_1

    :sswitch_b
    const-string v10, "application/vnd.syncml.dm+xml"

    goto :goto_1

    :sswitch_c
    const-string v10, "application/vnd.wap.emn+wbxml"

    goto :goto_1

    :sswitch_d
    const-string v10, "application/vnd.syncml+wbxml"

    goto :goto_1

    .end local v11           #binaryContentType:I
    :cond_4
    const-string v4, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v11, 0x4a

    .restart local v11       #binaryContentType:I
    goto :goto_1

    .end local v11           #binaryContentType:I
    :cond_5
    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v11, 0x4b

    .restart local v11       #binaryContentType:I
    goto :goto_1

    .end local v11           #binaryContentType:I
    :cond_6
    const-string v4, "application/vnd.wap.sic"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v11, 0x2e

    .restart local v11       #binaryContentType:I
    goto :goto_1

    .end local v11           #binaryContentType:I
    :cond_7
    const-string v4, "application/vnd.wap.slc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v11, 0x30

    .restart local v11       #binaryContentType:I
    goto :goto_1

    .end local v11           #binaryContentType:I
    :cond_8
    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v11, 0x32

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .end local v11           #binaryContentType:I
    :cond_9
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v11, 0x3e

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .end local v11           #binaryContentType:I
    :cond_a
    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v11, 0x312

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .end local v11           #binaryContentType:I
    :cond_b
    const-string v4, "application/vnd.docomo.pf"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v11, 0x310

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .end local v11           #binaryContentType:I
    :cond_c
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v11, 0x44

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .end local v11           #binaryContentType:I
    :cond_d
    const-string v4, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v11, 0x36

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .end local v11           #binaryContentType:I
    :cond_e
    const-string v4, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v11, 0x42

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .end local v11           #binaryContentType:I
    :cond_f
    const-string v4, "application/vnd.syncml.dm+xml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v11, 0x43

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .end local v11           #binaryContentType:I
    :cond_10
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received PDU. Unknown Content-Type = "

    .end local v6           #transactionId:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v6       #transactionId:I
    .restart local v11       #binaryContentType:I
    .restart local v22       #dispatchedByApplication:Z
    :sswitch_e
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    const/16 v22, 0x1

    goto/16 :goto_2

    :sswitch_f
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    const/16 v22, 0x1

    goto/16 :goto_2

    :sswitch_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BI)V

    const/16 v22, 0x1

    goto/16 :goto_2

    :sswitch_11
    const/16 v22, 0x0

    goto/16 :goto_2

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v24

    move v2, v8

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v23

    .local v23, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v4, 0x2f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .local v21, applicationIdObj:Ljava/lang/Object;
    const-wide/16 v12, 0x0

    .local v12, applicationId:J
    move-object/from16 v0, v21

    instance-of v0, v0, Ljava/lang/Long;

    move v4, v0

    if-eqz v4, :cond_11

    check-cast v21, Ljava/lang/Long;

    .end local v21           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :cond_11
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I

    move-result v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x30 -> :sswitch_3
        0x32 -> :sswitch_4
        0x36 -> :sswitch_9
        0x3e -> :sswitch_5
        0x42 -> :sswitch_a
        0x43 -> :sswitch_b
        0x44 -> :sswitch_8
        0x4a -> :sswitch_0
        0x4b -> :sswitch_1
        0xb0 -> :sswitch_d
        0x30a -> :sswitch_c
        0x310 -> :sswitch_7
        0x312 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_11
        0x32 -> :sswitch_e
        0x36 -> :sswitch_11
        0x3e -> :sswitch_f
        0x42 -> :sswitch_11
        0x43 -> :sswitch_11
        0x44 -> :sswitch_10
        0x30a -> :sswitch_12
        0x310 -> :sswitch_12
    .end sparse-switch
.end method
