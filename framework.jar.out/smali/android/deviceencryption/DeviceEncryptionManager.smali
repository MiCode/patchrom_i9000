.class public Landroid/deviceencryption/DeviceEncryptionManager;
.super Ljava/lang/Object;
.source "DeviceEncryptionManager.java"


# static fields
.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_FORMAT:I = 0x20

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_REBOOT:I = 0x40

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_REINSERT:I = 0x60

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_ENABLE_POLICY:I = 0x2

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_ERROR:I = 0x10

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_FIRST_STORAGE:I = 0x0

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_SECOND_STORAGE:I = 0x1

.field public static final DECRYPT:I = 0x0

.field public static final ECRYPT_ACTIVITY_POPUP_INTENT_NAME:Ljava/lang/String; = "encyprt_activity_popuptype"

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_NOTI_ERR_BATCH:I = 0x40

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_NOTI_ERR_MAPPING:I = 0x50

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_SHARED_BIT:I = 0x8

.field public static final ENCRYPT:I = 0x1

.field public static final ENCRYPT_ACTION:Ljava/lang/String; = "com.sec.android.app.encrypt.action.ENCRYPT"

.field public static final EXTERNAL:Ljava/lang/String; = "external"

.field public static final EXTERNAL_STORAGE:I = 0x0

.field public static final EXT_POLICY_STATUS_BIT_ENC:I = 0x4

.field public static final EXT_STATUS_BIT_COMP:I = 0x1

.field public static final EXT_STATUS_BIT_DECB:I = 0x2

.field public static final EXT_STATUS_BIT_ENCB:I = 0x3

.field public static final EXT_STATUS_BIT_NULL:I = 0x0

.field public static final INTERNAL:Ljava/lang/String; = "internal"

.field public static final INTERNAL_EXTERNAL:Ljava/lang/String; = "internal:external"

.field public static final INTERNAL_STORAGE:I = 0x1

.field private static final LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object; = null

.field private static final NORMAL_PASSWORD:I = 0x0

.field public static final POLICY_APPLIED:Ljava/lang/String; = "com.sec.android.app.encrypt.action.POLICY_APPLIED"

.field private static final RECOVERY_PASSWORD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceEncryption"

.field public static final WHOLE_STORAGE:I = 0x2

.field private static final debug:Z

.field public static final enabled:Ljava/lang/String;

.field private static isFirstboot:Z

.field public static m_InstEncSvc:Landroid/os/storage/IEncryptService;

.field public static final supportFileLevelEncryption:Ljava/lang/String;

.field private static token:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "false"

    const-string v0, "ro.secdevenc"

    const-string v1, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v0, "ro.file_level_encryption"

    const-string v1, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->supportFileLevelEncryption:Ljava/lang/String;

    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager$1;

    invoke-direct {v0}, Landroid/deviceencryption/DeviceEncryptionManager$1;-><init>()V

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    sput-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    sput-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->token:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/deviceencryption/DeviceEncryptionManager;->isFirstboot:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static checkPassword(Ljava/lang/String;)Z
    .locals 6
    .parameter "password"

    .prologue
    const/4 v4, 0x0

    const-string v5, "DeviceEncryption"

    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, ret:Z
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3}, Landroid/deviceencryption/DeviceEncryptionManager;->verifyPassword(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    sput-object p0, Landroid/deviceencryption/DeviceEncryptionManager;->token:Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_5

    :try_start_1
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-nez v2, :cond_4

    const-string v2, "encrypt"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v2

    sput-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    :cond_4
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-eqz v2, :cond_6

    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    invoke-interface {v2, p0}, Landroid/os/storage/IEncryptService;->setPassword(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_6
    :try_start_3
    const-string v2, "DeviceEncryption"

    const-string v3, "checkPassword : IEncryptService instance is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceEncryption"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkPassword : exception =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static native getBatchStatus(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCryptBatchStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "label"

    .prologue
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->getBatchStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, propertyBuffer:Ljava/lang/String;
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .end local v0           #propertyBuffer:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getExternalStorageStatus()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    const-string v1, "policy"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, appliedPolicy:Ljava/lang/String;
    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const-string v1, "external"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public static getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "label"

    .prologue
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, propertyBuffer:Ljava/lang/String;
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .end local v0           #propertyBuffer:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static native getFileProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getInternalStorageStatus()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    const-string v1, "policy"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, appliedPolicy:Ljava/lang/String;
    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public static getSaltFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getSaltPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getSaltPath()Ljava/lang/String;
.end method

.method public static isDeviceEncryptionEnabled()Z
    .locals 2

    .prologue
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFileEncryptionEnabled()Z
    .locals 2

    .prologue
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->supportFileLevelEncryption:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLockPasswordEnabled()Z
    .locals 3

    .prologue
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    .local v0, ret:Z
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isPasswordEnabled()Z

    move-result v0

    monitor-exit v1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static native isPasswordEnabled()Z
.end method

.method public static isPasswordRequired()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private static native recoverPassword(Ljava/lang/String;)Z
.end method

.method private static native removeEDK_P()V
.end method

.method public static removeKeyByForce()V
    .locals 2

    .prologue
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->removeEDK_P()V

    goto :goto_0
.end method

.method public static resetPassword(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .parameter "password"
    .parameter "obj"

    .prologue
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    .local v0, ret:Z
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->recoverPassword(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    if-eqz p1, :cond_1

    :cond_1
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static saveLockPassword(Ljava/lang/String;)Z
    .locals 5
    .parameter "password"

    .prologue
    const/4 v3, 0x0

    const-string v4, "DeviceEncryption"

    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->token:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/deviceencryption/DeviceEncryptionManager;->savePassword(Ljava/lang/String;Ljava/lang/String;I)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_1
    :try_start_1
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-nez v1, :cond_2

    const-string v1, "encrypt"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v1

    sput-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    :cond_2
    const-string v1, "DeviceEncryption"

    const-string v2, "saveLockPassword : IEncryptService : setPassword!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    const-string v2, ""

    invoke-interface {v1, v2}, Landroid/os/storage/IEncryptService;->setPassword(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v1, 0x0

    sput-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->token:Ljava/lang/String;

    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_3
    :try_start_3
    const-string v1, "DeviceEncryption"

    const-string v2, "saveLockPassword : IEncryptService instance is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeviceEncryption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " saveLockPassword : exception =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->checkPassword(Ljava/lang/String;)Z

    goto :goto_2
.end method

.method private static native savePassword(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static saveRecoveryPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "newPassword"
    .parameter "lockPassword"

    .prologue
    const/4 v2, 0x1

    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, p0, v1}, Landroid/deviceencryption/DeviceEncryptionManager;->savePassword(Ljava/lang/String;Ljava/lang/String;I)Z

    monitor-exit v0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static saveToken(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    sput-object p0, Landroid/deviceencryption/DeviceEncryptionManager;->token:Ljava/lang/String;

    return-void
.end method

.method private setEncryptPolicyInternal(IIZ)V
    .locals 6
    .parameter "internal"
    .parameter "external"
    .parameter "force"

    .prologue
    const/4 v5, 0x1

    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    .local v1, cmd:Ljava/lang/String;
    if-ne p1, v5, :cond_4

    if-ne p2, v5, :cond_4

    const-string v1, "internal:external"

    :cond_2
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.encrypt.action.ENCRYPT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "cmd"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "force"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "com.sec.android.app.encrypt"

    const-string v4, "com.sec.android.app.encrypt.DeviceEncryptionActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .local v0, DPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z

    move-result v3

    if-eq v3, v5, :cond_0

    :cond_3
    const-string v3, "DeviceEncryption"

    const-string v4, "setEncryptPolicyInternal for system application"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #DPM:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    if-ne p1, v5, :cond_5

    const-string v1, "internal"

    goto :goto_1

    :cond_5
    if-ne p2, v5, :cond_2

    const-string v1, "external"

    goto :goto_1
.end method

.method public static setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "label"
    .parameter "value"

    .prologue
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    .local v0, ret:I
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static native setFileProperty(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native verifyPassword(Ljava/lang/String;I)Z
.end method


# virtual methods
.method public setEncryptPolicy(II)V
    .locals 5
    .parameter "which"
    .parameter "policy"

    .prologue
    const/4 v4, 0x1

    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, internal:I
    const/4 v0, 0x0

    .local v0, external:I
    if-eq p2, v4, :cond_2

    if-nez p2, :cond_0

    :cond_2
    if-nez p1, :cond_5

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v2

    if-ne v2, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    move v0, p2

    :cond_4
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_7

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v2

    if-ne v2, v4, :cond_6

    const/4 v0, 0x1

    :cond_6
    move v1, p2

    goto :goto_1

    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    move v1, p2

    move v0, p2

    goto :goto_1
.end method

.method public setEncryptionPolicy(II)V
    .locals 1
    .parameter "internal"
    .parameter "external"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    return-void
.end method

.method public setEncryptionPolicy(IIZ)V
    .locals 0
    .parameter "internal"
    .parameter "external"
    .parameter "force"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    return-void
.end method
