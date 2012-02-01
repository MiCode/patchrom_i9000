.class public Lcom/broadcom/bt/service/bpp/BppParameters;
.super Ljava/lang/Object;
.source "BppParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BppParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Copies:I

.field public MediaSize:Ljava/lang/String;

.field public MediaType:I

.field public Orientation:I

.field public PageSides:I

.field public PagesPerSide:I

.field public Quality:I

.field public UsePreciseJob:Z

.field public UseRefChannel:Z

.field private boolArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/broadcom/bt/service/bpp/BppParameters$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BppParameters$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BppParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIIIZZ)V
    .locals 0
    .parameter "copies"
    .parameter "pagesPerSide"
    .parameter "mediaSize"
    .parameter "mediaType"
    .parameter "orientation"
    .parameter "pageSides"
    .parameter "quality"
    .parameter "useRefChannel"
    .parameter "usePreciseJob"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Copies:I

    iput p2, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PagesPerSide:I

    iput-object p3, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaSize:Ljava/lang/String;

    iput p4, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaType:I

    iput p5, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Orientation:I

    iput p6, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PageSides:I

    iput p7, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Quality:I

    iput-boolean p8, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UseRefChannel:Z

    iput-boolean p9, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UsePreciseJob:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BppParameters;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BppParameters$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BppParameters;-><init>(Landroid/os/Parcel;)V

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Copies:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PagesPerSide:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaSize:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Orientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PageSides:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Quality:I

    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UseRefChannel:Z

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UsePreciseJob:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Copies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PagesPerSide:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PageSides:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UseRefChannel:Z

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UsePreciseJob:Z

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
