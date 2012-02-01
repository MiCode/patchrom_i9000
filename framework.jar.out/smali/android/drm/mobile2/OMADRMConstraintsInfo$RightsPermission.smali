.class public Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;
.super Ljava/lang/Object;
.source "OMADRMConstraintsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/mobile2/OMADRMConstraintsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RightsPermission"
.end annotation


# instance fields
.field public curAccumulated:I

.field public curConstraints:I

.field public curCount:I

.field public curDRM2TimedCount:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

.field public curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public orgAccumulated:I

.field public orgConstraints:I

.field public orgCount:I

.field public orgDRM2TimedCount:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

.field public orgEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public orgIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public orgStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

.field public status:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->type:I

    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->status:I

    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->orgAccumulated:I

    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curAccumulated:I

    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->orgCount:I

    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curCount:I

    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->orgConstraints:I

    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curConstraints:I

    iput-object v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->orgStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    iput-object v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->orgEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    iput-object v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->orgIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    iput-object v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curStartTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    iput-object v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curEndTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    iput-object v1, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curIntervalTime:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRMTime;

    new-instance v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->orgDRM2TimedCount:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

    new-instance v0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$RightsPermission;->curDRM2TimedCount:Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;

    return-void
.end method
