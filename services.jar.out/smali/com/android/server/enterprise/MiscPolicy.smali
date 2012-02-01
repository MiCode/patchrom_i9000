.class public Lcom/android/server/enterprise/MiscPolicy;
.super Landroid/app/enterprise/IMiscPolicy$Stub;
.source "MiscPolicy.java"


# static fields
.field private static final BROADCAST_DELAY:I = 0x1388

.field private static final CERT_KEY_STORE_TYPE_BKS:Ljava/lang/String; = "BKS"

.field private static final CERT_STORE_PASS:Ljava/lang/String; = "changeit"

.field public static final CERT_TYPE_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final CERT_TYPE_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final INSTALL_ACTION:Ljava/lang/String; = "android.credentials.INSTALL"

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final KEY_CERT_FILE:Ljava/lang/String; = "javax.net.ssl.trustStore"

.field private static final MESSAGE_ID:I = 0x1

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORGANIZER_CAN_RESPOND:Ljava/lang/String; = "organizerCanRespond"

.field public static final OWNER_ACCOUNT:Ljava/lang/String; = "ownerAccount"

.field public static final PRIVATE_KEY:Ljava/lang/String; = "PKEY"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "KEY"

.field public static final SELECTED:Ljava/lang/String; = "selected"

.field private static final SRV_KEY_STORE:Ljava/lang/String; = "KeyStore"

.field public static final SYNC_EVENTS:Ljava/lang/String; = "sync_events"

.field private static final TAG:Ljava/lang/String; = "MiscPolicy"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final _SYNC_ACCOUNT:Ljava/lang/String; = "_sync_account"

.field public static final _SYNC_ACCOUNT_TYPE:Ljava/lang/String; = "_sync_account_type"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/MiscPolicy;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    invoke-direct {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/MiscPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/MiscPolicy$1;-><init>(Lcom/android/server/enterprise/MiscPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createBookmarkIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .locals 1
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "icon"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, i:Landroid/content/Intent;
    return-object v0
.end method

.method private getProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider;
    .locals 5
    .parameter "aAlgorithm"
    .parameter "aService"

    .prologue
    const/4 v3, 0x0

    const-string v4, "MiscPolicy"

    const-string v2, "MiscPolicy"

    const-string v2, "getInstalledCertiFicateList start"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, lProvs:[Ljava/security/Provider;
    :try_start_0
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "MiscPolicy"

    const-string v2, "getInstalledCertiFicateList end"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public addBookmarkOnHomeScreenBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "icon"

    .prologue
    return-void
.end method

.method public addBookmarkOnHomeScreenByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 0
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "iconBuffer"

    .prologue
    return-void
.end method

.method public addBookmarkOnHomeScreenInputStream(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "iconIS"

    .prologue
    return-void
.end method

.method public addSubscribedCalendar(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .parameter "emailId"
    .parameter "accountType"
    .parameter "url"
    .parameter "displayName"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public allowBluetooth(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_BLUETOOTH"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .local v3, token:J
    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .end local v0           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_enabled"

    if-eqz p1, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public allowWiFi(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_WIFI"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    if-nez p1, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .local v4, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .end local v4           #wm:Landroid/net/wifi/WifiManager;
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_enabled"

    if-eqz p1, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public formatInternalStorage(ZZ)Z
    .locals 1
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "fileList"
    .parameter "filters"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Z)Z
    .locals 1
    .parameter "isExternal"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getInstalledCertiFicateList()Ljava/util/List;
    .locals 15
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
    const-string v12, "MiscPolicy"

    const-string v13, "getInstalledCertiFicateList start"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .local v5, lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    const-string v7, "BKS"

    .local v7, lCertType:Ljava/lang/String;
    const-string v12, "javax.net.ssl.trustStore"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, lFileName:Ljava/lang/String;
    if-eqz v8, :cond_4

    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v12, "KeyStore"

    invoke-direct {p0, v7, v12}, Lcom/android/server/enterprise/MiscPolicy;->getProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v11

    .local v11, lProvider:Ljava/security/Provider;
    if-eqz v11, :cond_3

    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " provider found to handle "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/security/Provider;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v10

    .local v10, lKeyStore:Ljava/security/KeyStore;
    if-eqz v10, :cond_2

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v9, lFis:Ljava/io/FileInputStream;
    const-string v12, "changeit"

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v10}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, lAliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    const/16 v12, 0x64

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v5           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .local v6, lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, lAliasName:Ljava/lang/String;
    invoke-virtual {v10, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .local v3, lCert:Ljava/security/cert/Certificate;
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .local v4, lCertInfo:Landroid/app/enterprise/CertificateInfo;
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AliasName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v3}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .end local v1           #lAliasName:Ljava/lang/String;
    .end local v3           #lCert:Ljava/security/cert/Certificate;
    .end local v4           #lCertInfo:Landroid/app/enterprise/CertificateInfo;
    :catch_0
    move-exception v12

    move-object v0, v12

    move-object v5, v6

    .end local v2           #lAliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v9           #lFis:Ljava/io/FileInputStream;
    .end local v10           #lKeyStore:Ljava/security/KeyStore;
    .end local v11           #lProvider:Ljava/security/Provider;
    .local v0, e:Ljava/security/KeyStoreException;
    .restart local v5       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_1
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .end local v0           #e:Ljava/security/KeyStoreException;
    :cond_0
    :goto_2
    const-string v12, "MiscPolicy"

    const-string v13, "getInstalledCertiFicateList end"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .end local v5           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v2       #lAliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v9       #lFis:Ljava/io/FileInputStream;
    .restart local v10       #lKeyStore:Ljava/security/KeyStore;
    .restart local v11       #lProvider:Ljava/security/Provider;
    :cond_1
    :try_start_2
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "number of certificates found : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v5, v6

    .end local v6           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v5       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    goto :goto_2

    .end local v2           #lAliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9           #lFis:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    const-string v12, "MiscPolicy"

    const-string v13, "keystore instantiation failed"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v10           #lKeyStore:Ljava/security/KeyStore;
    .end local v11           #lProvider:Ljava/security/Provider;
    :catch_1
    move-exception v12

    move-object v0, v12

    goto :goto_1

    .restart local v11       #lProvider:Ljava/security/Provider;
    :cond_3
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no provider found to handle for type:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .end local v11           #lProvider:Ljava/security/Provider;
    :catch_2
    move-exception v12

    move-object v0, v12

    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    :goto_3
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v12

    move-object v0, v12

    .local v0, e:Ljava/security/cert/CertificateException;
    :goto_4
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_2

    .end local v0           #e:Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v12

    move-object v0, v12

    .local v0, e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    const-string v12, "MiscPolicy"

    const-string v13, "certificate installation file doesn\'t exist"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v5           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v2       #lAliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v9       #lFis:Ljava/io/FileInputStream;
    .restart local v10       #lKeyStore:Ljava/security/KeyStore;
    .restart local v11       #lProvider:Ljava/security/Provider;
    :catch_5
    move-exception v12

    move-object v0, v12

    move-object v5, v6

    .end local v6           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v5       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    goto :goto_5

    .end local v5           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v6       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    :catch_6
    move-exception v12

    move-object v0, v12

    move-object v5, v6

    .end local v6           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v5       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    goto :goto_4

    .end local v5           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v6       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    :catch_7
    move-exception v12

    move-object v0, v12

    move-object v5, v6

    .end local v6           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v5       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    goto :goto_3
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 7
    .parameter "type"
    .parameter "value"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    const-string v6, "Misc Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/MiscPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2           #token:J
    :cond_0
    return-void

    .restart local v2       #token:J
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiscPolicy::installCertificateWithType() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installCertificatesFromSdCard()V
    .locals 0

    .prologue
    return-void
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .locals 0
    .parameter "pair"

    .prologue
    return-void
.end method

.method public isCameraEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x1

    .local v2, ret:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, value:I
    if-ne v7, v3, :cond_1

    move v2, v7

    :goto_0
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, i:Landroid/content/Intent;
    const-string v4, "message"

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const v6, 0x104016b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #value:I
    :cond_0
    :goto_1
    return v2

    .restart local v3       #value:I
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    .end local v3           #value:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isExternalStorageEncrypted()Z
    .locals 8

    .prologue
    const-string v5, "MiscPolicy"

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_SECURITY"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, ident:J
    :try_start_0
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager;

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/deviceencryption/DeviceEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v0, dem:Landroid/deviceencryption/DeviceEncryptionManager;
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v4

    .local v4, status:Z
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isExternalStorageEncrypted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    .end local v4           #status:Z
    :goto_0
    return v5

    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "MiscPolicy"

    const-string v6, "Failed requesting data encryption"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x0

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isInternalStorageEncrypted()Z
    .locals 8

    .prologue
    const-string v5, "MiscPolicy"

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_SECURITY"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, ident:J
    :try_start_0
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager;

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/deviceencryption/DeviceEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v0, dem:Landroid/deviceencryption/DeviceEncryptionManager;
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v4

    .local v4, status:Z
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInternalStorageEncrypted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    .end local v4           #status:Z
    :goto_0
    return v5

    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "MiscPolicy"

    const-string v6, "Failed requesting data encryption"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x0

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x1

    .local v2, ret:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "microphone_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, value:I
    if-ne v7, v3, :cond_1

    move v2, v7

    :goto_0
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, i:Landroid/content/Intent;
    const-string v4, "message"

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const v6, 0x104016c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #value:I
    :cond_0
    :goto_1
    return v2

    .restart local v3       #value:I
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    .end local v3           #value:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setBluetooth(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_BLUETOOTH"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .local v3, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_enabled"

    if-eqz p1, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x1

    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBluetooth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #ba:Landroid/bluetooth/BluetoothAdapter;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .restart local v0       #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v0           #ba:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setCamera(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_HW_CONTROL"

    const-string v6, "Misc Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_enabled"

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCamera : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 8
    .parameter "isEncrypt"

    .prologue
    const/4 v7, 0x0

    const-string v4, "MiscPolicy"

    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    const-string v6, "Misc Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, ident:J
    :try_start_0
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager;

    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/deviceencryption/DeviceEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v0, dem:Landroid/deviceencryption/DeviceEncryptionManager;
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setExternalStorageEncryption : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .restart local v0       #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :cond_0
    move v5, v7

    goto :goto_0

    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "MiscPolicy"

    const-string v5, "Failed requesting data encryption"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 8
    .parameter "isEncrypt"

    .prologue
    const/4 v7, 0x1

    const-string v4, "MiscPolicy"

    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    const-string v6, "Misc Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, ident:J
    :try_start_0
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager;

    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/deviceencryption/DeviceEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v0, dem:Landroid/deviceencryption/DeviceEncryptionManager;
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInternalStorageEncryption : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    move v5, v7

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .restart local v0       #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "MiscPolicy"

    const-string v5, "Failed requesting data encryption"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setMicrophoneState(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_HW_CONTROL"

    const-string v6, "Misc Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "microphone_enabled"

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMicrophone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setWiFi(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_WIFI"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_enabled"

    if-eqz p1, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWiFi : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .local v4, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #wm:Landroid/net/wifi/WifiManager;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
