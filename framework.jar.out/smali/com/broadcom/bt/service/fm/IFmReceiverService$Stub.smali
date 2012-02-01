.class public abstract Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;
.super Landroid/os/Binder;
.source "IFmReceiverService.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/IFmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.fm.IFmReceiverService"

.field static final TRANSACTION_estimateNoiseFloorLevel:I = 0x12

.field static final TRANSACTION_getRadioIsOn:I = 0x4

.field static final TRANSACTION_getStatus:I = 0x8

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_muteAudio:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_seekRdsStation:I = 0xb

.field static final TRANSACTION_seekStation:I = 0xa

.field static final TRANSACTION_seekStationAbort:I = 0xc

.field static final TRANSACTION_setAudioMode:I = 0xe

.field static final TRANSACTION_setAudioPath:I = 0xf

.field static final TRANSACTION_setFMVolume:I = 0x14

.field static final TRANSACTION_setLiveAudioPolling:I = 0x13

.field static final TRANSACTION_setRdsMode:I = 0xd

.field static final TRANSACTION_setStepSize:I = 0x10

.field static final TRANSACTION_setWorldRegion:I = 0x11

.field static final TRANSACTION_tuneRadio:I = 0x7

.field static final TRANSACTION_turnOffRadio:I = 0x6

.field static final TRANSACTION_turnOnRadio:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/fm/IFmReceiverService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "com.broadcom.bt.service.fm.IFmReceiverService"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    :sswitch_1
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->init()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto :goto_0

    :sswitch_2
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move-result-object v0

    .local v0, _arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto :goto_0

    .end local v0           #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :sswitch_3
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto :goto_0

    .end local v0           #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :sswitch_4
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->getRadioIsOn()Z

    move-result v4

    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v8

    goto :goto_1

    .end local v4           #_result:Z
    :sswitch_5
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->turnOnRadio(I)I

    move-result v4

    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_6
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->turnOffRadio()I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto :goto_0

    .end local v4           #_result:I
    :sswitch_7
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->tuneRadio(I)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_8
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->getStatus()I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v4           #_result:I
    :sswitch_9
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v6

    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->muteAudio(Z)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:I
    :cond_1
    move v0, v8

    goto :goto_2

    :sswitch_a
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekStation(II)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_b
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekRdsStation(IIII)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_c
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekStationAbort()I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v4           #_result:I
    :sswitch_d
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setRdsMode(IIII)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_e
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setAudioMode(I)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_f
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setAudioPath(I)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_10
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setStepSize(I)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_11
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setWorldRegion(II)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_12
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->estimateNoiseFloorLevel(I)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_13
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v6

    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setLiveAudioPolling(ZI)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :cond_2
    move v0, v8

    goto :goto_3

    :sswitch_14
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setFMVolume(I)I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
