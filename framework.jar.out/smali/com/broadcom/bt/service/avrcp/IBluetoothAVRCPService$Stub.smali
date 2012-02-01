.class public abstract Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothAVRCPService.java"

# interfaces
.implements Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.avrcp.IBluetoothAVRCPService"

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.broadcom.bt.service.avrcp.IBluetoothAVRCPService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.broadcom.bt.service.avrcp.IBluetoothAVRCPService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    const-string v3, "com.broadcom.bt.service.avrcp.IBluetoothAVRCPService"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "com.broadcom.bt.service.avrcp.IBluetoothAVRCPService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "com.broadcom.bt.service.avrcp.IBluetoothAVRCPService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;

    move-result-object v0

    .local v0, _arg0:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;->registerCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    goto :goto_0

    .end local v0           #_arg0:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;
    :sswitch_2
    const-string v1, "com.broadcom.bt.service.avrcp.IBluetoothAVRCPService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;->unregisterCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    goto :goto_0

    .end local v0           #_arg0:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;
    :sswitch_3
    const-string v1, "com.broadcom.bt.service.avrcp.IBluetoothAVRCPService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;->enable()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    goto :goto_0

    :sswitch_4
    const-string v1, "com.broadcom.bt.service.avrcp.IBluetoothAVRCPService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;->disable()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
