.class public Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;
.super Ljava/lang/Object;
.source "PlayReadyRightsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/playready/playreadymanager/PlayReadyRightsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayReadyDateConstraints"
.end annotation


# instance fields
.field public tm_hour:I

.field public tm_mday:I

.field public tm_min:I

.field public tm_mon:I

.field public tm_sec:I

.field public tm_year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_year:I

    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_mon:I

    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_mday:I

    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_hour:I

    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_min:I

    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_sec:I

    return-void
.end method
