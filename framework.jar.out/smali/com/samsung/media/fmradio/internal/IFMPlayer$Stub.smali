.class public abstract Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;
.super Landroid/os/Binder;
.source "IFMPlayer.java"

# interfaces
.implements Lcom/samsung/media/fmradio/internal/IFMPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/internal/IFMPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.media.fmradio.internal.IFMPlayer"

.field static final TRANSACTION_cancelAFSwitching:I = 0x19

.field static final TRANSACTION_cancelScan:I = 0xc

.field static final TRANSACTION_cancelSeek:I = 0x9

.field static final TRANSACTION_disableAF:I = 0x13

.field static final TRANSACTION_disableRDS:I = 0x11

.field static final TRANSACTION_enableAF:I = 0x12

.field static final TRANSACTION_enableRDS:I = 0x10

.field static final TRANSACTION_getCnt_th:I = 0x2b

.field static final TRANSACTION_getCurrentChannel:I = 0xa

.field static final TRANSACTION_getCurrentRSSI:I = 0x23

.field static final TRANSACTION_getLastScanResult:I = 0x1a

.field static final TRANSACTION_getMaxVolume:I = 0x20

.field static final TRANSACTION_getRSSI_th:I = 0x29

.field static final TRANSACTION_getSNR_th:I = 0x2a

.field static final TRANSACTION_getVolume:I = 0x1d

.field static final TRANSACTION_isAFEnable:I = 0x18

.field static final TRANSACTION_isAirPlaneMode:I = 0x21

.field static final TRANSACTION_isBatteryLow:I = 0x2d

.field static final TRANSACTION_isBusy:I = 0x16

.field static final TRANSACTION_isHeadsetPlugged:I = 0x1e

.field static final TRANSACTION_isOn:I = 0x6

.field static final TRANSACTION_isRDSEnable:I = 0x17

.field static final TRANSACTION_isScanning:I = 0xd

.field static final TRANSACTION_isTvOutPlugged:I = 0x1f

.field static final TRANSACTION_off:I = 0x5

.field static final TRANSACTION_on:I = 0x4

.field static final TRANSACTION_on_in_testmode:I = 0x2c

.field static final TRANSACTION_removeListener:I = 0x2

.field static final TRANSACTION_scan:I = 0xb

.field static final TRANSACTION_searchDown:I = 0xe

.field static final TRANSACTION_searchUp:I = 0xf

.field static final TRANSACTION_seekDown:I = 0x8

.field static final TRANSACTION_seekUp:I = 0x7

.field static final TRANSACTION_setBand:I = 0x14

.field static final TRANSACTION_setChannelSpacing:I = 0x15

.field static final TRANSACTION_setCnt_th:I = 0x28

.field static final TRANSACTION_setDEConstant:I = 0x22

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_setRSSI_th:I = 0x26

.field static final TRANSACTION_setSNR_th:I = 0x27

.field static final TRANSACTION_setSeekRSSI:I = 0x24

.field static final TRANSACTION_setSeekSNR:I = 0x25

.field static final TRANSACTION_setStereo:I = 0x1b

.field static final TRANSACTION_setVolume:I = 0x1c

.field static final TRANSACTION_tune:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMPlayer;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/media/fmradio/internal/IFMPlayer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/media/fmradio/internal/IFMPlayer;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-result-object v0

    .local v0, _arg0:Lcom/samsung/media/fmradio/internal/IFMEventListener;
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto :goto_0

    .end local v0           #_arg0:Lcom/samsung/media/fmradio/internal/IFMEventListener;
    :sswitch_2
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/samsung/media/fmradio/internal/IFMEventListener;
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto :goto_0

    .end local v0           #_arg0:Lcom/samsung/media/fmradio/internal/IFMEventListener;
    :sswitch_3
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->tune(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto :goto_0

    .end local v0           #_arg0:J
    :sswitch_4
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->on()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v7

    goto :goto_1

    .end local v2           #_result:Z
    :sswitch_5
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->off()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v7

    goto :goto_2

    .end local v2           #_result:Z
    :sswitch_6
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isOn()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_2
    move v4, v7

    goto :goto_3

    .end local v2           #_result:Z
    :sswitch_7
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->seekUp()J

    move-result-wide v2

    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:J
    :sswitch_8
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->seekDown()J

    move-result-wide v2

    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:J
    :sswitch_9
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->cancelSeek()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCurrentChannel()J

    move-result-wide v2

    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:J
    :sswitch_b
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->scan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->cancelScan()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v4, v5

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_3
    move v4, v7

    goto :goto_4

    .end local v2           #_result:Z
    :sswitch_d
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isScanning()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    move v4, v5

    :goto_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_4
    move v4, v7

    goto :goto_5

    .end local v2           #_result:Z
    :sswitch_e
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->searchDown()J

    move-result-wide v2

    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:J
    :sswitch_f
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->searchUp()J

    move-result-wide v2

    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:J
    :sswitch_10
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->enableRDS()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->disableRDS()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_12
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->enableAF()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_13
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->disableAF()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_14
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setBand(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_15
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setChannelSpacing(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_16
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isBusy()I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:I
    :sswitch_17
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isRDSEnable()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    move v4, v5

    :goto_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_5
    move v4, v7

    goto :goto_6

    .end local v2           #_result:Z
    :sswitch_18
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isAFEnable()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6

    move v4, v5

    :goto_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_6
    move v4, v7

    goto :goto_7

    .end local v2           #_result:Z
    :sswitch_19
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->cancelAFSwitching()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_1a
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getLastScanResult()[J

    move-result-object v2

    .local v2, _result:[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:[J
    :sswitch_1b
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    move v0, v5

    .local v0, _arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setStereo(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_7
    move v0, v7

    goto :goto_8

    :sswitch_1c
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setVolume(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:J
    :sswitch_1d
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getVolume()J

    move-result-wide v2

    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:J
    :sswitch_1e
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isHeadsetPlugged()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_8

    move v4, v5

    :goto_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_8
    move v4, v7

    goto :goto_9

    .end local v2           #_result:Z
    :sswitch_1f
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isTvOutPlugged()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_9

    move v4, v5

    :goto_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_9
    move v4, v7

    goto :goto_a

    .end local v2           #_result:Z
    :sswitch_20
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getMaxVolume()J

    move-result-wide v2

    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:J
    :sswitch_21
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isAirPlaneMode()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_a

    move v4, v5

    :goto_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_a
    move v4, v7

    goto :goto_b

    .end local v2           #_result:Z
    :sswitch_22
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setDEConstant(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:J
    :sswitch_23
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCurrentRSSI()J

    move-result-wide v2

    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:J
    :sswitch_24
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSeekRSSI(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:J
    :sswitch_25
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSeekSNR(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:J
    :sswitch_26
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setRSSI_th(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_27
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSNR_th(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_28
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setCnt_th(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_29
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getRSSI_th()I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:I
    :sswitch_2a
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getSNR_th()I

    move-result v2

    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:I
    :sswitch_2b
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCnt_th()I

    move-result v2

    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:I
    :sswitch_2c
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->on_in_testmode()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_b

    move v4, v5

    :goto_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_b
    move v4, v7

    goto :goto_c

    .end local v2           #_result:Z
    :sswitch_2d
    const-string v4, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isBatteryLow()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_c

    move v4, v5

    :goto_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_c
    move v4, v7

    goto :goto_d

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
