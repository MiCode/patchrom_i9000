.class Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;
.super Ljava/lang/Object;
.source "DCFHeaderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/mobile2/DCFHeaderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DCFHeaderVersionTwo"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public copyRight:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public infoUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;->author:Ljava/lang/String;

    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;->copyRight:Ljava/lang/String;

    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;->description:Ljava/lang/String;

    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;->iconUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;->infoUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;->title:Ljava/lang/String;

    return-void
.end method
