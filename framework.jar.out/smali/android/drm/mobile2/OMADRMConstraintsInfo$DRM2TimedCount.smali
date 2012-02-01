.class public Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;
.super Ljava/lang/Object;
.source "OMADRMConstraintsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/mobile2/OMADRMConstraintsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DRM2TimedCount"
.end annotation


# instance fields
.field public count:I

.field public time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;->time:I

    iput v0, p0, Landroid/drm/mobile2/OMADRMConstraintsInfo$DRM2TimedCount;->count:I

    return-void
.end method
