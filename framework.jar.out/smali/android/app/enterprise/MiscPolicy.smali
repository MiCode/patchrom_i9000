.class public Landroid/app/enterprise/MiscPolicy;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final WIPE_EXTERNAL_MEMORY:I = 0x2

.field public static final WIPE_INTERNAL_EXTERNAL_MEMORY:I = 0x3

.field public static final WIPE_INTERNAL_MEMORY:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/enterprise/IMiscPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "MiscPolicy"

    sput-object v0, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    return-void
.end method


# virtual methods
.method public addBookmarkOnHomeScreenBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "icon"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addBookmarkOnHomeScreenBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addBookmarkOnHomeScreenByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 3
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "iconBuffer"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addBookmarkOnHomeScreenByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addSubscribedCalendar(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3
    .parameter "emailId"
    .parameter "accountType"
    .parameter "url"
    .parameter "displayName"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IMiscPolicy;->addSubscribedCalendar(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public formatInternalStorage(ZZ)Z
    .locals 3
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->formatInternalStorage(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "fileList"
    .parameter "filters"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public formatStorageCard(Z)Z
    .locals 3
    .parameter "isExternal"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->formatStorageCard(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledCertiFicateList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getInstalledCertiFicateList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 3
    .parameter "type"
    .parameter "value"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->installCertificateWithType(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public installCertificatesFromSdCard()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->installCertificatesFromSdCard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isBluetoothEnabled(Z)Z
    .locals 6
    .parameter "showMsg"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x1

    .local v1, enabled:Z
    :try_start_0
    iget-object v3, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, value:I
    if-ne v5, v2, :cond_0

    move v1, v5

    .end local v2           #value:I
    :goto_0
    return v1

    .restart local v2       #value:I
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .end local v2           #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCameraEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->isCameraEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExternalStorageEncrypted()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->isExternalStorageEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInternalStorageEncrypted()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->isInternalStorageEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWiFiEnabled(Z)Z
    .locals 6
    .parameter "showMsg"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x1

    .local v1, enabled:Z
    :try_start_0
    iget-object v3, p0, Landroid/app/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, value:I
    if-ne v5, v2, :cond_0

    move v1, v5

    .end local v2           #value:I
    :goto_0
    return v1

    .restart local v2       #value:I
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .end local v2           #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setBluetoothState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setBluetooth(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCameraState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setCamera(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 3
    .parameter "isEncrypt"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setExternalStorageEncryption(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 3
    .parameter "isEncrypt"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setInternalStorageEncryption(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMicrophoneState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setMicrophoneState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWiFiState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setWiFi(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wipeDevice(I)Z
    .locals 6
    .parameter "flags"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    .local v1, result:Z
    iget-object v3, p0, Landroid/app/enterprise/MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    if-ne p1, v5, :cond_1

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/app/enterprise/MiscPolicy;->formatStorageCard(Z)Z

    :cond_1
    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_3

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/enterprise/MiscPolicy;->formatStorageCard(Z)Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/app/enterprise/MiscPolicy;->formatInternalStorage(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_3
    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Landroid/app/enterprise/MiscPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with misc info policy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method
