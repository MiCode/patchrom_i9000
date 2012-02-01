.class public abstract Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;
.super Landroid/os/Binder;
.source "IFmTransmitterService.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmTransmitterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/IFmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.fm.IFmTransmitterService"

.field static final TRANSACTION_abortScanForBestChannel:I = 0x12

.field static final TRANSACTION_disableFmTransmitter:I = 0x5

.field static final TRANSACTION_enableFmTransmitter:I = 0x4

.field static final TRANSACTION_getRadioIsOn:I = 0x3

.field static final TRANSACTION_muteAudio:I = 0xf

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_scanForBestChannel:I = 0x11

.field static final TRANSACTION_setAudioMode:I = 0x9

.field static final TRANSACTION_setAudioPath:I = 0xe

.field static final TRANSACTION_setBandwidth:I = 0xc

.field static final TRANSACTION_setInterferenceNotif:I = 0x10

.field static final TRANSACTION_setPreemphasis:I = 0xd

.field static final TRANSACTION_setPwrLevel:I = 0x8

.field static final TRANSACTION_setRegion:I = 0xb

.field static final TRANSACTION_setTxFrequency:I = 0x7

.field static final TRANSACTION_setTxPower:I = 0x6

.field static final TRANSACTION_setVolume:I = 0xa

.field static final TRANSACTION_startAudioChirp:I = 0x13

.field static final TRANSACTION_stopAudioChirp:I = 0x14

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmTransmitterService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    move-result-object v1

    .local v1, _arg0:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #_arg0:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;
    :sswitch_2
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    move-result-object v1

    .restart local v1       #_arg0:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #_arg0:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;
    :sswitch_3
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->getRadioIsOn()Z

    move-result v10

    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .end local v10           #_result:Z
    :sswitch_4
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->enableFmTransmitter()I

    move-result v10

    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v10           #_result:I
    :sswitch_5
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->disableFmTransmitter()I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v10           #_result:I
    :sswitch_6
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .local v1, _arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->setTxPower(Z)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v10           #_result:I
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :sswitch_7
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->setTxFrequency(I)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_8
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->setPwrLevel(I)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_9
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->setAudioMode(I)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_a
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->setVolume(I)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_b
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->setRegion(I)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_c
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->setBandwidth(I)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_d
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->setPreemphasis(I)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_e
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->setAudioPath(I)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_f
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->muteAudio(I)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_10
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->setInterferenceNotif(I)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_11
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .local v2, _arg1:Z
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->scanForBestChannel(IZ)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v10           #_result:I
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_3

    .end local v1           #_arg0:I
    :sswitch_12
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->abortScanForBestChannel()I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v10           #_result:I
    :sswitch_13
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .local v1, _arg0:Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg6:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg7:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg8:I
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->startAudioChirp(ZIIIIIIII)I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:I
    .end local v8           #_arg7:I
    .end local v9           #_arg8:I
    .end local v10           #_result:I
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_4

    :sswitch_14
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->stopAudioChirp()I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
