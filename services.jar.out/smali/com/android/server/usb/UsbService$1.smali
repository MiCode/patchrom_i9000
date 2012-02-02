.class Lcom/android/server/usb/UsbService$1;
.super Landroid/os/UEventObserver;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 151
    iget-object v8, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/usb/UsbService;->access$000(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 152
    :try_start_0
    const-string v9, "SWITCH_NAME"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, name:Ljava/lang/String;
    const-string v9, "SWITCH_STATE"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 154
    .local v6, state:Ljava/lang/String;
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 156
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 157
    .local v3, intState:I
    const-string v9, "usb_connected"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 158
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "usb_connected changed"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #setter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v9, v3}, Lcom/android/server/usb/UsbService;->access$202(Lcom/android/server/usb/UsbService;I)I

    .line 161
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mSystemReady:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 163
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v10, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v10}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v10

    if-nez v10, :cond_1

    move v10, v11

    :goto_0
    #calls: Lcom/android/server/usb/UsbService;->update(Z)V
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbService;->access$400(Lcom/android/server/usb/UsbService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    .end local v3           #intState:I
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    return-void

    .restart local v3       #intState:I
    :cond_1
    move v10, v12

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    :try_start_3
    const-string v9, "usb_configuration"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 166
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "usb_configuration changed"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #setter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v9, v3}, Lcom/android/server/usb/UsbService;->access$502(Lcom/android/server/usb/UsbService;I)I

    .line 169
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mSystemReady:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 170
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v10, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v10}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v10

    if-nez v10, :cond_3

    move v10, v11

    :goto_2
    #calls: Lcom/android/server/usb/UsbService;->update(Z)V
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbService;->access$400(Lcom/android/server/usb/UsbService;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 173
    .end local v3           #intState:I
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 174
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not parse switch state from event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 189
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #state:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    .restart local v3       #intState:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #state:Ljava/lang/String;
    :cond_3
    move v10, v12

    .line 170
    goto :goto_2

    .line 177
    .end local v3           #intState:I
    :cond_4
    :try_start_5
    const-string v9, "FUNCTION"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, function:Ljava/lang/String;
    const-string v9, "ENABLED"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, enabledStr:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 182
    const-string v9, "1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v7, v11

    .line 184
    .local v7, what:I
    :goto_3
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$600(Lcom/android/server/usb/UsbService;)Landroid/os/Handler;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 185
    .local v4, msg:Landroid/os/Message;
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$600(Lcom/android/server/usb/UsbService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 182
    .end local v4           #msg:Landroid/os/Message;
    .end local v7           #what:I
    :cond_5
    const/4 v9, 0x2

    move v7, v9

    goto :goto_3
.end method
