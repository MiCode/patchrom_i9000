.class Lcom/android/server/EncryptService$CryptoNotification$2;
.super Ljava/lang/Object;
.source "EncryptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EncryptService$CryptoNotification;->updateCompletedNotification(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/EncryptService$CryptoNotification;

.field final synthetic val$bCryptoPolicy:Z


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService$CryptoNotification;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iput-boolean p2, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->val$bCryptoPolicy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .local v4, max:I
    const/4 v6, 0x0

    .local v6, progress:I
    const/4 v3, 0x0

    .local v3, id:I
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/EncryptService$CryptoNotification;->mFinished:Z
    invoke-static {v9, v10}, Lcom/android/server/EncryptService$CryptoNotification;->access$602(Lcom/android/server/EncryptService$CryptoNotification;Z)Z

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, iRes:Landroid/content/res/Resources;
    iget-boolean v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->val$bCryptoPolicy:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x104048a

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x104048c

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->paused_text:Ljava/lang/String;

    :goto_0
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, v10, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    :cond_0
    const/4 v2, 0x0

    .local v2, icon:I
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->val$bCryptoPolicy:Z

    if-eqz v9, :cond_4

    const v2, 0x10803cf

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .local v7, when:J
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    new-instance v10, Landroid/app/Notification;

    const-string v11, ""

    invoke-direct {v10, v2, v11, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    .end local v7           #when:J
    :cond_1
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    const/16 v10, 0x30

    iput v10, v9, Landroid/app/Notification;->flags:I

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    if-nez v9, :cond_2

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .local v5, notificationIntent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    new-instance v10, Landroid/widget/RemoteViews;

    iget-object v11, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v11, v11, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x1090028

    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201b8

    invoke-virtual {v9, v10, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, v10, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    iput-object v10, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v5           #notificationIntent:Landroid/content/Intent;
    :cond_2
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201b9

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201bb

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201bc

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x1020016

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201bc

    const v11, -0x333334

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x1020016

    iget-object v11, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v11, v11, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201bc

    iget-object v11, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v11, v11, Lcom/android/server/EncryptService$CryptoNotification;->paused_text:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    const/16 v10, 0x2712

    iget-object v11, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v11, v11, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    invoke-virtual {v9, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .end local v2           #icon:I
    :cond_3
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x104048b

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x104048d

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->paused_text:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v2       #icon:I
    :cond_4
    const v2, 0x10803ce

    goto/16 :goto_1
.end method
