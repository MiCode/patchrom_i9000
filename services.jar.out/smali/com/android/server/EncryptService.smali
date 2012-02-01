.class Lcom/android/server/EncryptService;
.super Landroid/os/storage/IEncryptService$Stub;
.source "EncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EncryptService$EncryptionWakeLock;,
        Lcom/android/server/EncryptService$CheckStorageState;,
        Lcom/android/server/EncryptService$InternalDB;,
        Lcom/android/server/EncryptService$EncryptionError;,
        Lcom/android/server/EncryptService$ESState;,
        Lcom/android/server/EncryptService$Policy;,
        Lcom/android/server/EncryptService$CommandMode;,
        Lcom/android/server/EncryptService$CryptoPolicy;,
        Lcom/android/server/EncryptService$CryptoNotification;,
        Lcom/android/server/EncryptService$MountServiceBinderListener;,
        Lcom/android/server/EncryptService$MountCallBackBinderListener;,
        Lcom/android/server/EncryptService$EncryptServiceHandler;,
        Lcom/android/server/EncryptService$DisplayHandler;,
        Lcom/android/server/EncryptService$MountHandler;,
        Lcom/android/server/EncryptService$EncryptResponseCode;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_APPLICATION:I = 0x5

.field public static final ACTION_TYPE_BOOTING:I = 0x3

.field public static final ACTION_TYPE_FORMAT:I = 0x4

.field public static final ACTION_TYPE_INSERTED:I = 0x2

.field public static final ACTION_TYPE_MOUNTING:I = 0x1

.field public static final ACTION_TYPE_UNKNOWN:I = 0x0

.field private static final ENCRYPT_TAG:Ljava/lang/String; = "EncryptConnector"

.field public static final FIRST_STORAGE_CID:Ljava/lang/String; = "sdcard"

.field private static final H_ENCRYPT_ASK_LOCK:I = 0x3

.field private static final H_ENCRYPT_GET_STATUS:I = 0x1

.field private static final H_ENCRYPT_MOUNT:I = 0x4

.field private static final H_ENCRYPT_UPDATE:I = 0x2

.field private static final LOCAL_LOGA:Z = false

.field private static final LOCAL_LOGB:Z = false

.field private static final LOCAL_LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "EncryptService"

.field public static toggle:Z


# instance fields
.field private final CryptBatch_ex_LOCK:Ljava/lang/Object;

.field private final CryptBatch_in_LOCK:Ljava/lang/Object;

.field private final CryptShare_ex_LOCK:Ljava/lang/Object;

.field private final CryptShare_in_LOCK:Ljava/lang/Object;

.field private ex_mount_return_code:I

.field private ex_share_return_code:I

.field private in_mount_return_code:I

.field private in_share_return_code:I

.field protected inter_db:Lcom/android/server/EncryptService$InternalDB;

.field protected isFormatRunning:Z

.field private mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mCryptoError:I

.field private mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

.field private mPms:Lcom/android/server/PackageManagerService;

.field private mReady:Z

.field protected mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

.field private m_MountService:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/EncryptService;->toggle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v9, "EncryptConnector"

    const-string v8, "EncryptService"

    invoke-direct {p0}, Landroid/os/storage/IEncryptService$Stub;-><init>()V

    iput-boolean v7, p0, Lcom/android/server/EncryptService;->mReady:Z

    iput-object v6, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptBatch_in_LOCK:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptBatch_ex_LOCK:Ljava/lang/Object;

    iput v7, p0, Lcom/android/server/EncryptService;->in_mount_return_code:I

    iput v7, p0, Lcom/android/server/EncryptService;->ex_mount_return_code:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptShare_in_LOCK:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptShare_ex_LOCK:Ljava/lang/Object;

    iput v7, p0, Lcom/android/server/EncryptService;->in_share_return_code:I

    iput v7, p0, Lcom/android/server/EncryptService;->ex_share_return_code:I

    iput-object v6, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iput-object v6, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    iput-object v6, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    iput-object v6, p0, Lcom/android/server/EncryptService;->mPms:Lcom/android/server/PackageManagerService;

    iput-object v6, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    new-instance v2, Lcom/android/server/EncryptService$3;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$3;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v6, p0, Lcom/android/server/EncryptService;->mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

    iput-object v6, p0, Lcom/android/server/EncryptService;->mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

    iput v7, p0, Lcom/android/server/EncryptService;->mCryptoError:I

    iput-boolean v7, p0, Lcom/android/server/EncryptService;->isFormatRunning:Z

    const-string v2, "EncryptService"

    const-string v2, "EncryptService :: "

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/EncryptService;->mPms:Lcom/android/server/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "EncryptService"

    invoke-direct {v2, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/EncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/EncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/EncryptService$EncryptServiceHandler;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/EncryptService$EncryptServiceHandler;-><init>(Lcom/android/server/EncryptService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    const-string v2, "EncryptService"

    const-string v2, " mHandler is null!"

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/server/EncryptService$MountServiceBinderListener;

    invoke-direct {v2, p0, v6}, Lcom/android/server/EncryptService$MountServiceBinderListener;-><init>(Lcom/android/server/EncryptService;Lcom/android/server/EncryptService$1;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    :cond_1
    new-instance v2, Lcom/android/server/EncryptService$MountCallBackBinderListener;

    invoke-direct {v2, p0, v6}, Lcom/android/server/EncryptService$MountCallBackBinderListener;-><init>(Lcom/android/server/EncryptService;Lcom/android/server/EncryptService$1;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

    iget-object v2, p0, Lcom/android/server/EncryptService;->mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->registerCallBackListener(Landroid/os/storage/IMountCallBackListener;)V

    :cond_2
    :goto_1
    new-instance v2, Lcom/android/server/EncryptService$InternalDB;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$InternalDB;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    new-instance v2, Lcom/android/server/EncryptService$CheckStorageState;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$CheckStorageState;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    new-instance v2, Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$EncryptionWakeLock;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    iget-object v2, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$EncryptionWakeLock;->InitWakeLock()V

    invoke-virtual {p0}, Lcom/android/server/EncryptService;->updateEncryptionEnable()V

    :try_start_0
    new-instance v2, Lcom/android/server/NativeDaemonConnector;

    const-string v3, "enc_report"

    const/16 v4, 0x1f4

    const-string v5, "EncryptConnector"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v2, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v2, :cond_3

    iput-boolean v7, p0, Lcom/android/server/EncryptService;->mReady:Z

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "EncryptConnector"

    invoke-direct {v1, v2, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .end local v1           #thread:Ljava/lang/Thread;
    :cond_3
    return-void

    :cond_4
    iput-object v6, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    const-string v2, "EncryptService"

    const-string v2, " mHandlerThread is null!"

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v2, "EncryptService"

    const-string v2, " mMountService is null!"

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "EncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " NativeDaemonConnector exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/EncryptService;->waitForReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/EncryptService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/EncryptService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/EncryptService;->mReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/EncryptService;ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/EncryptService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/EncryptService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private authByUid(I)Z
    .locals 4
    .parameter "callerUid"

    .prologue
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .local v1, myUid:I
    iget-object v3, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    .local v0, match:I
    if-nez v0, :cond_0

    const/4 v3, 0x1

    .end local v0           #match:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 12
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v9, " onEvent::"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " raw= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v9, " cooked = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v8, v0, v3

    .local v8, str:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v8           #str:Ljava/lang/String;
    :cond_0
    const/16 v9, 0x2b8

    if-ne p1, v9, :cond_5

    iget-object v9, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    :cond_1
    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$CryptoNotification;->destroy()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    :cond_2
    iget-object v9, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v10, "none"

    invoke-virtual {v9, v10}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/EncryptService;->mPms:Lcom/android/server/PackageManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    const/16 v6, 0x10

    .local v6, pError:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v10}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    or-int/lit8 v6, v6, 0x1

    :cond_3
    invoke-direct {p0, v6}, Lcom/android/server/EncryptService;->startEncryptActivtiy(I)V

    iget-object v9, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$EncryptionWakeLock;->release()V

    .end local v6           #pError:I
    :cond_4
    :goto_1
    const/4 v9, 0x1

    return v9

    :cond_5
    const/16 v9, 0x2b2

    if-ne p1, v9, :cond_b

    const/4 v7, 0x0

    .local v7, progressCnt:I
    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, devTok:[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    if-nez v9, :cond_6

    new-instance v9, Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/android/server/EncryptService$CryptoNotification;-><init>(Lcom/android/server/EncryptService;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    :cond_6
    const/16 v9, 0x64

    if-ge v7, v9, :cond_8

    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v10}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_2
    iget-object v11, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v11}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/EncryptService;->isFirstStorage(Ljava/lang/String;)Z

    move-result v11

    #calls: Lcom/android/server/EncryptService$CryptoNotification;->updateActiveNotification(ZZI)V
    invoke-static {v9, v10, v11, v7}, Lcom/android/server/EncryptService$CryptoNotification;->access$300(Lcom/android/server/EncryptService$CryptoNotification;ZZI)V

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    const/16 v9, 0x64

    if-ne v7, v9, :cond_a

    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v10}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const/4 v10, 0x1

    :goto_3
    iget-object v11, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v11}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/EncryptService;->isFirstStorage(Ljava/lang/String;)Z

    move-result v11

    #calls: Lcom/android/server/EncryptService$CryptoNotification;->updateCompletedNotification(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/server/EncryptService$CryptoNotification;->access$400(Lcom/android/server/EncryptService$CryptoNotification;ZZ)V

    goto :goto_1

    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    :cond_a
    const/16 v9, 0x64

    if-le v7, v9, :cond_4

    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$CryptoNotification;->destroy()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    goto :goto_1

    .end local v2           #devTok:[Ljava/lang/String;
    .end local v7           #progressCnt:I
    :cond_b
    const/16 v9, 0x2b5

    if-ne p1, v9, :cond_c

    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_1

    :cond_c
    const/16 v9, 0x2b6

    if-ne p1, v9, :cond_10

    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #devTok:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, nRet:I
    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v10}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    const/4 v10, 0x1

    :goto_4
    iget-object v11, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v11}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/EncryptService;->isFirstStorage(Ljava/lang/String;)Z

    move-result v11

    #calls: Lcom/android/server/EncryptService$CryptoNotification;->updateCompletedNotification(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/server/EncryptService$CryptoNotification;->access$400(Lcom/android/server/EncryptService$CryptoNotification;ZZ)V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    :cond_d
    iget-object v9, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$EncryptionWakeLock;->release()V

    iget-object v9, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    invoke-virtual {p0}, Lcom/android/server/EncryptService;->requestEncryptMount()I

    move-result v5

    goto/16 :goto_1

    :cond_e
    const/4 v10, 0x0

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->normalMount()V

    goto/16 :goto_1

    .end local v2           #devTok:[Ljava/lang/String;
    .end local v5           #nRet:I
    :cond_10
    const/16 v9, 0x2b7

    if-ne p1, v9, :cond_4

    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #devTok:[Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private startEncryptActivtiy(I)V
    .locals 3
    .parameter "popup_type"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.encrypt.action.SHOW_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.encrypt"

    const-string v2, "com.sec.android.app.encrypt.EncryptionPopupActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1402

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "encyprt_activity_popuptype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private waitForReady()V
    .locals 3

    .prologue
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/EncryptService;->mReady:Z

    if-nez v1, :cond_0

    const/4 v0, 0x5

    .local v0, retries:I
    :goto_1
    if-lez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/EncryptService;->mReady:Z

    if-eqz v1, :cond_1

    .end local v0           #retries:I
    :cond_0
    return-void

    .restart local v0       #retries:I
    :cond_1
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const-string v1, "EncryptService"

    const-string v2, " waitForReady :: Waiting too long for mReady!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected checkMountedStorage(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    const/4 v0, 0x0

    .local v0, bMounted:Z
    const-string v1, ""

    .local v1, sStorageState:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->getStroageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected checkNextWorkingJob(Ljava/lang/String;)Z
    .locals 1
    .parameter "sPath"

    .prologue
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkPolicyInfo(Ljava/lang/String;)Z
    .locals 2
    .parameter "sPath"

    .prologue
    const/4 v0, 0x0

    .local v0, bRet:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "external"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v0

    goto :goto_0
.end method

.method protected checkSharedStorage(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    const/4 v0, 0x0

    .local v0, bShared:Z
    const-string v1, ""

    .local v1, sStorageState:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->getStroageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected checkWorkingState()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v0}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "working"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cryptoMain(Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 10
    .parameter "sPath"
    .parameter "sStorageAction"
    .parameter "l_bPopup"
    .parameter "bAppReq"

    .prologue
    const/4 v5, 0x5

    const/4 v8, 0x1

    const/4 v7, -0x4

    const/16 v6, -0x64

    const-string v9, "none"

    const/4 v2, 0x0

    .local v2, command:I
    move v1, p3

    .local v1, bPopupBox:Z
    const/4 v3, 0x0

    .local v3, nRet:I
    invoke-virtual {p0, p2}, Lcom/android/server/EncryptService;->getActionType(Ljava/lang/String;)I

    move-result v0

    .local v0, actionType:I
    if-nez v0, :cond_0

    move v4, v6

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->checkWorkingState()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->updateCryptoPolicy(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->requestEncryptFormat(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->updateWorkingPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v6

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getWorkingCommand()I

    move-result v2

    if-nez v2, :cond_6

    if-eq v0, v5, :cond_8

    move v4, v6

    goto :goto_0

    :cond_6
    const/4 v4, -0x7

    if-ne v2, v4, :cond_7

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v5, "none"

    invoke-virtual {v4, v9}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    move v4, v6

    goto :goto_0

    :cond_7
    const/4 v4, -0x6

    if-ne v2, v4, :cond_8

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v5, "none"

    invoke-virtual {v4, v9}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    move v4, v7

    goto :goto_0

    :cond_8
    if-ne v0, v5, :cond_b

    const/4 v1, 0x0

    :cond_9
    :goto_1
    const/4 v3, -0x4

    if-eqz v1, :cond_12

    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->doPopupBox(I)Z

    :cond_a
    :goto_2
    move v4, v3

    goto :goto_0

    :cond_b
    if-ne v0, v8, :cond_10

    iget-object v4, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService$CheckStorageState;->checkSharedStorageState(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v6

    goto :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService$CheckStorageState;->checkFormatingStorageState(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v1, 0x0

    goto :goto_1

    :cond_d
    iget-object v4, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService$CheckStorageState;->checkBootingStorageState(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v7

    goto/16 :goto_0

    :cond_e
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_f
    const/16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    move v4, v6

    goto/16 :goto_0

    :cond_10
    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    iget-object v4, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Lcom/android/server/EncryptService$CheckStorageState;->setBootingStorageState(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v7

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    goto :goto_1

    :cond_12
    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->doWork(I)Z

    move-result v4

    if-nez v4, :cond_13

    const/16 v3, -0x64

    goto :goto_2

    :cond_13
    iget-object v4, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService$CheckStorageState;->checkFormatingStorageState(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method protected doPopupBox(I)Z
    .locals 4
    .parameter "command"

    .prologue
    const/4 v0, 0x0

    .local v0, isWorking:Z
    const/4 v1, 0x0

    .local v1, popuptype:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/EncryptService;->startEncryptActivtiy(I)V

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v3, "none"

    invoke-virtual {v2, v3}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    return v0
.end method

.method protected doWork(I)Z
    .locals 3
    .parameter "command"

    .prologue
    const/4 v0, 0x0

    .local v0, bRet:Z
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->waitForUnmount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v1, v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/EncryptService;->requestBatch()V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/EncryptService;->requestEncryptMount()I

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/EncryptService;->normalMount()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doWorkNextJob(Ljava/lang/String;)Z
    .locals 5
    .parameter "sPath"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .local v1, isWorking:Z
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkNextWorkingJob(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, sWorkPath:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->updateWorkingPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getWorkingCommand()I

    move-result v0

    .local v0, command:I
    if-eqz v0, :cond_2

    const/4 v3, -0x7

    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->doWork(I)Z

    move-result v1

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/EncryptService;->normalMount()V

    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "sPath"

    .prologue
    const/4 v0, 0x0

    .local v0, nRet:I
    return v0
.end method

.method protected getActionType(Ljava/lang/String;)I
    .locals 1
    .parameter "sAsk"

    .prologue
    const-string v0, "inserted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const-string v0, "mounting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "booting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-string v0, "Application"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->setError(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLatestError()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/EncryptService;->mCryptoError:I

    return v0
.end method

.method protected getMountServiceInstance()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    return-object v1

    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "EncryptService"

    const-string v2, "getMountServiceInstance : Can\'t get mount service!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_0
.end method

.method protected getStorageCryptoState(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "sPath"

    .prologue
    const/4 v3, 0x0

    .local v3, sRet:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, bRet:Z
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->updateStorageCID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_2
    const-string v3, "NULL"

    :cond_3
    :goto_1
    move-object v4, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v2

    .local v2, mountService:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->getEncryptedStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_6

    :cond_5
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const-string v4, "INVALID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8d

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v3, "INVALID"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/Exception;
    const-string v4, "EncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getStorageCryptoState exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8e

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_1
.end method

.method protected getStorageDevPath(Ljava/lang/String;)V
    .locals 9
    .parameter "sPath"

    .prologue
    const-string v8, "EncryptService"

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, int_path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .local v1, ext_path:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, sDevPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v3

    .local v3, mountService:Landroid/os/storage/IMountService;
    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Landroid/os/storage/IMountService;->getDeviceDriverPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "EncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getDeviceDriverPath sDevPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #ext_path:Ljava/lang/String;
    .end local v2           #int_path:Ljava/lang/String;
    .end local v3           #mountService:Landroid/os/storage/IMountService;
    .end local v4           #sDevPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "EncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getStorageDevPath : RemoteException exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/Exception;
    const-string v5, "EncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getStorageDevPath : Exception exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getStroageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "sPath"

    .prologue
    const-string v5, "EncryptService"

    const/4 v2, 0x0

    .local v2, sStorageState:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v1

    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :goto_0
    return-object v2

    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    :cond_0
    const/16 v3, 0xf0

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    const/16 v3, 0xf1

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getStroageState : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const/16 v3, 0xf2

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getStroageState : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getWorkingCommand()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x7

    .local v0, nRet:I
    const/4 v1, 0x0

    .local v1, sStorageState:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->getStorageCryptoState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, -0x7

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->updateCryptoPolicy(Ljava/lang/String;)Z

    const-string v2, "NULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "COMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "DecryptBATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "EncryptBATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    if-ne v2, v3, :cond_7

    const/4 v0, -0x6

    goto :goto_1

    :cond_7
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->setError(I)V

    const/4 v0, -0x7

    goto :goto_1
.end method

.method public isFirstStorage(Ljava/lang/String;)Z
    .locals 1
    .parameter "sPath"

    .prologue
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSharedStorage()Z
    .locals 11

    .prologue
    const-string v7, "shared"

    const-string v10, "EncryptService"

    const/4 v0, 0x0

    .local v0, bRet:Z
    :try_start_0
    sget-boolean v7, Lcom/android/server/StorageFeature;->INSTALLED_FIRST_DISK:Z

    if-eqz v7, :cond_0

    const-string v7, "EncryptService"

    const-string v8, " isSharedStorage : INSTALLED_INTERNAL_DISK!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v7, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v7, :cond_1

    const-string v7, "EncryptService"

    const-string v8, " isSharedStorage : INSTALLED_EXTERNAL_DISK!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v7, Lcom/android/server/StorageFeature;->INSTALLED_USBHOST_DISK:Z

    if-eqz v7, :cond_2

    const-string v7, "EncryptService"

    const-string v8, " isSharedStorage : INSTALLED_USBHOST_DISK!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .local v3, int_path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, ext_path:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, sStorageState:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, sStorageState2:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v4

    .local v4, mountService:Landroid/os/storage/IMountService;
    if-eqz v4, :cond_4

    invoke-interface {v4, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "shared"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v0, 0x1

    :cond_3
    :goto_0
    invoke-interface {v4, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "EncryptService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " isSharedStorage interSD="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", exterSD="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #ext_path:Ljava/lang/String;
    .end local v3           #int_path:Ljava/lang/String;
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    .end local v5           #sStorageState:Ljava/lang/String;
    .end local v6           #sStorageState2:Ljava/lang/String;
    :cond_4
    :goto_1
    return v0

    .restart local v2       #ext_path:Ljava/lang/String;
    .restart local v3       #int_path:Ljava/lang/String;
    .restart local v4       #mountService:Landroid/os/storage/IMountService;
    .restart local v5       #sStorageState:Ljava/lang/String;
    .restart local v6       #sStorageState2:Ljava/lang/String;
    :cond_5
    invoke-interface {v4, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "shared"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .end local v2           #ext_path:Ljava/lang/String;
    .end local v3           #int_path:Ljava/lang/String;
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    .end local v5           #sStorageState:Ljava/lang/String;
    .end local v6           #sStorageState2:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "EncryptService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isSharedStorage : RemoteException exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/Exception;
    const-string v7, "EncryptService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isSharedStorage : Exception exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "sPolicyORsPath2"

    .prologue
    move-object v0, p1

    .local v0, sPolicyORsPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/EncryptService$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/EncryptService$1;-><init>(Lcom/android/server/EncryptService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    return v1
.end method

.method protected normalMount()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$9;

    invoke-direct {v1, p0}, Lcom/android/server/EncryptService$9;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected normalUnmount(Ljava/lang/String;)V
    .locals 6
    .parameter "sPath"

    .prologue
    const-string v5, "EncryptService"

    const/4 v2, 0x0

    .local v2, nRet:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v1

    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-interface {v1, p1, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    const/16 v3, 0x10f

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " normalUnmount : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const/16 v3, 0x110

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " normalUnmount : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/EncryptService$4;

    invoke-direct {v0, p0}, Lcom/android/server/EncryptService$4;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0}, Lcom/android/server/EncryptService$4;->start()V

    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/EncryptService$5;-><init>(Lcom/android/server/EncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected requestBatch()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$6;

    invoke-direct {v1, p0}, Lcom/android/server/EncryptService$6;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected requestEncryptFormat(Ljava/lang/String;)V
    .locals 6
    .parameter "sPath"

    .prologue
    const-string v5, "EncryptService"

    const/4 v2, 0x0

    .local v2, nRet:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v1

    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "working"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/EncryptService$CheckStorageState;->setFormatingStorageState(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$InternalDB;->getPwdHashCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v3, v4}, Landroid/os/storage/IMountService;->encryptFormatVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    const/16 v3, 0xbe

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestEncryptFormat : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const/16 v3, 0xbf

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestEncryptFormat : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    goto :goto_0
.end method

.method protected requestEncryptMount()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$7;

    invoke-direct {v1, p0}, Lcom/android/server/EncryptService$7;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public saveRecoveryPassword(Ljava/lang/String;)I
    .locals 2
    .parameter "recoveryPassword"

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/EncryptService;->authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1}, Lcom/android/server/EncryptService$InternalDB;->getPwdHashCode()Ljava/lang/String;

    move-result-object v0

    .local v0, password:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/deviceencryption/DeviceEncryptionManager;->saveRecoveryPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .end local v0           #password:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setEncryptionEnabled(Ljava/lang/String;Z)V
    .locals 0
    .parameter "sPath"
    .parameter "bSet"

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    return-void
.end method

.method protected setEncryptionEnabled2(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "sPath"
    .parameter "bSet"

    .prologue
    const-string v5, "EncryptService"

    const/4 v0, 0x0

    .local v0, bRet:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v2

    .local v2, mntSvc:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, p1, p2}, Landroid/os/storage/IMountService;->setEncryptionEnabled(Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .end local v2           #mntSvc:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    const/16 v3, 0xe7

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setEncryptionEnabled2 : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    const/16 v3, 0xe8

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setEncryptionEnabled2 : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setEncryptionStorageState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sCID"
    .parameter "sState"

    .prologue
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/EncryptService$8;-><init>(Lcom/android/server/EncryptService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setError(I)V
    .locals 0
    .parameter "error"

    .prologue
    iput p1, p0, Lcom/android/server/EncryptService;->mCryptoError:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 3
    .parameter "password2"

    .prologue
    move-object v0, p1

    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/deviceencryption/DeviceEncryptionManager;->saveToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/EncryptService$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/EncryptService$2;-><init>(Lcom/android/server/EncryptService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unmountVolume(Ljava/lang/String;Z)V
    .locals 0
    .parameter "sPath"
    .parameter "force"

    .prologue
    return-void
.end method

.method protected updateCryptoPolicy(Ljava/lang/String;)Z
    .locals 4
    .parameter "sPath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, isEnable:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1, v3}, Lcom/android/server/EncryptService$InternalDB;->setCryptoPolicy(I)V

    :goto_1
    move v1, v3

    :goto_2
    return v1

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "external"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x118

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1, v2}, Lcom/android/server/EncryptService$InternalDB;->setCryptoPolicy(I)V

    goto :goto_1
.end method

.method protected updateEncryptionDisable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .local v1, inter:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .local v0, exter:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method protected updateEncryptionEnable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .local v1, inter:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .local v0, exter:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method protected updateStorageCID(Ljava/lang/String;)Z
    .locals 7
    .parameter "sPath"

    .prologue
    const-string v6, "EncryptService"

    const/4 v0, 0x0

    .local v0, bRet:Z
    const/4 v3, 0x0

    .local v3, sStorageCID:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "sdcard"

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4, v3}, Lcom/android/server/EncryptService$InternalDB;->setStorageCID(Ljava/lang/String;)V

    :cond_0
    move v4, v0

    :goto_1
    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v2

    .local v2, mountService:Landroid/os/storage/IMountService;
    if-nez v2, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->getStorageCidNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "EncryptService"

    const-string v5, " updateStorageCID : When calling IMountService.getStorageCidNumber, error was occured!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x96

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateStorageCID : RemoteException exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x97

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_0

    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateStorageCID exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x98

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_0
.end method

.method protected updateWorkingPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "lsPath"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, sWorkingPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageFirstInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_8

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->waitForUnmount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/16 v1, 0x79

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/16 v1, 0x7a

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_1

    :cond_7
    const-string v1, "external"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    goto/16 :goto_0

    :cond_9
    move-object v0, p1

    goto :goto_2

    :cond_a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0x7c

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1, v0}, Lcom/android/server/EncryptService$InternalDB;->setWorkingPath(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected waitForUnmount(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    const/4 v0, 0x6

    .local v0, retries:I
    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0xd2

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    const-string v1, "EncryptService"

    const-string v2, " waitForUnmount End! Storage unmount fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1
.end method
