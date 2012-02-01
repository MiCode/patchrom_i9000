.class public Landroid/drm/mobile2/DrmBestRights;
.super Ljava/lang/Object;
.source "DrmBestRights.java"


# instance fields
.field public bIsDomainRO:Z

.field public curAccumulated:I

.field public curConstraints:I

.field public curCount:I

.field public curDRM2TimedCount:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

.field public curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public domainIdGeneration:I

.field public domainIdName:Ljava/lang/String;

.field public orgAccumulated:I

.field public orgConstraints:I

.field public orgCount:I

.field public orgDRM2TimedCount:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

.field public orgEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public orgIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public orgStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public permissionStatus:I

.field public permissionType:I

.field public riId:Ljava/lang/String;

.field public rightStatus:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/drm/mobile2/DrmBestRights;->version:I

    iput v1, p0, Landroid/drm/mobile2/DrmBestRights;->rightStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/drm/mobile2/DrmBestRights;->bIsDomainRO:Z

    iput-object v2, p0, Landroid/drm/mobile2/DrmBestRights;->riId:Ljava/lang/String;

    iput-object v2, p0, Landroid/drm/mobile2/DrmBestRights;->domainIdName:Ljava/lang/String;

    iput v1, p0, Landroid/drm/mobile2/DrmBestRights;->domainIdGeneration:I

    iput v1, p0, Landroid/drm/mobile2/DrmBestRights;->permissionType:I

    iput v1, p0, Landroid/drm/mobile2/DrmBestRights;->permissionStatus:I

    iput v1, p0, Landroid/drm/mobile2/DrmBestRights;->curConstraints:I

    new-instance v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile2/DrmBestRights;->curDRM2TimedCount:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

    iput v1, p0, Landroid/drm/mobile2/DrmBestRights;->curAccumulated:I

    iput v1, p0, Landroid/drm/mobile2/DrmBestRights;->curCount:I

    iput-object v2, p0, Landroid/drm/mobile2/DrmBestRights;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    iput-object v2, p0, Landroid/drm/mobile2/DrmBestRights;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    iput-object v2, p0, Landroid/drm/mobile2/DrmBestRights;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    iput v1, p0, Landroid/drm/mobile2/DrmBestRights;->orgConstraints:I

    new-instance v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile2/DrmBestRights;->orgDRM2TimedCount:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

    iput v1, p0, Landroid/drm/mobile2/DrmBestRights;->orgAccumulated:I

    iput v1, p0, Landroid/drm/mobile2/DrmBestRights;->orgCount:I

    iput-object v2, p0, Landroid/drm/mobile2/DrmBestRights;->orgIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    iput-object v2, p0, Landroid/drm/mobile2/DrmBestRights;->orgStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    iput-object v2, p0, Landroid/drm/mobile2/DrmBestRights;->orgEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    return-void
.end method
