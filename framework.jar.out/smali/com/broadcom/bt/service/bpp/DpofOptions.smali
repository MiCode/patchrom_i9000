.class public Lcom/broadcom/bt/service/bpp/DpofOptions;
.super Ljava/lang/Object;
.source "DpofOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/DpofOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CharacterStamp:Z

.field public IndexPrint:Z

.field public MultipleImagePrint:Z

.field public NumberOfSets:B

.field public SpecificSize:Z

.field public StandardPrint:Z

.field public Trimming:Z

.field private boolArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/broadcom/bt/service/bpp/DpofOptions$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/DpofOptions$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/DpofOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/DpofOptions;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/DpofOptions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/DpofOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZZZBZZ)V
    .locals 1
    .parameter "standardPrint"
    .parameter "indexPrint"
    .parameter "multipleImagePrint"
    .parameter "specificSize"
    .parameter "numberOfSets"
    .parameter "characterStamp"
    .parameter "trimming"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    iput-boolean p1, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->StandardPrint:Z

    iput-boolean p2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->IndexPrint:Z

    iput-boolean p3, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->MultipleImagePrint:Z

    iput-boolean p4, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->SpecificSize:Z

    iput-byte p5, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->NumberOfSets:B

    iput-boolean p6, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->CharacterStamp:Z

    iput-boolean p7, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->Trimming:Z

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
    .locals 2
    .parameter "in"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->StandardPrint:Z

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->IndexPrint:Z

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->MultipleImagePrint:Z

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->SpecificSize:Z

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->SpecificSize:Z

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->Trimming:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->NumberOfSets:B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->StandardPrint:Z

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->IndexPrint:Z

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->MultipleImagePrint:Z

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->SpecificSize:Z

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->CharacterStamp:Z

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->Trimming:Z

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->NumberOfSets:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
