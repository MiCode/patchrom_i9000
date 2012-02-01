.class public Landroid/drm/mobile2/Drm2Options;
.super Ljava/lang/Object;
.source "Drm2Options.java"


# instance fields
.field public bBluetooth:Z

.field public bCopy:Z

.field public bMove:Z

.field public bMusic:Z

.field public bPreview:Z

.field public bPrint:Z

.field public bRingtone:Z

.field public bSendAs:Z

.field public bSendContentURL:Z

.field public bVideo:Z

.field public bVideotone:Z

.field public bWallpaper:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bMusic:Z

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bVideo:Z

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bVideotone:Z

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bCopy:Z

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bMove:Z

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bWallpaper:Z

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bSendContentURL:Z

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bBluetooth:Z

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bPrint:Z

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bPreview:Z

    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z

    return-void
.end method
