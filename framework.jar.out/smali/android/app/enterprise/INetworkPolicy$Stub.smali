.class public abstract Landroid/app/enterprise/INetworkPolicy$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicy.java"

# interfaces
.implements Landroid/app/enterprise/INetworkPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/INetworkPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.INetworkPolicy"

.field static final TRANSACTION_addNewAp:I = 0x1

.field static final TRANSACTION_deleteAp:I = 0x4

.field static final TRANSACTION_setApSettings:I = 0x2

.field static final TRANSACTION_setpreferredAp:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.enterprise.INetworkPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/INetworkPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/INetworkPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.app.enterprise.INetworkPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/INetworkPolicy;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/enterprise/INetworkPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 37
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
    const-string v3, "android.app.enterprise.INetworkPolicy"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "android.app.enterprise.INetworkPolicy"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, _arg10:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, _arg11:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, _arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, _arg13:I
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v17}, Landroid/app/enterprise/INetworkPolicy$Stub;->addNewAp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v35

    .local v35, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    goto :goto_0

    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v9           #_arg5:Ljava/lang/String;
    .end local v10           #_arg6:Ljava/lang/String;
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:I
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:I
    .end local v15           #_arg11:Ljava/lang/String;
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:I
    .end local v35           #_result:J
    :sswitch_2
    const-string v3, "android.app.enterprise.INetworkPolicy"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .local v19, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #_arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #_arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #_arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, _arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, _arg10:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, _arg11:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #_arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .local v17, _arg13:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .local v34, _arg14:I
    move-object/from16 v18, p0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    move-object/from16 v32, v16

    move-object/from16 v33, v17

    invoke-virtual/range {v18 .. v34}, Landroid/app/enterprise/INetworkPolicy$Stub;->setApSettings(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v35

    .restart local v35       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v9           #_arg5:Ljava/lang/String;
    .end local v10           #_arg6:Ljava/lang/String;
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:Ljava/lang/String;
    .end local v13           #_arg9:I
    .end local v14           #_arg10:Ljava/lang/String;
    .end local v15           #_arg11:I
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:Ljava/lang/String;
    .end local v19           #_arg0:J
    .end local v34           #_arg14:I
    .end local v35           #_result:J
    :sswitch_3
    const-string v3, "android.app.enterprise.INetworkPolicy"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .restart local v19       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/INetworkPolicy$Stub;->setpreferredAp(J)Z

    move-result v35

    .local v35, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v35, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .end local v19           #_arg0:J
    .end local v35           #_result:Z
    :sswitch_4
    const-string v3, "android.app.enterprise.INetworkPolicy"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .restart local v19       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/INetworkPolicy$Stub;->deleteAp(J)Z

    move-result v35

    .restart local v35       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v35, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
