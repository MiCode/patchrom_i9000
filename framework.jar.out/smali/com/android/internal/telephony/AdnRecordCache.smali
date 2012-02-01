.class public final Lcom/android/internal/telephony/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final EVENT_ADD_ADN_DONE:I = 0x3

.field static final EVENT_DELETE_ADN_DONE:I = 0x4

.field static final EVENT_LOAD_ALL_ADN_LIKE_AGAIN_DONE:I = 0x5

.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field protected static final ICC_TYPE:Ljava/lang/String; = "ril.ICC_TYPE"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field adnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field adnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method extensionEfForEf(I)I
    .locals 5
    .parameter "efid"

    .prologue
    const/16 v4, 0x6f4a

    sparse-switch p1, :sswitch_data_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :sswitch_0
    const/16 v1, 0x6fc8

    goto :goto_0

    :sswitch_1
    move v1, v4

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x6f4c

    goto :goto_0

    :sswitch_3
    const/16 v1, 0x6f4b

    goto :goto_0

    :sswitch_4
    const-string v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, iccType:Ljava/lang/String;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6f4e

    goto :goto_0

    .end local v0           #iccType:Ljava/lang/String;
    :cond_1
    :sswitch_5
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_5
        0x6f3a -> :sswitch_1
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_4
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    const-string v14, "adnLikeFiles.get(efid) null fail, reinit framework member value : "

    const-string v13, "adn-record index is  "

    const-string v12, "adn-number is  "

    const-string v11, "adn-alpha is  "

    const-string v10, "GSM"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v8, v0

    packed-switch v8, :pswitch_data_0

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :pswitch_0
    const-string v8, "GSM"

    const-string v8, "EVENT_LOAD_ALL_ADN_LIKE_DONE"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/AsyncResult;

    .local v2, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    .local v4, efid:I
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .local v7, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->delete(I)V

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    const-string v8, "GSM"

    const-string v8, "ar.exception == null"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    iget-object v8, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v9, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    const-string v8, "GSM"

    const-string v8, "EVENT_LOAD_ALL_ADN_LIKE_DONE - notifyWaiters"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v4           #efid:I
    .end local v7           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    const-string v8, "GSM"

    const-string v8, "EVENT_UPDATE_ADN_DONE"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    .restart local v4       #efid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    .local v5, index:I
    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cnt is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v1, v0

    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adn-alpha is  "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adn-number is  "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adn-record index is  "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adnLikeFiles.get(efid) null fail, reinit framework member value : "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLikeAgain(I)V

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .local v6, response:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->delete(I)V

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v1, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v6           #response:Landroid/os/Message;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    sub-int v9, v5, v9

    invoke-virtual {v8, v9, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v1           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v4           #efid:I
    .end local v5           #index:I
    :pswitch_2
    const-string v8, "GSM"

    const-string v8, "EVENT_ADD_ADN_DONE"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    .restart local v4       #efid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v3, v0

    .local v3, cnt:I
    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cnt is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v1, v0

    .restart local v1       #adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adn-alpha is  "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adn-number is  "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adn-record index is  "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adnLikeFiles.get(efid) null fail, reinit framework member value : "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLikeAgain(I)V

    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .restart local v6       #response:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->delete(I)V

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v1, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v6           #response:Landroid/os/Message;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #cnt:I
    .end local v4           #efid:I
    :pswitch_3
    const-string v8, "GSM"

    const-string v8, "EVENT_DELETE_ADN_DONE"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    .restart local v4       #efid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v3, v0

    .restart local v3       #cnt:I
    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cnt is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v1, v0

    .restart local v1       #adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adn-alpha is  "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adn-number is  "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adn-record index is  "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v8, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adnLikeFiles.get(efid) null fail, reinit framework member value : "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLikeAgain(I)V

    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .restart local v6       #response:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->delete(I)V

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v1, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v6           #response:Landroid/os/Message;
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    sub-int v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .end local v1           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #cnt:I
    .end local v4           #efid:I
    :pswitch_4
    const-string v8, "GSM"

    const-string v8, "EVENT_LOAD_ALL_ADN_LIKE_AGAIN_DONE"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    .restart local v4       #efid:I
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_7

    const-string v8, "GSM"

    const-string v8, "ar.exception == null"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    iget-object p0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v8, v4, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    const-string v8, "GSM"

    const-string v8, "EVENT_LOAD_ALL_ADN_LIKE_DONE - end"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_1
    return-void

    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-gez p2, :cond_4

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method public requestLoadAllAdnLike(ILandroid/os/Message;)V
    .locals 5
    .parameter "efid"
    .parameter "response"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromPBEntry(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public requestLoadAllAdnLikeAgain(I)V
    .locals 4
    .parameter "efid"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-eqz v0, :cond_0

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLoadAllAdnLikeAgain - already loaded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromPBEntry(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearWaiters()V

    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearUserWriters()V

    return-void
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 18
    .parameter "efid"
    .parameter "adn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v15

    .local v15, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const-string v5, "GSM"

    const-string v6, "updateAdnByIndex enter"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, ""

    .local v11, checkEmpty:Ljava/lang/String;
    const/4 v13, -0x1

    .local v13, index:I
    const/4 v12, 0x0

    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Message;

    .local v16, pendingResponse:Landroid/os/Message;
    if-eqz v16, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Have pending update for EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v5, 0xffff

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_1

    const-string v5, "GSM"

    const-string v6, "updateAdnBySearch - add"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p1

    move v3, v12

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v6, p2

    move/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/AdnRecordLoader;->addPBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    const-string v5, "GSM"

    const-string v6, "updateAdnBySearch - update or delete"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target index  is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v15, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADNlike list is not init for EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/AdnRecord;

    .local v17, tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    move v5, v0

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    move v13, v0

    add-int/lit8 v12, v12, 0x1

    .end local v17           #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v6, 0x4

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p1

    move v3, v12

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v6, p2

    move/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/AdnRecordLoader;->deletePBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .restart local v17       #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v17           #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_5
    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p1

    move v3, v12

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v6, p2

    move/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/AdnRecordLoader;->editPBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 17
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    const-string v5, "GSM"

    const-string v6, "updateAdnBySearch enter"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, ""

    .local v11, checkEmpty:Ljava/lang/String;
    const/4 v8, -0x1

    .local v8, index:I
    const/4 v12, 0x0

    .local v12, count:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v14

    .local v14, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Message;

    .local v15, pendingResponse:Landroid/os/Message;
    if-eqz v15, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Have pending update for EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "GSM"

    const-string v6, "updateAdnBySearch - add"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p1

    move v3, v12

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v6, p3

    move/from16 v7, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/AdnRecordLoader;->addPBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    if-nez v14, :cond_2

    const-string v5, "GSM"

    const-string v6, "updateAdnBySearch oldAdnList == null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adn list not exist for EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "GSM"

    const-string v6, "updateAdnBySearch - update or delete"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oldAdn.recordNumber is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/AdnRecord;

    .local v16, tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    move v8, v0

    add-int/lit8 v12, v12, 0x1

    .end local v16           #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_3
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAdnBySearch: index  is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    if-ne v8, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adn record don\'t exist for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v16       #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v16           #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_5
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v6, 0x4

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p1

    move v3, v12

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v6, p3

    move/from16 v7, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/AdnRecordLoader;->deletePBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_6
    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p1

    move v3, v12

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v6, p3

    move/from16 v7, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/AdnRecordLoader;->editPBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method
