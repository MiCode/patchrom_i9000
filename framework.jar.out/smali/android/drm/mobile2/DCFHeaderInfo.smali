.class public Landroid/drm/mobile2/DCFHeaderInfo;
.super Ljava/lang/Object;
.source "DCFHeaderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;,
        Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionOne;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field public contentID:Ljava/lang/String;

.field public contentLength:I

.field public contentLocationHeaderName:Ljava/lang/String;

.field public contentLocationHeaderValue:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public contentURLHeaderName:Ljava/lang/String;

.field public contentURLHeaderValue:Ljava/lang/String;

.field public customHeaderName:Ljava/lang/String;

.field public customHeaderValue:Ljava/lang/String;

.field public drmVersion:I

.field public encMethod:I

.field public hasContentLocationHeader:Z

.field public hasContentURLHeader:Z

.field public hasCustomHeader:Z

.field public hasPreviewHeader:Z

.field public hasSilentHeader:Z

.field public hasVersionIDHeader:Z

.field public paddingScheme:I

.field public plainTextLength:I

.field public previewHeaderName:Ljava/lang/String;

.field public previewHeaderValue:Ljava/lang/String;

.field public previewPriority:I

.field public rightsIssuerURL:Ljava/lang/String;

.field public silentHeaderName:Ljava/lang/String;

.field public silentHeaderValue:Ljava/lang/String;

.field public userDataAuthor:Ljava/lang/String;

.field public userDataCopyRight:Ljava/lang/String;

.field public userDataDescription:Ljava/lang/String;

.field public userDataIconURI:Ljava/lang/String;

.field public userDataInfoURL:Ljava/lang/String;

.field public userDataTitle:Ljava/lang/String;

.field public versionIDHeaderName:Ljava/lang/String;

.field public versionIDHeaderValue:Ljava/lang/String;

.field public versionOne:Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionOne;

.field public versionTwo:Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SISODRM"

    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo;->TAG:Ljava/lang/String;

    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentType:Ljava/lang/String;

    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->encMethod:I

    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->paddingScheme:I

    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->plainTextLength:I

    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentLength:I

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentID:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->rightsIssuerURL:Ljava/lang/String;

    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->previewPriority:I

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataTitle:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataDescription:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataCopyRight:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataAuthor:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataIconURI:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataInfoURL:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasSilentHeader:Z

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->silentHeaderName:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->silentHeaderValue:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasPreviewHeader:Z

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->previewHeaderName:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->previewHeaderValue:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasContentURLHeader:Z

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentURLHeaderName:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentURLHeaderValue:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasVersionIDHeader:Z

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->versionIDHeaderName:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->versionIDHeaderValue:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasContentLocationHeader:Z

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentLocationHeaderName:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentLocationHeaderValue:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasCustomHeader:Z

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->customHeaderName:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->customHeaderValue:Ljava/lang/String;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->versionOne:Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionOne;

    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->versionTwo:Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;

    return-void
.end method
