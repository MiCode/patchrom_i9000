.class public Landroid/divxdrm/mobile/DrmDivxBestRight;
.super Ljava/lang/Object;
.source "DrmDivxBestRight.java"


# instance fields
.field private Composite:Z

.field private HDMI:Z

.field private curCount:J

.field private drmMode:I

.field private orgCount:J

.field private rightStatus:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComposite()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->Composite:Z

    return v0
.end method

.method public getCurCount()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->curCount:J

    return-wide v0
.end method

.method public getDivxDrmVersion()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->version:I

    return v0
.end method

.method public getDrmMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->drmMode:I

    return v0
.end method

.method public getHDMI()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->HDMI:Z

    return v0
.end method

.method public getOrgCount()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->orgCount:J

    return-wide v0
.end method

.method public getRightStatus()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->rightStatus:I

    return v0
.end method
