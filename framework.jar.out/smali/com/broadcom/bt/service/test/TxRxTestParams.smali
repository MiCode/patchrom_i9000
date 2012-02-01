.class public Lcom/broadcom/bt/service/test/TxRxTestParams;
.super Ljava/lang/Object;
.source "TxRxTestParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BD_ADDR_LEN:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/test/TxRxTestParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bb_packet_len:I

.field public bb_packet_type:B

.field public carrier_enable:B

.field public frequency:B

.field public hopping_mode:B

.field public logical_channel:B

.field public mode:B

.field public modulation_type:B

.field public remote_bd:[B

.field public report_period:I

.field public testmode:I

.field public tx_power_level:B

.field public tx_power_option:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/broadcom/bt/service/test/TxRxTestParams$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/test/TxRxTestParams$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/test/TxRxTestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IB[BIBBBBBBBBI)V
    .locals 0
    .parameter "testmode"
    .parameter "carrier_enable"
    .parameter "remote_bd"
    .parameter "report_period"
    .parameter "frequency"
    .parameter "mode"
    .parameter "hopping_mode"
    .parameter "modulation_type"
    .parameter "logical_channel"
    .parameter "tx_power_level"
    .parameter "tx_power_option"
    .parameter "bb_packet_type"
    .parameter "bb_packet_len"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->testmode:I

    iput-byte p2, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->carrier_enable:B

    iput-object p3, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    iput p4, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->report_period:I

    iput-byte p5, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->frequency:B

    iput-byte p6, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->mode:B

    iput-byte p7, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->hopping_mode:B

    iput-byte p8, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->modulation_type:B

    iput-byte p9, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->logical_channel:B

    iput-byte p10, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_level:B

    iput-byte p11, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_option:B

    iput-byte p12, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_type:B

    iput p13, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_len:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/test/TxRxTestParams;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/test/TxRxTestParams$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/test/TxRxTestParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    const/16 v3, 0xc

    if-ge v3, v2, :cond_0

    const/16 v2, 0xc

    :cond_0
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
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

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->testmode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->carrier_enable:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, temp:I
    if-eqz v0, :cond_0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    iget-object v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->report_period:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->frequency:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->mode:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->hopping_mode:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->modulation_type:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->logical_channel:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_level:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_option:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_type:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_len:I

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->testmode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->carrier_enable:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    iget v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->report_period:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->frequency:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->mode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->hopping_mode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->modulation_type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->logical_channel:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_level:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_option:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
