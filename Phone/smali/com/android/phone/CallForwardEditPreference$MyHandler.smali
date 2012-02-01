.class Lcom/android/phone/CallForwardEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 189
    const-string v9, "CallForwardEditPreference"

    const-string v10, "handleGetCFResponse: done"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v9, v9, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v9, :cond_0

    .line 192
    iget v9, p1, Landroid/os/Message;->arg2:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 193
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v9, v9, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 198
    :goto_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 200
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 201
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_3

    .line 202
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    .line 203
    .local v4, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v9, :cond_2

    .line 205
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 206
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v9, v9, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/16 v11, 0x258

    invoke-interface {v9, v10, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 269
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #calls: Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V
    invoke-static {v9}, Lcom/android/phone/CallForwardEditPreference;->access$200(Lcom/android/phone/CallForwardEditPreference;)V

    .line 270
    return-void

    .line 195
    .restart local p1
    :cond_1
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v9, v9, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 209
    .end local p1
    .restart local v1       #ar:Landroid/os/AsyncResult;
    .restart local v4       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    const-string v9, "CallForwardEditPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleGetCFResponse: ar.exception="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 211
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v9, v9, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/16 v11, 0x12c

    invoke-interface {v9, v10, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 214
    .end local v4           #err:Lcom/android/internal/telephony/CommandException$Error;
    .restart local p1
    :cond_3
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Throwable;

    if-eqz v9, :cond_4

    .line 215
    const-string v9, "CallForwardEditPreference"

    const-string v10, "userObj is Throwable instance !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v9, v9, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/16 v11, 0x190

    invoke-interface {v9, v10, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 218
    :cond_4
    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1           #ar:Landroid/os/AsyncResult;
    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v1

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v3, v0

    .line 219
    .local v3, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v9, v3

    if-nez v9, :cond_5

    .line 220
    const-string v9, "CallForwardEditPreference"

    const-string v10, "handleGetCFResponse: cfInfoArray.length==0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 222
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v9, v9, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/16 v11, 0x190

    invoke-interface {v9, v10, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 224
    :cond_5
    const/4 v5, 0x0

    .local v5, i:I
    array-length v7, v3

    .local v7, length:I
    :goto_2
    if-ge v5, v7, :cond_0

    .line 225
    const-string v9, "CallForwardEditPreference"

    const-string v10, "handleGetCFResponse, cfInfoArray["

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aget-object v11, v3, v5

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v9, "CallForwardEditPreference"

    const-string v10, "mServiceClass = "

    iget-object v11, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I
    invoke-static {v11}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I
    invoke-static {v9}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v9

    aget-object v10, v3, v5

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_6

    .line 232
    aget-object v6, v3, v5

    .line 233
    .local v6, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v9, v6}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 239
    iget v9, p1, Landroid/os/Message;->arg2:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_6

    iget v9, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 243
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v9, v9, Lcom/android/phone/CallForwardEditPreference;->reason:I

    packed-switch v9, :pswitch_data_0

    .line 251
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v9}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d0087

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 253
    .local v8, s:Ljava/lang/CharSequence;
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v9}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0d0091

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v9}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d0089

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 256
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 257
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 224
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v6           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v8           #s:Ljava/lang/CharSequence;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 245
    .restart local v6       #info:Lcom/android/internal/telephony/CallForwardInfo;
    :pswitch_0
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v9}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d007d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 246
    .restart local v8       #s:Ljava/lang/CharSequence;
    goto :goto_3

    .line 248
    .end local v8           #s:Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v9}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d0082

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 249
    .restart local v8       #s:Ljava/lang/CharSequence;
    goto :goto_3

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const-string v3, "CallForwardEditPreference"

    .line 273
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 275
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 276
    const-string v1, "CallForwardEditPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCFResponse: ar.exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v6}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 280
    const-string v1, "CallForwardEditPreference"

    const-string v1, "handleSetCFResponse: re get"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v1, v1, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 283
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 180
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
