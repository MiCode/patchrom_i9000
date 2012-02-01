.class public Landroid/divxdrm/mobile/DivxDrmManager;
.super Ljava/lang/Object;
.source "DivxDrmManager.java"

# interfaces
.implements Landroid/divxdrm/mobile/DivxDrmConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;
    }
.end annotation


# static fields
.field private static DivxDrmManager:Landroid/divxdrm/mobile/DivxDrmManager; = null

.field private static final TAG:Ljava/lang/String; = "DivxDRM"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    sput-object v1, Landroid/divxdrm/mobile/DivxDrmManager;->DivxDrmManager:Landroid/divxdrm/mobile/DivxDrmManager;

    :try_start_0
    const-string v1, "divx_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, exc:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DivxDRM"

    const-string v2, "loading divx_jni failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkForDeRegAvailability()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, deReg:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/divxdrm/mobile/DivxDrmManager;->getDeRegCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private checkForFileorDirectoryExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/divxdrm/mobile/DivxDrmManager;
    .locals 1

    .prologue
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager;->DivxDrmManager:Landroid/divxdrm/mobile/DivxDrmManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/divxdrm/mobile/DivxDrmManager;

    invoke-direct {v0}, Landroid/divxdrm/mobile/DivxDrmManager;-><init>()V

    sput-object v0, Landroid/divxdrm/mobile/DivxDrmManager;->DivxDrmManager:Landroid/divxdrm/mobile/DivxDrmManager;

    :cond_0
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager;->DivxDrmManager:Landroid/divxdrm/mobile/DivxDrmManager;

    return-object v0
.end method

.method private native getTvout(Ljava/lang/String;)Z
.end method

.method private isRegisteredDevice()Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .local v0, res:I
    :try_start_0
    invoke-virtual {p0}, Landroid/divxdrm/mobile/DivxDrmManager;->getActivationStatus()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/divxdrm/mobile/DivxDrmManager;->mapIntToRegState(I)Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private mapIntToRegState(I)Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;
    .locals 1
    .parameter "iErrCode"

    .prologue
    if-nez p1, :cond_0

    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->NOT_AUTHORIZED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->NOT_REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->DRM_RENTAL_EXPIRED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->DRM_NEVER_REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    goto :goto_0
.end method

.method private native ngetBestRight(Ljava/lang/String;I)Landroid/divxdrm/mobile/DrmDivxBestRight;
.end method

.method private native ngetDivXInfo(Ljava/lang/String;)Landroid/divxdrm/mobile/DrmDivxRightsInfo;
.end method

.method private native ngetRemainingRightsForPopup(Ljava/lang/String;[I)Z
.end method

.method private native ngetRightStatus(Ljava/lang/String;I)I
.end method

.method private native nhasValidRight(Ljava/lang/String;I)Z
.end method

.method private native nisDivXFile(Ljava/lang/String;)Z
.end method


# virtual methods
.method public divxGetTvOut(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    const-string v2, "DivxDRM"

    const-string v2, "divxGetTvOut"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .local v1, result:Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->getTvout(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divxGetTvOut : result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : divxGetTvOut : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmDivXGetBestRight(Ljava/lang/String;I)Landroid/divxdrm/mobile/DrmDivxBestRight;
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .local v1, isFileExists:Z
    const/4 v0, 0x0

    .local v0, bestRight:Landroid/divxdrm/mobile/DrmDivxBestRight;
    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/divxdrm/mobile/DivxDrmManager;->ngetBestRight(Ljava/lang/String;I)Landroid/divxdrm/mobile/DrmDivxBestRight;

    move-result-object v0

    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DivxDrmManager : drmDivXGetBestRight : success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : drmDivXGetBestRight : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmDivXGetRemainingRightsForPopup(Ljava/lang/String;)[I
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "DivxDRM"

    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .local v1, isFileExists:Z
    const/4 v3, 0x2

    new-array v0, v3, [I

    .local v0, divxpopUpInfo:[I
    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Landroid/divxdrm/mobile/DivxDrmManager;->ngetRemainingRightsForPopup(Ljava/lang/String;[I)Z

    move-result v2

    .local v2, result:Z
    const-string v3, "DivxDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DivxDrmManager : drmDivXGetRemainingRightsForPopup : result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .end local v2           #result:Z
    :cond_0
    const-string v3, "DivxDRM"

    const-string v3, "DivxDrmManager : drmDivXGetRemainingRightsForPopup : in : file : NULL"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "file is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public drmDivXGetRightStatus(Ljava/lang/String;I)I
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    const/4 v1, -0x1

    .local v1, rightStatus:I
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/divxdrm/mobile/DivxDrmManager;->ngetRightStatus(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DivxDrmManager : drmDivXGetRightStatus : rightStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : drmDivXGetBestRight : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmDivXHasValidRight(Ljava/lang/String;I)Z
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .local v1, result:Z
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/divxdrm/mobile/DivxDrmManager;->nhasValidRight(Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DivxDrmManager : drmDivXHasValidRight : result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : drmDivXHasValidRight : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmGetDivXInfo(Ljava/lang/String;)Landroid/divxdrm/mobile/DrmDivxRightsInfo;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .local v1, rightInfo:Landroid/divxdrm/mobile/DrmDivxRightsInfo;
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->ngetDivXInfo(Ljava/lang/String;)Landroid/divxdrm/mobile/DrmDivxRightsInfo;

    move-result-object v1

    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DivxDrmManager : drmGetDivXInfo : success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : drmGetDivXInfo : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public native getActivationStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation
.end method

.method public native getDeRegCode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation
.end method

.method public getDivxState()Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/divxdrm/mobile/DivxDrmManager;->isRegisteredDevice()Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    move-result-object v0

    return-object v0
.end method

.method public native getRegCode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;
        }
    .end annotation
.end method

.method public isDivXFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/divxdrm/mobile/DivxDrmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DivxDRM"

    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .local v1, result:Z
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->nisDivXFile(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "DivxDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DivxDrmManager : isDivXFile : result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v2, "DivxDRM"

    const-string v2, "DivxDrmManager : drmDivXHasValidRight : in : file : NULL"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
