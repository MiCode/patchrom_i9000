.class public abstract Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrinterService.java"

# interfaces
.implements Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

.field static final TRANSACTION_abort:I = 0x8

.field static final TRANSACTION_cancelBppStatus:I = 0x9

.field static final TRANSACTION_getCapabilities:I = 0x3

.field static final TRANSACTION_obexAuthenticationResponse:I = 0x4

.field static final TRANSACTION_partialImageResponse:I = 0x6

.field static final TRANSACTION_print:I = 0x5

.field static final TRANSACTION_refObjectResponse:I = 0x7

.field static final TRANSACTION_registerClientCallback:I = 0x1

.field static final TRANSACTION_unregisterClientCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    move-result-object v4

    .local v4, _arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z

    move-result v14

    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .end local v4           #_arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    .end local v14           #_result:Z
    :sswitch_2
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    move-result-object v4

    .restart local v4       #_arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z

    move-result v14

    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .end local v4           #_arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    .end local v14           #_result:Z
    :sswitch_3
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->getCapabilities(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto :goto_0

    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    :sswitch_4
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_5
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/broadcom/bt/service/bpp/BipParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/broadcom/bt/service/bpp/BipParameters;

    .local v10, _arg6:Lcom/broadcom/bt/service/bpp/BipParameters;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/broadcom/bt/service/bpp/BppParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/broadcom/bt/service/bpp/BppParameters;

    .local v11, _arg7:Lcom/broadcom/bt/service/bpp/BppParameters;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/broadcom/bt/service/bpp/BppObjectResolver;

    .local v12, _arg8:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    move-result-object v13

    .local v13, _arg9:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v13}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->print(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J

    move-result-wide v14

    .local v14, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v10           #_arg6:Lcom/broadcom/bt/service/bpp/BipParameters;
    .end local v11           #_arg7:Lcom/broadcom/bt/service/bpp/BppParameters;
    .end local v12           #_arg8:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    .end local v13           #_arg9:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    .end local v14           #_result:J
    :cond_2
    const/4 v10, 0x0

    .restart local v10       #_arg6:Lcom/broadcom/bt/service/bpp/BipParameters;
    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .restart local v11       #_arg7:Lcom/broadcom/bt/service/bpp/BppParameters;
    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    .restart local v12       #_arg8:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    goto :goto_5

    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v9           #_arg5:I
    .end local v10           #_arg6:Lcom/broadcom/bt/service/bpp/BipParameters;
    .end local v11           #_arg7:Lcom/broadcom/bt/service/bpp/BppParameters;
    .end local v12           #_arg8:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    :sswitch_6
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->partialImageResponse(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->refObjectResponse(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->abort()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->cancelBppStatus()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
