.class public abstract Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrinterCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

.field static final TRANSACTION_onAuthorizePrinter:I = 0x2

.field static final TRANSACTION_onGetPrinterCapabilities:I = 0x3

.field static final TRANSACTION_onPrinterSessionOpen:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x1

    const-string v8, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :sswitch_1
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->onPrinterSessionOpen()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_2
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v4, v7

    .local v4, _arg3:Z
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->onAuthorizePrinter(IIIZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    .end local v4           #_arg3:Z
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_1

    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_3
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/bpp/BipCapabilities;

    .local v5, _arg4:Lcom/broadcom/bt/service/bpp/BipCapabilities;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/bpp/BppAttributes;

    .local v6, _arg5:Lcom/broadcom/bt/service/bpp/BppAttributes;
    :goto_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->onGetPrinterCapabilities(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    .end local v5           #_arg4:Lcom/broadcom/bt/service/bpp/BipCapabilities;
    .end local v6           #_arg5:Lcom/broadcom/bt/service/bpp/BppAttributes;
    :cond_1
    const/4 v5, 0x0

    .restart local v5       #_arg4:Lcom/broadcom/bt/service/bpp/BipCapabilities;
    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .restart local v6       #_arg5:Lcom/broadcom/bt/service/bpp/BppAttributes;
    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
