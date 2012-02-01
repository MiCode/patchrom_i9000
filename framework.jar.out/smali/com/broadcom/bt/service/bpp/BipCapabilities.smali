.class public Lcom/broadcom/bt/service/bpp/BipCapabilities;
.super Ljava/lang/Object;
.source "BipCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BipCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AttachmentFormat:[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

.field public Dpof:Lcom/broadcom/bt/service/bpp/DpofOptions;

.field public FilterCapability:Z

.field public Formats:[Lcom/broadcom/bt/service/bpp/BipParameters;

.field public Preferred:Lcom/broadcom/bt/service/bpp/BipParameters;

.field public Pres:B

.field private boolArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/broadcom/bt/service/bpp/BipCapabilities$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BipCapabilities$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BipCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BipCapabilities$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BipCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/bpp/BipParameters;[Lcom/broadcom/bt/service/bpp/BipParameters;[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;ZBLcom/broadcom/bt/service/bpp/DpofOptions;)V
    .locals 1
    .parameter "preferred"
    .parameter "formats"
    .parameter "attachmentFormat"
    .parameter "filterCapability"
    .parameter "pres"
    .parameter "dpof"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Preferred:Lcom/broadcom/bt/service/bpp/BipParameters;

    iput-object p2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Formats:[Lcom/broadcom/bt/service/bpp/BipParameters;

    iput-object p3, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->AttachmentFormat:[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    iput-boolean p4, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->FilterCapability:Z

    iput-byte p5, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Pres:B

    iput-object p6, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Dpof:Lcom/broadcom/bt/service/bpp/DpofOptions;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/bpp/BipParameters;

    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Preferred:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .local v1, tempParcelArray:[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v2, v1

    new-array v2, v2, [Lcom/broadcom/bt/service/bpp/BipParameters;

    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Formats:[Lcom/broadcom/bt/service/bpp/BipParameters;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Formats:[Lcom/broadcom/bt/service/bpp/BipParameters;

    aget-object v2, v1, v0

    check-cast v2, Lcom/broadcom/bt/service/bpp/BipParameters;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v2, v1

    new-array v2, v2, [Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->AttachmentFormat:[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->AttachmentFormat:[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    aget-object v2, v1, v0

    check-cast v2, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/bpp/DpofOptions;

    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Dpof:Lcom/broadcom/bt/service/bpp/DpofOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Pres:B

    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    iput-boolean v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->FilterCapability:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Preferred:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Formats:[Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->AttachmentFormat:[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Dpof:Lcom/broadcom/bt/service/bpp/DpofOptions;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Pres:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->FilterCapability:Z

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
