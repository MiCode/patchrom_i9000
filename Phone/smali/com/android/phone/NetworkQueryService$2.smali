.class Lcom/android/phone/NetworkQueryService$2;
.super Lcom/android/phone/INetworkQueryService$Stub;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .locals 4
    .parameter "cb"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v1, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 130
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$200(Lcom/android/phone/NetworkQueryService;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    monitor-exit v0

    .line 148
    :cond_0
    return-void

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$300(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v2, v2, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 136
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    const/4 v2, -0x2

    #setter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkQueryService;->access$202(Lcom/android/phone/NetworkQueryService;I)I

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 130
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .locals 7
    .parameter "cb"

    .prologue
    const-string v5, "NetworkQuery"

    .line 161
    if-eqz p1, :cond_0

    .line 162
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v3, v3, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    .line 164
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v4, v4, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 165
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService;->access$200(Lcom/android/phone/NetworkQueryService;)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 170
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 174
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_1
    sget v3, Lcom/android/phone/NetworkQueryService;->OEM_FUNCTION_ID_NETWORK:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 175
    sget v3, Lcom/android/phone/NetworkQueryService;->OEM_NETWORK_SCAN_CANCEL:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 176
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    :goto_0
    const-string v3, "NetworkQuery"

    const-string v3, "Canceling network scan"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService;->access$300(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v5, v5, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 188
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :cond_1
    return-void

    .line 165
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 178
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 179
    .local v2, e:Ljava/io/IOException;
    const-string v3, "NetworkQuery"

    const-string v3, "IOException in stopNetworkQuery()"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
