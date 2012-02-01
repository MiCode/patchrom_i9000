.class Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "Use2GOnlyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const-string v5, "Use2GOnlyCheckBoxPreference"

    .line 221
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 223
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 224
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v4

    .line 225
    .local v1, type:I
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get preferred network type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->updateState(I)V

    .line 232
    .end local v1           #type:I
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get preferred network type, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v3, "Use2GOnlyCheckBoxPreference"

    .line 235
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 237
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    .line 238
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 242
    invoke-static {}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Use2GOnlyCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set preferred network type, exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$500(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 250
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$500(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$500(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    .line 253
    :cond_2
    return-void

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$800(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->updateState(I)V

    .line 246
    invoke-static {}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Use2GOnlyCheckBoxPreference"

    const-string v1, "set preferred network type done"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v7, "YOG"

    const-string v6, "Use2GOnlyCheckBoxPreference"

    .line 256
    invoke-static {}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState : type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, code:Ljava/lang/String;
    const-string v2, "YOG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 262
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$200(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, summaryString:[Ljava/lang/String;
    :goto_0
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState called len"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    array-length v2, v1

    if-gt p1, v2, :cond_1

    if-gez p1, :cond_2

    .line 271
    :cond_1
    const/4 p1, 0x0

    .line 274
    :cond_2
    const-string v2, "YOG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_7

    .line 275
    if-eq p1, v5, :cond_3

    if-ne p1, v4, :cond_6

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #setter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I
    invoke-static {v2, v5}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$802(Lcom/android/phone/Use2GOnlyCheckBoxPreference;I)I

    .line 277
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setValueIndex(I)V

    .line 289
    :goto_1
    return-void

    .line 263
    .end local v1           #summaryString:[Ljava/lang/String;
    :cond_4
    const-string v2, "TRG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 264
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$200(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #summaryString:[Ljava/lang/String;
    goto :goto_0

    .line 266
    .end local v1           #summaryString:[Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$200(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #summaryString:[Ljava/lang/String;
    goto :goto_0

    .line 280
    :cond_6
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #setter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I
    invoke-static {v2, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$802(Lcom/android/phone/Use2GOnlyCheckBoxPreference;I)I

    .line 281
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v2, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setValueIndex(I)V

    goto :goto_1

    .line 285
    :cond_7
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #setter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I
    invoke-static {v2, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$802(Lcom/android/phone/Use2GOnlyCheckBoxPreference;I)I

    .line 286
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v2, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setValueIndex(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 211
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
