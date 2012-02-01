.class final Lcom/android/server/EncryptService$CryptoNotification;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CryptoNotification"
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x2712

.field static final PROGRESS_MAX:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CryptoNotification"


# instance fields
.field private isWokingNotification:Z

.field mContentView:Landroid/widget/RemoteViews;

.field mCtx:Landroid/content/Context;

.field private mFinished:Z

.field mNotiManager:Landroid/app/NotificationManager;

.field mNotification:Landroid/app/Notification;

.field mPercent:I

.field private mbCryptoPolicy:Z

.field private mbFirstStorage:Z

.field private mnPercent:I

.field paused_text:Ljava/lang/String;

.field percent:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/EncryptService;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/EncryptService;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/EncryptService$CryptoNotification;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    iput v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mPercent:I

    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->percent:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->paused_text:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->isWokingNotification:Z

    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mFinished:Z

    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mbCryptoPolicy:Z

    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mbFirstStorage:Z

    iput v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mnPercent:I

    iput-object p2, p0, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->isWokingNotification:Z

    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mFinished:Z

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/EncryptService$CryptoNotification;ZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/EncryptService$CryptoNotification;->updateActiveNotification(ZZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/EncryptService$CryptoNotification;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/EncryptService$CryptoNotification;->updateCompletedNotification(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/EncryptService$CryptoNotification;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->isWokingNotification:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/EncryptService$CryptoNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/EncryptService$CryptoNotification;->isWokingNotification:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/EncryptService$CryptoNotification;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mFinished:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/EncryptService$CryptoNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/EncryptService$CryptoNotification;->mFinished:Z

    return p1
.end method

.method private updateActiveNotification(ZZI)V
    .locals 2
    .parameter "bCryptoPolicy"
    .parameter "bFirstStorage"
    .parameter "lv_percent"

    .prologue
    iget-object v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->this$0:Lcom/android/server/EncryptService;

    #getter for: Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/EncryptService;->access$700(Lcom/android/server/EncryptService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/EncryptService$CryptoNotification$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/EncryptService$CryptoNotification$1;-><init>(Lcom/android/server/EncryptService$CryptoNotification;IZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateCompletedNotification(ZZ)V
    .locals 2
    .parameter "bCryptoPolicy"
    .parameter "bFirstStorage"

    .prologue
    iget-object v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->this$0:Lcom/android/server/EncryptService;

    #getter for: Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/EncryptService;->access$700(Lcom/android/server/EncryptService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/EncryptService$CryptoNotification$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/EncryptService$CryptoNotification$2;-><init>(Lcom/android/server/EncryptService$CryptoNotification;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mPercent:I

    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->percent:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->paused_text:Ljava/lang/String;

    return-void
.end method
