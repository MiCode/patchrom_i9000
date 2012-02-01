.class Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 99
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mDone:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mResult:Z

    .line 109
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 110
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mResult:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "pin"
    .parameter "newPin"

    .prologue
    const-string v2, "PhoneInterfaceManagerExt"

    .line 139
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 141
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 139
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 146
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 150
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 152
    :try_start_4
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 154
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 156
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 159
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mHandler:Landroid/os/Handler;

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 135
    return-void

    .line 133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
