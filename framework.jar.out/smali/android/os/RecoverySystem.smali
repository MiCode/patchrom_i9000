.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field private static COMMAND_FILE:Ljava/io/File; = null

.field public static final DATAPRIVATE_PARTITION:I = 0x4

.field public static final DATA_PARTITION:I = 0x2

.field public static final DBDATA_PARTITION:I = 0x1

.field public static final DECRYPT:I = 0x1

.field private static final DEFAULT_KEYSTORE:Ljava/io/File; = null

.field public static final ENCRYPT:I = 0x0

.field private static LAST_LOG_FILENAME:Ljava/lang/String; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static LOG_FILE_MAX_LENGTH:I = 0x0

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field public static final SDCARD_PARTITION:I = 0x8

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const-string v0, "last_log"

    sput-object v0, Landroid/os/RecoverySystem;->LAST_LOG_FILENAME:Ljava/lang/String;

    const/high16 v0, 0x1

    sput v0, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private RecoverySystem()V
    .locals 0

    .prologue
    return-void
.end method

.method private static bootCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    sget-object v2, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    sget-object v2, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v2, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/FileWriter;

    sget-object v2, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .local v0, command:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reboot failed (no permissions?)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1           #pm:Landroid/os/PowerManager;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v2
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 6
    .parameter "keystore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    if-nez p0, :cond_0

    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    :cond_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .local v4, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .local v0, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #cf:Ljava/security/cert/CertificateFactory;
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    throw v5

    .restart local v0       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v1       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    return-object v3
.end method

.method public static handleAftermath()Ljava/lang/String;
    .locals 9

    .prologue
    const-string v8, "RecoverySystem"

    const/4 v3, 0x0

    .local v3, log:Ljava/lang/String;
    :try_start_0
    sget-object v5, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    sget v6, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    neg-int v6, v6

    const-string v7, "...\n"

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :goto_0
    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .local v4, names:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-object v5, v4, v2

    sget-object v6, Landroid/os/RecoverySystem;->LAST_LOG_FILENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v4           #names:[Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "RecoverySystem"

    const-string v5, "No recovery log file"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/io/IOException;
    const-string v5, "RecoverySystem"

    const-string v5, "Error reading recovery log"

    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v4       #names:[Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v6, v4, v2

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v5, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1           #f:Ljava/io/File;
    :cond_2
    return-object v3
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .parameter "context"
    .parameter "packageFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .local v1, filename:Ljava/lang/String;
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--update_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, arg:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static rebootEncryptPartition(Landroid/content/Context;II)V
    .locals 6
    .parameter "context"
    .parameter "type"
    .parameter "partition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "RecoverySystem"

    const-string v0, "--crypt_device\n"

    .local v0, cmd:Ljava/lang/String;
    if-nez p1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":dbdata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":dataprivate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v3, "ro.wtldatapassword"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, s_option:Ljava/lang/String;
    const-string v3, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s_option "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "RecoverySystem"

    const-string v3, "s_option >> NormalReboot"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, pm:Landroid/os/PowerManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .end local v1           #pm:Landroid/os/PowerManager;
    :goto_1
    return-void

    .end local v2           #s_option:Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .restart local v2       #s_option:Ljava/lang/String;
    :cond_5
    const-string v3, "RecoverySystem"

    const-string v3, "s_option >> bootCommand"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static rebootToggleEFS(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "efsEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "--set_encrypted_filesystem=on"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "--set_encrypted_filesystem=off"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v10, "true"

    const-string v9, "RecoverySystem"

    new-instance v8, Landroid/os/ConditionVariable;

    invoke-direct {v8}, Landroid/os/ConditionVariable;-><init>()V

    .local v8, condition:Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.permission.MASTER_CLEAR"

    new-instance v3, Landroid/os/RecoverySystem$1;

    invoke-direct {v3, v8}, Landroid/os/RecoverySystem$1;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v8}, Landroid/os/ConditionVariable;->block()V

    const-string v0, "RecoverySystem"

    const-string v0, "DEVENC:check point RecoverySystem"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    const-string v0, "securewipedata"

    invoke-static {v0}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecoverySystem"

    const-string v0, "DEVENC:Request to --wipe_crypt"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "--wipe_crypt"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v4}, Landroid/deviceencryption/DeviceEncryptionManager;->saveLockPassword(Ljava/lang/String;)Z

    const-string v0, "RecoverySystem"

    const-string v0, "DEVENC:Request to --wipe_data"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "--wipe_data"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 23
    .parameter "packageFile"
    .parameter "listener"
    .parameter "deviceCertsZipFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v7

    .local v7, fileLen:J
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v12, raf:Ljava/io/RandomAccessFile;
    const/4 v9, 0x0

    .local v9, lastPercent:I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, lastPublishTime:J
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_0
    const-wide/16 v4, 0x6

    sub-long v4, v7, v4

    invoke-virtual {v12, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 p0, 0x6

    move/from16 v0, p0

    new-array v0, v0, [B

    move-object/from16 p0, v0

    .local p0, footer:[B
    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x3

    aget-byte v4, p0, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    :cond_1
    new-instance p0, Ljava/security/SignatureException;

    .end local p0           #footer:[B
    const-string p1, "no signature in file (no footer)"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10           #lastPublishTime:J
    .end local p2
    :catchall_0
    move-exception p0

    move-object/from16 p1, p0

    move/from16 p0, v9

    .end local v7           #fileLen:J
    .end local v9           #lastPercent:I
    .local p0, lastPercent:I
    :goto_0
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    throw p1

    .restart local v7       #fileLen:J
    .restart local v9       #lastPercent:I
    .restart local v10       #lastPublishTime:J
    .local p0, footer:[B
    .restart local p1
    .restart local p2
    :cond_2
    const/4 v4, 0x4

    :try_start_1
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v4

    .local v5, commentSize:I
    const/4 v4, 0x0

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v6, 0x1

    aget-byte p0, p0, v6

    .end local p0           #footer:[B
    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move/from16 p0, v0

    shl-int/lit8 p0, p0, 0x8

    or-int v6, v4, p0

    .local v6, signatureStart:I
    const-string p0, "RecoverySystem"

    const-string v4, "comment size %d; signature start %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, v5, 0x16

    move/from16 v0, p0

    new-array v0, v0, [B

    move-object v4, v0

    .local v4, eocd:[B
    add-int/lit8 p0, v5, 0x16

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v13, v0

    sub-long v13, v7, v13

    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v12, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/16 p0, 0x0

    aget-byte p0, v4, p0

    const/16 v13, 0x50

    move/from16 v0, p0

    move v1, v13

    if-ne v0, v1, :cond_3

    const/16 p0, 0x1

    aget-byte p0, v4, p0

    const/16 v13, 0x4b

    move/from16 v0, p0

    move v1, v13

    if-ne v0, v1, :cond_3

    const/16 p0, 0x2

    aget-byte p0, v4, p0

    const/4 v13, 0x5

    move/from16 v0, p0

    move v1, v13

    if-ne v0, v1, :cond_3

    const/16 p0, 0x3

    aget-byte p0, v4, p0

    const/4 v13, 0x6

    move/from16 v0, p0

    move v1, v13

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "no signature in file (bad footer)"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p1
    :cond_4
    const/16 p0, 0x4

    .local p0, i:I
    :goto_1
    array-length v13, v4

    const/4 v14, 0x3

    sub-int/2addr v13, v14

    move/from16 v0, p0

    move v1, v13

    if-ge v0, v1, :cond_6

    aget-byte v13, v4, p0

    const/16 v14, 0x50

    if-ne v13, v14, :cond_5

    add-int/lit8 v13, p0, 0x1

    aget-byte v13, v4, v13

    const/16 v14, 0x4b

    if-ne v13, v14, :cond_5

    add-int/lit8 v13, p0, 0x2

    aget-byte v13, v4, v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_5

    add-int/lit8 v13, p0, 0x3

    aget-byte v13, v4, v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_5

    new-instance p0, Ljava/security/SignatureException;

    .end local p0           #i:I
    const-string p1, "EOCD marker found after start of EOCD"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0       #i:I
    .restart local p1
    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    new-instance p0, Lorg/apache/harmony/security/asn1/BerInputStream;

    .end local p0           #i:I
    new-instance v13, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v14, v5, 0x16

    sub-int/2addr v14, v6

    invoke-direct {v13, v4, v14, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .local p0, bis:Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v4, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .end local v4           #eocd:[B
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #bis:Lorg/apache/harmony/security/asn1/BerInputStream;
    check-cast p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .local p0, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v13

    .local v13, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v13, :cond_7

    new-instance p0, Ljava/io/IOException;

    .end local p0           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    const-string p1, "signedData is null"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local p1
    :cond_7
    invoke-virtual {v13}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object p0

    .local p0, encCerts:Ljava/util/Collection;
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance p0, Ljava/io/IOException;

    .end local p0           #encCerts:Ljava/util/Collection;
    const-string p1, "encCerts is empty"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0       #encCerts:Ljava/util/Collection;
    .restart local p1
    :cond_8
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, it:Ljava/util/Iterator;
    const/16 p0, 0x0

    .local p0, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    .end local p0           #cert:Ljava/security/cert/X509Certificate;
    if-eqz p0, :cond_a

    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/Certificate;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    .local v4, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v13}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object p0

    .local p0, sigInfos:Ljava/util/List;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    .end local v6           #it:Ljava/util/Iterator;
    if-nez v6, :cond_b

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .local v14, sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    if-nez p2, :cond_c

    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .end local p0           #sigInfos:Ljava/util/List;
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object p0

    .local p0, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .local v6, signatureKey:Ljava/security/PublicKey;
    const/4 v13, 0x0

    .local v13, verified:Z
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .end local p0           #trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    .local p2, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    .local p0, c:Ljava/security/cert/Certificate;
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    .end local p0           #c:Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x1

    .end local v13           #verified:Z
    .local p0, verified:Z
    :goto_3
    if-nez p0, :cond_d

    new-instance p0, Ljava/security/SignatureException;

    .end local p0           #verified:Z
    const-string p1, "signature doesn\'t match any trusted key"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .end local v4           #cert:Ljava/security/cert/X509Certificate;
    .end local v14           #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .local v6, it:Ljava/util/Iterator;
    .local v13, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local p1
    .local p2, deviceCertsZipFile:Ljava/io/File;
    :cond_a
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "signature contains no certificates"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .end local v6           #it:Ljava/util/Iterator;
    .restart local v4       #cert:Ljava/security/cert/X509Certificate;
    .local p0, sigInfos:Ljava/util/List;
    .restart local p1
    :cond_b
    new-instance p0, Ljava/io/IOException;

    .end local p0           #sigInfos:Ljava/util/List;
    const-string p1, "no signer infos!"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v14       #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local p0       #sigInfos:Ljava/util/List;
    .restart local p1
    :cond_c
    move-object/from16 p0, p2

    goto :goto_2

    .end local v13           #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    .local v6, signatureKey:Ljava/security/PublicKey;
    .local p0, verified:Z
    .local p2, i$:Ljava/util/Iterator;
    :cond_d
    invoke-virtual {v14}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getdigestAlgorithm()Ljava/lang/String;

    move-result-object p2

    .local p2, da:Ljava/lang/String;
    invoke-virtual {v14}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v6

    .local v6, dea:Ljava/lang/String;
    const/16 p0, 0x0

    .local p0, alg:Ljava/lang/String;
    if-eqz p2, :cond_e

    if-nez v6, :cond_10

    :cond_e
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p0

    .end local p2           #da:Ljava/lang/String;
    :goto_4
    invoke-static/range {p0 .. p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v13

    .local v13, sig:Ljava/security/Signature;
    invoke-virtual {v13, v4}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    int-to-long v4, v5

    sub-long v4, v7, v4

    const-wide/16 v6, 0x2

    sub-long v15, v4, v6

    .local v15, toRead:J
    const-wide/16 v4, 0x0

    .end local v5           #commentSize:I
    .local v4, soFar:J
    const-wide/16 v6, 0x0

    invoke-virtual {v12, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .end local v6           #dea:Ljava/lang/String;
    const/16 p0, 0x1000

    move/from16 v0, p0

    new-array v0, v0, [B

    move-object/from16 p0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local p0, buffer:[B
    const/16 p2, 0x0

    .local p2, interrupted:Z
    move-wide/from16 v21, v4

    .end local v4           #soFar:J
    .local v21, soFar:J
    move-wide v5, v10

    .end local v10           #lastPublishTime:J
    .local v5, lastPublishTime:J
    move v4, v9

    .end local v9           #lastPercent:I
    .local v4, lastPercent:I
    move-wide/from16 v8, v21

    .end local v7           #fileLen:J
    .end local v21           #soFar:J
    .local v8, soFar:J
    :goto_5
    cmp-long v7, v8, v15

    if-gez v7, :cond_16

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p2

    if-eqz p2, :cond_11

    move/from16 p0, p2

    .end local p2           #interrupted:Z
    .local p0, interrupted:Z
    :goto_6
    if-eqz p1, :cond_f

    const/16 p2, 0x64

    invoke-interface/range {p1 .. p2}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_f
    if-eqz p0, :cond_14

    new-instance p0, Ljava/security/SignatureException;

    .end local p0           #interrupted:Z
    const-string p1, "verification was interrupted"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v8           #soFar:J
    :catchall_1
    move-exception p0

    move-object/from16 p1, p0

    move/from16 p0, v4

    .end local v4           #lastPercent:I
    .local p0, lastPercent:I
    goto/16 :goto_0

    .end local v13           #sig:Ljava/security/Signature;
    .end local v15           #toRead:J
    .local v4, cert:Ljava/security/cert/X509Certificate;
    .local v5, commentSize:I
    .restart local v6       #dea:Ljava/lang/String;
    .restart local v7       #fileLen:J
    .restart local v9       #lastPercent:I
    .restart local v10       #lastPublishTime:J
    .local p0, alg:Ljava/lang/String;
    .restart local p1
    .local p2, da:Ljava/lang/String;
    :cond_10
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #alg:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "with"

    .end local p2           #da:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p0

    .restart local p0       #alg:Ljava/lang/String;
    goto :goto_4

    .end local v6           #dea:Ljava/lang/String;
    .end local v7           #fileLen:J
    .end local v9           #lastPercent:I
    .end local v10           #lastPublishTime:J
    .local v4, lastPercent:I
    .local v5, lastPublishTime:J
    .restart local v8       #soFar:J
    .restart local v13       #sig:Ljava/security/Signature;
    .restart local v15       #toRead:J
    .local p0, buffer:[B
    .local p2, interrupted:Z
    :cond_11
    :try_start_4
    move-object/from16 v0, p0

    array-length v0, v0

    move v7, v0

    .local v7, size:I
    int-to-long v10, v7

    add-long/2addr v10, v8

    cmp-long v10, v10, v15

    if-lez v10, :cond_12

    sub-long v10, v15, v8

    long-to-int v7, v10

    :cond_12
    const/4 v10, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v10

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    .local v7, read:I
    const/4 v10, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move v2, v10

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    int-to-long v10, v7

    add-long/2addr v10, v8

    .end local v8           #soFar:J
    .local v10, soFar:J
    if-eqz p1, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .local v7, now:J
    const-wide/16 v17, 0x64

    mul-long v17, v17, v10

    div-long v17, v17, v15

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v9, v0

    .local v9, p:I
    if-le v9, v4, :cond_13

    sub-long v17, v7, v5

    const-wide/16 v19, 0x1f4

    cmp-long v17, v17, v19

    if-lez v17, :cond_13

    move v4, v9

    move-wide v5, v7

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .end local v7           #now:J
    .end local v9           #p:I
    :cond_13
    move-wide v8, v10

    .end local v10           #soFar:J
    .restart local v8       #soFar:J
    goto/16 :goto_5

    .end local p2           #interrupted:Z
    .local p0, interrupted:Z
    :cond_14
    invoke-virtual {v14}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object p0

    .end local p0           #interrupted:Z
    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-nez p0, :cond_15

    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "signature digest verification failed"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local p1
    :cond_15
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .local p0, buffer:[B
    .restart local p2       #interrupted:Z
    :cond_16
    move/from16 p0, p2

    .end local p2           #interrupted:Z
    .local p0, interrupted:Z
    goto/16 :goto_6

    .end local v8           #soFar:J
    .end local v15           #toRead:J
    .end local p0           #interrupted:Z
    .local v4, cert:Ljava/security/cert/X509Certificate;
    .local v5, commentSize:I
    .local v6, signatureKey:Ljava/security/PublicKey;
    .local v7, fileLen:J
    .local v9, lastPercent:I
    .local v10, lastPublishTime:J
    .local v13, verified:Z
    .local p2, i$:Ljava/util/Iterator;
    :cond_17
    move/from16 p0, v13

    .end local v13           #verified:Z
    .local p0, verified:Z
    goto/16 :goto_3
.end method
