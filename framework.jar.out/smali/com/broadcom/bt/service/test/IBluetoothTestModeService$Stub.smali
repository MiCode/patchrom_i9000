.class public abstract Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothTestModeService.java"

# interfaces
.implements Lcom/broadcom/bt/service/test/IBluetoothTestModeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/IBluetoothTestModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.test.IBluetoothTestModeService"

.field static final TRANSACTION_SendBtldApiCmd:I = 0xb

.field static final TRANSACTION_Set_Tx_Rx_Test:I = 0xa

.field static final TRANSACTION_connectTestMode:I = 0x2

.field static final TRANSACTION_createTestMode:I = 0x1

.field static final TRANSACTION_enterDUTMode:I = 0x8

.field static final TRANSACTION_enterTestMode:I = 0x3

.field static final TRANSACTION_exitCurrentTestMode:I = 0x7

.field static final TRANSACTION_exitDUTMode:I = 0x9

.field static final TRANSACTION_exitTestMode:I = 0x4

.field static final TRANSACTION_getTestMode:I = 0x5

.field static final TRANSACTION_setTraceLevel:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/test/IBluetoothTestModeService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x1

    const-string v6, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    move-result-object v0

    .local v0, _arg0:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I

    move-result v3

    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    .end local v0           #_arg0:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;
    .end local v3           #_result:I
    :sswitch_2
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->connectTestMode()I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    .end local v3           #_result:I
    :sswitch_3
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->enterTestMode()I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    .end local v3           #_result:I
    :sswitch_4
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->exitTestMode()I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    .end local v3           #_result:I
    :sswitch_5
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->getTestMode()I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    .end local v3           #_result:I
    :sswitch_6
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .local v0, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .local v1, _arg1:B
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->setTraceLevel(BB)I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    .end local v0           #_arg0:B
    .end local v1           #_arg1:B
    .end local v3           #_result:I
    :sswitch_7
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->exitCurrentTestMode()I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v3           #_result:I
    :sswitch_8
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->enterDUTMode()I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v3           #_result:I
    :sswitch_9
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->exitDUTMode()I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v3           #_result:I
    :sswitch_a
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/broadcom/bt/service/test/TxRxTestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/TxRxTestParams;

    .local v0, _arg0:Lcom/broadcom/bt/service/test/TxRxTestParams;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/broadcom/bt/service/test/TxRxTestParams;
    .end local v3           #_result:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/broadcom/bt/service/test/TxRxTestParams;
    goto :goto_1

    .end local v0           #_arg0:Lcom/broadcom/bt/service/test/TxRxTestParams;
    :sswitch_b
    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, _arg2:[B
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->SendBtldApiCmd(II[B)I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
