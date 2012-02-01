.class public Lcom/broadcom/bt/service/bpp/BipPixel;
.super Ljava/lang/Object;
.source "BipPixel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BipPixel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Height:I

.field public Height2:I

.field public Width:I

.field public Width2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/broadcom/bt/service/bpp/BipPixel$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BipPixel$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BipPixel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "width2"
    .parameter "height2"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width:I

    iput p2, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height:I

    iput p3, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width2:I

    iput p4, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height2:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BipPixel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BipPixel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BipPixel;-><init>(Landroid/os/Parcel;)V

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
    .locals 1
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height2:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
