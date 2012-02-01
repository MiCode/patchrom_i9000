.class public abstract Lcom/broadcom/bt/service/map/IMapCallback$Stub;
.super Landroid/os/Binder;
.source "IMapCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/map/IMapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/IMapCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/IMapCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.map.IMapCallback"

.field static final TRANSACTION_onMCEConnected:I = 0x2

.field static final TRANSACTION_onMCEDisconnected:I = 0x3

.field static final TRANSACTION_onMCEGetFolderListing:I = 0x6

.field static final TRANSACTION_onMCEGetMsg:I = 0x9

.field static final TRANSACTION_onMCEGetMsgListing:I = 0x7

.field static final TRANSACTION_onMCEPushMsg:I = 0x8

.field static final TRANSACTION_onMCERegisterForNotification:I = 0x4

.field static final TRANSACTION_onMCESetMessageStatus:I = 0xa

.field static final TRANSACTION_onMCEUpdateInbox:I = 0x5

.field static final TRANSACTION_onMSEStateChanged:I = 0x1

.field static final TRANSACTION_onMsgGetInProgress:I = 0xb

.field static final TRANSACTION_onMsgPushInProgress:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.broadcom.bt.service.map.IMapCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/map/IMapCallback;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.broadcom.bt.service.map.IMapCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/map/IMapCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/broadcom/bt/service/map/IMapCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/map/IMapCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/map/IMapCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
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

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v8

    .local v8, _arg2:B
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto :goto_0

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:B
    :sswitch_2
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto :goto_0

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto :goto_0

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    :sswitch_6
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg5:I
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:I
    .end local v11           #_arg5:I
    :sswitch_7
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v13

    .local v13, _arg7:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v14

    .local v14, _arg8:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, _arg10:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v17

    .local v17, _arg11:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, _arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, _arg13:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v20

    .local v20, _arg14:B
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v20}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:I
    .end local v11           #_arg5:I
    .end local v12           #_arg6:I
    .end local v13           #_arg7:B
    .end local v14           #_arg8:B
    .end local v15           #_arg9:Ljava/lang/String;
    .end local v16           #_arg10:Ljava/lang/String;
    .end local v17           #_arg11:B
    .end local v18           #_arg12:Ljava/lang/String;
    .end local v19           #_arg13:Ljava/lang/String;
    .end local v20           #_arg14:B
    :sswitch_8
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v9

    .local v9, _arg3:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v10

    .local v10, _arg4:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    .local v11, _arg5:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, _arg8:Ljava/lang/String;
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:B
    .end local v10           #_arg4:B
    .end local v11           #_arg5:B
    .end local v12           #_arg6:Ljava/lang/String;
    .end local v13           #_arg7:Ljava/lang/String;
    .end local v14           #_arg8:Ljava/lang/String;
    :sswitch_9
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v12

    .local v12, _arg6:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v13

    .local v13, _arg7:B
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:Ljava/lang/String;
    .end local v11           #_arg5:Ljava/lang/String;
    .end local v12           #_arg6:B
    .end local v13           #_arg7:B
    :sswitch_a
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    .local v11, _arg5:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v12

    .restart local v12       #_arg6:B
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:Ljava/lang/String;
    .end local v11           #_arg5:B
    .end local v12           #_arg6:B
    :sswitch_b
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMsgGetInProgress()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMsgPushInProgress()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
