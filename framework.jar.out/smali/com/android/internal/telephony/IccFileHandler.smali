.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;,
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_IMG_RECORD_SIZE_DONE:I = 0xd

.field private static final EVENT_GET_ITEM_SIZE_DONE:I = 0xb

.field private static final EVENT_GET_RECORD_INFO_DONE:I = 0x10

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_SIM_FILE_STATUS_DONE:I = 0x11

.field protected static final EVENT_GET_USIM_PB_CAPA_DONE:I = 0xf

.field private static final EVENT_READ_ADN_DONE:I = 0xc

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_IMG_RECORD_DONE:I = 0xe

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_UPDATE_ADN_DONE:I = 0x12

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .parameter "phone"

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    return-void
.end method

.method public getAdnLikesRecordInfo(ILandroid/os/Message;)V
    .locals 2
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    return-void
.end method

.method public getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    .locals 10
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    :sswitch_2
    const-string v0, "3F007F105F50"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6f4e -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 2
    .parameter "onLoaded"

    .prologue
    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getUsimPBCapa(Landroid/os/Message;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 45
    .parameter "msg"

    .prologue
    const/16 v40, 0x0

    .local v40, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .local v29, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .local v36, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccIoResult;

    .local v41, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v40, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v35

    .local v35, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v35, :cond_0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v35           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v36           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v41           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local p1
    :catch_0
    move-exception v5

    move-object/from16 v32, v5

    .local v32, exc:Ljava/lang/Exception;
    if-eqz v40, :cond_2b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v32           #exc:Ljava/lang/Exception;
    .restart local p1
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    check-cast v0, Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccIoResult;

    .restart local v41       #result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v35

    .restart local v35       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v35, :cond_0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v35           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v41           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .restart local v36       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccIoResult;

    .restart local v41       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v35

    .restart local v35       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v35, :cond_2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v31, v0

    .local v31, data:[B
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v31, v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v31, v6

    if-eq v5, v6, :cond_4

    :cond_3
    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_4
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v39, v0

    .local v39, recordSize:[I
    const/4 v5, 0x0

    const/16 v6, 0xe

    aget-byte v6, v31, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v39, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    aget-byte v6, v31, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v31, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    aput v6, v39, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    aget v6, v39, v6

    const/4 v7, 0x0

    aget v7, v39, v7

    div-int/2addr v6, v7

    aput v6, v39, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v31           #data:[B
    .end local v35           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v36           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v39           #recordSize:[I
    .end local v41           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .restart local v36       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccIoResult;

    .restart local v41       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v35

    .restart local v35       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v35, :cond_6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v31, v0

    .restart local v31       #data:[B
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v7, v0

    .local v7, fileid:I
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v38, v0

    .local v38, recordNum:I
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v31, v6

    if-eq v5, v6, :cond_7

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_7
    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v31, v6

    if-eq v5, v6, :cond_8

    const/4 v5, 0x3

    const/16 v6, 0xd

    aget-byte v6, v31, v6

    if-eq v5, v6, :cond_8

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_8
    const/16 v5, 0xe

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    move v0, v5

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v5, 0x2

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v31, v6

    and-int/lit16 v6, v6, 0xff

    add-int v11, v5, v6

    .local v11, size:I
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move v5, v0

    div-int v5, v11, v5

    move v0, v5

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    move v5, v0

    if-eqz v5, :cond_9

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xb2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v7, v0

    .end local v7           #fileid:I
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v8, v0

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v9, v0

    const/4 v10, 0x4

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move v11, v0

    .end local v11           #size:I
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x7

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface/range {v5 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v31           #data:[B
    .end local v35           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v36           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v38           #recordNum:I
    .end local v41           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    check-cast v0, Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccIoResult;

    .restart local v41       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v35

    .restart local v35       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v35, :cond_b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v31, v0

    .restart local v31       #data:[B
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    .restart local v7       #fileid:I
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v31, v6

    if-eq v5, v6, :cond_c

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_c
    const/16 v5, 0xd

    aget-byte v5, v31, v5

    if-eqz v5, :cond_d

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_d
    const/4 v5, 0x2

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v31, v6

    and-int/lit16 v6, v6, 0xff

    add-int v11, v5, v6

    .restart local v11       #size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xb0

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x5

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move v2, v7

    move v3, v15

    move-object/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface/range {v5 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v7           #fileid:I
    .end local v11           #size:I
    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v31           #data:[B
    .end local v35           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v41           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .restart local v36       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccIoResult;

    .restart local v41       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v35

    .restart local v35       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v35, :cond_f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    move v5, v0

    if-nez v5, :cond_10

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v5, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move v6, v0

    if-le v5, v6, :cond_11

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    iget-object v12, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v13, 0xb2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v14, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-interface/range {v12 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v35           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v36           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v41           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .restart local v36       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccIoResult;

    .restart local v41       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_12

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v35

    .restart local v35       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v35, :cond_13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_READ_IMG_RECORD_DONE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v35           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v36           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v41           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    check-cast v0, Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccIoResult;

    .restart local v41       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_14
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v35

    .restart local v35       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v35, :cond_15

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v35           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v41           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_8
    const/16 v43, 0x0

    .local v43, total:I
    const/16 v44, 0x0

    .local v44, used:I
    const/16 v34, 0x0

    .local v34, firstIndex:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_16

    .end local p1
    :goto_1
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    .local v37, pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v40, v0

    move/from16 v0, v44

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    move/from16 v0, v34

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    if-nez v44, :cond_17

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    move v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v37           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    .restart local p1
    :cond_16
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    const/4 v5, 0x0

    aget v43, p1, v5

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    check-cast p1, [I

    const/4 v5, 0x1

    aget v44, p1, v5

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    check-cast p1, [I

    const/4 v5, 0x2

    aget v34, p1, v5

    goto :goto_1

    .restart local v37       #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    :cond_17
    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    move v5, v0

    if-eqz v5, :cond_18

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    move v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    :cond_18
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    iget-object v12, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v13, 0xb2

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move v14, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move v15, v0

    const/16 v16, 0x0

    const/16 v5, 0xc

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v12 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v34           #firstIndex:I
    .end local v37           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    .end local v43           #total:I
    .end local v44           #used:I
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    .restart local v37       #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/SimPBEntryResult;

    .local v42, resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_19

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    move v5, v0

    if-nez v5, :cond_1a

    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .local v17, emails:[Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x2

    aget-object v6, v6, v7

    aput-object v6, v17, v5

    new-instance v12, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move v13, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move v14, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v15, v5, v6

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v16, v5, v6

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .local v12, adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v12

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v12           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v17           #emails:[Ljava/lang/String;
    :cond_1a
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .restart local v17       #emails:[Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x2

    aget-object v6, v6, v7

    aput-object v6, v17, v5

    new-instance v12, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move v13, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move v14, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v15, v5, v6

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v16, v5, v6

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v12       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    move v5, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    move v6, v0

    if-eq v5, v6, :cond_1b

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    move v5, v0

    const v6, 0xffff

    if-ne v5, v6, :cond_1c

    :cond_1b
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0xb2

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v20, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v5, 0xc

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v18 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v12           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v17           #emails:[Ljava/lang/String;
    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v37           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    .end local v42           #resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .restart local v36       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccIoResult;

    .restart local v41       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_1d

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_1d
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v35

    .restart local v35       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v35, :cond_1e

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v31, v0

    .restart local v31       #data:[B
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v7, v0

    .restart local v7       #fileid:I
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v38, v0

    .restart local v38       #recordNum:I
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v31, v6

    if-eq v5, v6, :cond_1f

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_1f
    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v31, v6

    if-eq v5, v6, :cond_20

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_20
    const/16 v5, 0xe

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    move v0, v5

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v5, 0x2

    aget-byte v5, v31, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v31, v6

    and-int/lit16 v6, v6, 0xff

    add-int v11, v5, v6

    .restart local v11       #size:I
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move v5, v0

    div-int v5, v11, v5

    move v0, v5

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    move v5, v0

    if-eqz v5, :cond_21

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0xb2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v20, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v5, 0xe

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    invoke-interface/range {v18 .. v27}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v7           #fileid:I
    .end local v11           #size:I
    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v31           #data:[B
    .end local v35           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v36           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v38           #recordNum:I
    .end local v41           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    check-cast v0, Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_22

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v30, v0

    .local v30, capaResult:[I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v30

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v30           #capaResult:[I
    .restart local p1
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    check-cast v0, Landroid/os/Message;

    move-object/from16 v40, v0

    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v33, v0

    .local v33, fileStatus:[I
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_23

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccIoResult;

    .restart local v41       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_24

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_24
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v35

    .restart local v35       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v35, :cond_25

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v31, v0

    .restart local v31       #data:[B
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v31, v6

    if-eq v5, v6, :cond_26

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_26
    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v31, v6

    if-eq v5, v6, :cond_27

    const/4 v5, 0x3

    const/16 v6, 0xd

    aget-byte v6, v31, v6

    if-eq v5, v6, :cond_27

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_27
    const/4 v5, 0x0

    const/16 v6, 0xb

    aget-byte v6, v31, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v33, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v33

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v31           #data:[B
    .end local v33           #fileStatus:[I
    .end local v35           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v41           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    check-cast v0, Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_28

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v28, v0

    .local v28, RecordInfo:[I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v28

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v28           #RecordInfo:[I
    .end local v29           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/AsyncResult;

    .restart local v29       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .restart local v36       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/IccIoResult;

    .restart local v41       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_29

    const/4 v5, 0x0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_29
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v35

    .restart local v35       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v35, :cond_2a

    const-string v5, "getException not null"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v29           #ar:Landroid/os/AsyncResult;
    .end local v35           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v36           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v41           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local p1
    .restart local v32       #exc:Ljava/lang/Exception;
    :cond_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncaught exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 10
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    const/16 v0, 0x9

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFImgLinearFixedSTK(ILandroid/os/Message;)V
    .locals 10
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    const/16 v0, 0xd

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p5}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    const-string v3, "img"

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFImgTransparentSTK(IIIILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p5}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V
    .locals 3
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/16 v1, 0xb

    new-instance v2, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    const/16 v0, 0x12

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p5}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    move v2, p1

    move v4, p2

    move-object v8, p4

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move v2, p1

    move v5, v4

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method
