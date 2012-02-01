.class public Landroid/drm/mobile2/OMADRMManager;
.super Ljava/lang/Object;
.source "OMADRMManager.java"

# interfaces
.implements Landroid/drm/mobile2/DRMConstants;
.implements Landroid/drm/mobile2/DRMROAPConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile2/OMADRMManager$OnErrorListener;,
        Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;,
        Landroid/drm/mobile2/OMADRMManager$OnRoapListener;
    }
.end annotation


# static fields
.field private static OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private TAG:Ljava/lang/String;

.field mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

.field mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

.field mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

.field private rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

.field private roapManager:Landroid/drm/mobile2/DrmRoapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    const-string v0, "SISODRM"

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/drm/mobile2/DrmRoapManager;

    invoke-direct {v0, p0}, Landroid/drm/mobile2/DrmRoapManager;-><init>(Landroid/drm/mobile2/OMADRMManager;)V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    new-instance v0, Landroid/drm/mobile2/Drm2RightsManager;

    invoke-direct {v0, p0}, Landroid/drm/mobile2/Drm2RightsManager;-><init>(Landroid/drm/mobile2/OMADRMManager;)V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    return-void
.end method

.method private checkDRMAccessPerissions()V
    .locals 4

    .prologue
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_DRM"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing OMADRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/drm/mobile2/OMADRMManager;
    .locals 1

    .prologue
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/drm/mobile2/OMADRMManager;

    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMManager;-><init>()V

    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    :cond_0
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    return-object v0
.end method

.method private launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "rightsURI"

    .prologue
    if-eqz p1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "This is NOT proper URL to get rights , so Browser can not be launched."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resolveDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mimetype"

    .prologue
    const-string v0, "video/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "audio/unsupported"

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public GetPermissionType(Ljava/lang/String;)I
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .local v1, status:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetPermissionTypeFromDrmFile(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "rights manager is NUll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public IsDrmFileByExt(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, status:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public acquireLicense(Landroid/content/Context;Ljava/lang/String;Landroid/drm/mobile2/DCFHeaderInfo;)Z
    .locals 11
    .parameter "context"
    .parameter "filePath"
    .parameter "dcfHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .local v3, result:Z
    const/4 v4, 0x0

    .local v4, rightsURI:Ljava/lang/String;
    const/4 v5, -0x1

    .local v5, roamingDownload:I
    const/4 v2, 0x0

    .local v2, isRoaming:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "roaming_download"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Roaming behavior: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-ne v5, v10, :cond_0

    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    const/16 v7, 0xd

    invoke-interface {v6, v7}, Landroid/drm/mobile2/OMADRMManager$OnErrorListener;->onError(I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "ROAMING DOWNLOAD Settings not found"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".DCF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_2
    move-object v1, p3

    .local v1, headerInfo:Landroid/drm/mobile2/DCFHeaderInfo;
    if-eqz v1, :cond_c

    iget-object v4, v1, Landroid/drm/mobile2/DCFHeaderInfo;->rightsIssuerURL:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    if-ne v6, v9, :cond_5

    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v3, 0x0

    :cond_3
    :goto_1
    move v6, v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    iget v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    if-ne v6, v10, :cond_9

    iget-boolean v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->hasSilentHeader:Z

    if-eqz v6, :cond_7

    if-eqz v2, :cond_6

    if-eqz v2, :cond_7

    if-eq v5, v9, :cond_7

    :cond_6
    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v6, p2}, Landroid/drm/mobile2/DrmRoapManager;->Drm2GoSilentURL(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v3, 0x0

    goto :goto_1

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    :cond_b
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "RIGHTS URI is not Found"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "DCF File Header Information Can not be Retrieved"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v1           #headerInfo:Landroid/drm/mobile2/DCFHeaderInfo;
    :cond_d
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "Invalid File Path"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public addDrmFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->addDrmFile(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : addDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public audoDownloadLicense(Z)Z
    .locals 1
    .parameter "autoDownlaod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public canSetAsRingTone(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .local v1, options:Landroid/drm/mobile2/Drm2Options;
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1}, Landroid/drm/mobile2/Drm2RightsManager;->canSetAsRingTone(Ljava/lang/String;)Z

    move-result v2

    :cond_0
    return v2

    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not present "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public cancelRoapProcess()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/DrmRoapManager;->cancelRoapProcess()Z

    move-result v0

    .local v0, status:Z
    return v0
.end method

.method public clearDrmLicenses()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2ClearAllRights()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public clearMMCFilesDRMEntry()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2ClearMMCContentRegistry()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public closeDrmFile(J)Z
    .locals 3
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->closeDrmFile(J)Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : closeDrmFile : in : handle : NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "filehandle is NULL"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public consumeDrmRights(Ljava/lang/String;I)I
    .locals 4
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .local v1, result:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->consumeDrmRights(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : consumeDrmRights : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : convertDM2DCF : in : file :NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deleteDrmFile(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "filePath"
    .parameter "removeRights"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->deleteDrmFile(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : deleteDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmCopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "srcFilePath"
    .parameter "destFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drmCopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public drmMoveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "srcFilePath"
    .parameter "destFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drmMoveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public getBestRights(Ljava/lang/String;I)Landroid/drm/mobile2/DrmBestRights;
    .locals 6
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .local v1, isFileExists:Z
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    new-instance v0, Landroid/drm/mobile2/DrmBestRights;

    .end local v0           #drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    invoke-direct {v0}, Landroid/drm/mobile2/DrmBestRights;-><init>()V

    .restart local v0       #drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, v0, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetBestMergedRO(Ljava/lang/String;Landroid/drm/mobile2/DrmBestRights;I)Z

    move-result v2

    .local v2, result:Z
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .end local v2           #result:Z
    :cond_0
    return-object v0

    :cond_1
    new-instance v3, Landroid/drm/mobile2/OMADRMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is not present :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;
    .locals 5
    .parameter "dcfFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, dcfHeader:Landroid/drm/mobile2/DCFHeaderInfo;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .local v1, isFileExists:Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/DrmRoapManager;->getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDRMRingToneAlarmInfo(Landroid/content/Context;)I
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, result:I
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRTAlarmInfo(Landroid/content/Context;)I

    move-result v0

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getDecryptedContent(Ljava/lang/String;I)[B
    .locals 3
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, result:[B
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getDrmFileInfo(Ljava/lang/String;)[I
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .local v1, isFileExists:Z
    const/4 v2, 0x2

    new-array v0, v2, [I

    .local v0, drmInfo:[I
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, v0}, Landroid/drm/mobile2/Drm2RightsManager;->getDrmFileInfo(Ljava/lang/String;[I)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, filePath:Ljava/lang/String;
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2GetAllFilePathByCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetaData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, metaData:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->getMetaData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, mimetype:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/drm/mobile2/OMADRMManager;->resolveDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getOptionMenu(Ljava/lang/String;I)Landroid/drm/mobile2/Drm2Options;
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, status:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .local v1, options:Landroid/drm/mobile2/Drm2Options;
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    new-instance v1, Landroid/drm/mobile2/Drm2Options;

    .end local v1           #options:Landroid/drm/mobile2/Drm2Options;
    invoke-direct {v1}, Landroid/drm/mobile2/Drm2Options;-><init>()V

    .restart local v1       #options:Landroid/drm/mobile2/Drm2Options;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, v1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetOptionMenu(Ljava/lang/String;Landroid/drm/mobile2/Drm2Options;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v4, "OMADRMManager :getOptionMenu  : success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "File is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getRightsIssuer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, rightsURI:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRightsIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    new-instance v2, Landroid/drm/mobile2/OMADRMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not Present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasValidRights(Ljava/lang/String;I)I
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .local v1, status:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2HasValidRight(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "rights manager is NUll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initOmaDrm(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v0}, Landroid/drm/mobile2/DrmRoapManager;->native_drm_init()Z

    return-void
.end method

.method public installDrmRights([B)Ljava/lang/String;
    .locals 2
    .parameter "rightData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->installDrmRights([B)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isConvertedFL(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2IsConvertedFL(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    new-instance v2, Landroid/drm/mobile2/OMADRMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openDrmFile(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "filePath"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, -0x1

    .local v1, result:J
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->openDrmFile(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    :cond_0
    return-wide v1

    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "file is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processRoap(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7
    .parameter "roapTrigger"
    .parameter "fileName"
    .parameter "fileSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .local v6, roapResult:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/drm/mobile2/DrmRoapManager;->processRoap(Ljava/lang/String;ILjava/lang/String;J)Z

    move-result v6

    :cond_0
    return v6
.end method

.method public processRoap([B)Z
    .locals 3
    .parameter "roapPdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, roapResult:Z
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    array-length v2, p1

    invoke-virtual {v1, p1, v2}, Landroid/drm/mobile2/DrmRoapManager;->processRoap([BI)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public queryRights(Ljava/lang/String;)Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .local v1, isFileExists:Z
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v3, :cond_0

    new-instance v0, Landroid/drm/mobile2/OMADRMConstraintsInfo;

    .end local v0           #drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMConstraintsInfo;-><init>()V

    .restart local v0       #drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v3, p1, v0}, Landroid/drm/mobile2/DrmRoapManager;->queryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z

    move-result v2

    .local v2, result:Z
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .end local v2           #result:Z
    :cond_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is not present :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readDrmFile(J[BJ)J
    .locals 8
    .parameter "fh"
    .parameter "buffer"
    .parameter "buflen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .local v6, result:J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/drm/mobile2/Drm2RightsManager;->readDrmFile(J[BJ)J

    move-result-wide v6

    :cond_0
    return-wide v6

    :cond_1
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : openDrmFile : in : file : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "file handle is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->removeFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public seekDrmFile(JJJ)Z
    .locals 8
    .parameter "fh"
    .parameter "position"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .local v7, result:Z
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/drm/mobile2/Drm2RightsManager;->seekDrmFile(JJJ)Z

    move-result v7

    :cond_0
    return v7

    :cond_1
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : seekDrmFile : in : file : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "file handle is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->setFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setOnDownloadListener(Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/drm/mobile2/OMADRMManager$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    return-void
.end method

.method public setOnRoapListener(Landroid/drm/mobile2/OMADRMManager$OnRoapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    return-void
.end method

.method public setSecureClock(IIIIII)Z
    .locals 8
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .local v7, result:Z
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/drm/mobile2/Drm2RightsManager;->setSecureClock(IIIIII)Z

    move-result v7

    :cond_0
    return v7
.end method

.method public setTransferTracking(Z)Z
    .locals 2
    .parameter "trackingOn"

    .prologue
    const/4 v0, 0x0

    .local v0, settrackRet:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->setTransferTracking(Z)Z

    move-result v0

    return v0
.end method

.method public submitUserConsent(JZZ)V
    .locals 1
    .parameter "userConsentObject"
    .parameter "bcontinue"
    .parameter "bAddToTrustedWhiteList"

    .prologue
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/drm/mobile2/DrmRoapManager;->SubmitUserConsent(JZZ)V

    :cond_0
    return-void
.end method

.method public tellDrmFile(J)J
    .locals 4
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->tellDrmFile(J)J

    move-result-wide v0

    :cond_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : tellDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file handle is null"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateDRMRingToneAlarmInfo(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "AlarmID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, result:I
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->updateRTAlarm(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public updateMeteringStatus(Z)Z
    .locals 1
    .parameter "meteringStatus"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public updateSecureClock(JJ)Z
    .locals 2
    .parameter "beforeTime"
    .parameter "afterTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/drm/mobile2/Drm2RightsManager;->drm2UpdateSecureClock(JJ)Z

    move-result v0

    :cond_0
    return v0
.end method
