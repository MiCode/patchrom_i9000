.class public Lcom/broadcom/bt/service/bpp/BppAttributes;
.super Ljava/lang/Object;
.source "BppAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BppAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BppStatus:I

.field public BtpHeight:I

.field public BtpWidth:I

.field public CharRepresentations:[B

.field public ColorSupported:Z

.field public Id1284Info:[B

.field public MaxCopies:I

.field public MaxPages:I

.field public Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

.field public MediaTypesMask:[I

.field public NumMediaLoaded:I

.field public OrientationMask:I

.field public PrinterLocation:Ljava/lang/String;

.field public PrinterName:Ljava/lang/String;

.field public PrinterStatus:I

.field public QualityMask:I

.field public QueuedJobs:I

.field public Reason:I

.field public SidesMask:I

.field public State:I

.field public SupportedDocumentFormats:[Ljava/lang/String;

.field public SupportedImageFormats:[Ljava/lang/String;

.field public SupportedMediaSizes:[Ljava/lang/String;

.field private boolArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/broadcom/bt/service/bpp/BppAttributes$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BppAttributes$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    return-void
.end method

.method public constructor <init>(IIIIIIII[I[B[BLjava/lang/String;Ljava/lang/String;[Lcom/broadcom/bt/service/bpp/LoadedMedia;IIIIIZ[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "printerStatus"
    .parameter "bppStatus"
    .parameter "maxCopies"
    .parameter "maxPages"
    .parameter "queuedJobs"
    .parameter "btpWidth"
    .parameter "btpHeight"
    .parameter "numMediaLoaded"
    .parameter "mediaTypesMask"
    .parameter "charRepresentations"
    .parameter "id1284Info"
    .parameter "printerName"
    .parameter "printerLocation"
    .parameter "media"
    .parameter "state"
    .parameter "reason"
    .parameter "sidesMask"
    .parameter "qualityMask"
    .parameter "orientationMask"
    .parameter "colorSupported"
    .parameter "supportedDocumentFormats"
    .parameter "supportedMediaSizes"
    .parameter "supportedImageFormats"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    iput p1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    iput p2, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    iput p3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    iput p4, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    iput p5, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    iput p6, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    iput p7, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    iput p8, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    iput-object p9, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    iput-object p10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CharRepresentations:[B

    iput-object p11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Id1284Info:[B

    iput-object p12, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    move/from16 v0, p16

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    move/from16 v0, p17

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    move/from16 v0, p18

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    move/from16 v0, p19

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    move/from16 v0, p20

    move-object v1, p0

    iput-boolean v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    move-object/from16 v0, p21

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    move-object/from16 v0, p22

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    move-object/from16 v0, p23

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BppAttributes$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes;-><init>(Landroid/os/Parcel;)V

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
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, tempSize:I
    if-lez v2, :cond_0

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .local v1, tempParcelArray:[Landroid/os/Parcelable;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    array-length v3, v1

    new-array v3, v3, [Lcom/broadcom/bt/service/bpp/LoadedMedia;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aget-object v3, v1, v0

    check-cast v3, Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    iput-boolean v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_2

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_3

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_4

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    iget-boolean v1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    aput-boolean v1, v0, v2

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
