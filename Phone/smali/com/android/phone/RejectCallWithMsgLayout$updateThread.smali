.class Lcom/android/phone/RejectCallWithMsgLayout$updateThread;
.super Ljava/lang/Thread;
.source "RejectCallWithMsgLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "updateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgLayout;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 138
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v10, strList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgLayout;->access$300(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/phone/RejectCallWithMsgLayout;->access$400()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    .local v6, cur:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 143
    .local v9, rejectMessage:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 144
    const-string v1, "RejectCallWithMsgLayout"

    const-string v2, "rejectmsg cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    :cond_1
    const-string v1, "reject_message"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 151
    if-eqz v9, :cond_2

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_3
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_4

    .line 156
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgLayout;->access$500(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, -0x1

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 157
    .local v8, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgLayout;->access$500(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 160
    .end local v8           #msg:Landroid/os/Message;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
