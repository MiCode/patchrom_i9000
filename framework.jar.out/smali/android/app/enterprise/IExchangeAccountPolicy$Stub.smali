.class public abstract Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "IExchangeAccountPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IExchangeAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IExchangeAccountPolicy"

.field static final TRANSACTION_addNewAccount:I = 0x1

.field static final TRANSACTION_deleteAccount:I = 0x14

.field static final TRANSACTION_getAccountDetails:I = 0x13

.field static final TRANSACTION_getAccountId:I = 0x12

.field static final TRANSACTION_sendAccountsChangedBroadcast:I = 0x15

.field static final TRANSACTION_setAcceptAllCertificates:I = 0x5

.field static final TRANSACTION_setAccountBaseParameters:I = 0x2

.field static final TRANSACTION_setAccountName:I = 0x11

.field static final TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x6

.field static final TRANSACTION_setAsDefaultAccount:I = 0x10

.field static final TRANSACTION_setClientAuthCert:I = 0xb

.field static final TRANSACTION_setPassword:I = 0x8

.field static final TRANSACTION_setPastDaysToSync:I = 0xc

.field static final TRANSACTION_setProtocolVersion:I = 0x9

.field static final TRANSACTION_setSSL:I = 0x3

.field static final TRANSACTION_setSenderName:I = 0xe

.field static final TRANSACTION_setServerPathPrefix:I = 0xf

.field static final TRANSACTION_setSignature:I = 0xa

.field static final TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x7

.field static final TRANSACTION_setSyncInterval:I = 0xd

.field static final TRANSACTION_setTLS:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.enterprise.IExchangeAccountPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.app.enterprise.IExchangeAccountPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/enterprise/IExchangeAccountPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 39
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
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v12, v5

    .local v12, _arg6:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move/from16 v16, v5

    .local v16, _arg10:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move/from16 v17, v5

    .local v17, _arg11:Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, _arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v19, v5

    .local v19, _arg13:Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move/from16 v20, v5

    .local v20, _arg14:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move/from16 v21, v5

    .local v21, _arg15:Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .local v22, _arg16:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .local v23, _arg17:Ljava/lang/String;
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v23}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v37

    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v12           #_arg6:Z
    .end local v13           #_arg7:Ljava/lang/String;
    .end local v14           #_arg8:Ljava/lang/String;
    .end local v15           #_arg9:Ljava/lang/String;
    .end local v16           #_arg10:Z
    .end local v17           #_arg11:Z
    .end local v18           #_arg12:Ljava/lang/String;
    .end local v19           #_arg13:Z
    .end local v20           #_arg14:Z
    .end local v21           #_arg15:Z
    .end local v22           #_arg16:Ljava/lang/String;
    .end local v23           #_arg17:Ljava/lang/String;
    .end local v37           #_result:J
    :cond_0
    const/4 v5, 0x0

    move v12, v5

    goto :goto_1

    .restart local v12       #_arg6:Z
    .restart local v13       #_arg7:Ljava/lang/String;
    .restart local v14       #_arg8:Ljava/lang/String;
    .restart local v15       #_arg9:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_2

    .restart local v16       #_arg10:Z
    :cond_2
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_3

    .restart local v17       #_arg11:Z
    .restart local v18       #_arg12:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    move/from16 v19, v5

    goto :goto_4

    .restart local v19       #_arg13:Z
    :cond_4
    const/4 v5, 0x0

    move/from16 v20, v5

    goto :goto_5

    .restart local v20       #_arg14:Z
    :cond_5
    const/4 v5, 0x0

    move/from16 v21, v5

    goto :goto_6

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:I
    .end local v11           #_arg5:I
    .end local v12           #_arg6:Z
    .end local v13           #_arg7:Ljava/lang/String;
    .end local v14           #_arg8:Ljava/lang/String;
    .end local v15           #_arg9:Ljava/lang/String;
    .end local v16           #_arg10:Z
    .end local v17           #_arg11:Z
    .end local v18           #_arg12:Ljava/lang/String;
    .end local v19           #_arg13:Z
    .end local v20           #_arg14:Z
    :sswitch_2
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

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

    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v29

    .local v29, _arg4:J
    move-object/from16 v24, p0

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    invoke-virtual/range {v24 .. v30}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v37

    .restart local v37       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v29           #_arg4:J
    .end local v37           #_result:J
    :sswitch_3
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move v6, v5

    .local v6, _arg0:Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .local v33, _arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSSL(ZJ)Z

    move-result v37

    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_7

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :cond_6
    const/4 v5, 0x0

    move v6, v5

    goto :goto_7

    .restart local v6       #_arg0:Z
    .restart local v33       #_arg1:J
    .restart local v37       #_result:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_8

    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_4
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    move v6, v5

    .restart local v6       #_arg0:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setTLS(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_9

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :cond_8
    const/4 v5, 0x0

    move v6, v5

    goto :goto_9

    .restart local v6       #_arg0:Z
    .restart local v33       #_arg1:J
    .restart local v37       #_result:Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_a

    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_5
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    move v6, v5

    .restart local v6       #_arg0:Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAcceptAllCertificates(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_b

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :cond_a
    const/4 v5, 0x0

    move v6, v5

    goto :goto_b

    .restart local v6       #_arg0:Z
    .restart local v33       #_arg1:J
    .restart local v37       #_result:Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_6
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    move v6, v5

    .restart local v6       #_arg0:Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAlwaysVibrateOnEmailNotification(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_d

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :cond_c
    const/4 v5, 0x0

    move v6, v5

    goto :goto_d

    .restart local v6       #_arg0:Z
    .restart local v33       #_arg1:J
    .restart local v37       #_result:Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_e

    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_7
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    move v6, v5

    .restart local v6       #_arg0:Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSilentVibrateOnEmailNotification(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_f

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :cond_e
    const/4 v5, 0x0

    move v6, v5

    goto :goto_f

    .restart local v6       #_arg0:Z
    .restart local v33       #_arg1:J
    .restart local v37       #_result:Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_10

    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_8
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setPassword(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_10

    const/4 v5, 0x1

    :goto_11
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v5, 0x0

    goto :goto_11

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_9
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setProtocolVersion(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_11

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_a
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSignature(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_12

    const/4 v5, 0x1

    :goto_13
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v5, 0x0

    goto :goto_13

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_b
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .local v35, _arg2:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-wide/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setClientAuthCert([BLjava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:[B
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v35           #_arg2:J
    :sswitch_c
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setPastDaysToSync(IJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_13

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v5, 0x0

    goto :goto_14

    .end local v6           #_arg0:I
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_d
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSyncInterval(IJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_14

    const/4 v5, 0x1

    :goto_15
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v5, 0x0

    goto :goto_15

    .end local v6           #_arg0:I
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_e
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSenderName(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_15

    const/4 v5, 0x1

    :goto_16
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x0

    goto :goto_16

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_f
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setServerPathPrefix(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_16

    const/4 v5, 0x1

    :goto_17
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v5, 0x0

    goto :goto_17

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_10
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    .local v31, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAsDefaultAccount(J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_17

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v5, 0x0

    goto :goto_18

    .end local v31           #_arg0:J
    .end local v37           #_result:Z
    :sswitch_11
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAccountName(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_18

    const/4 v5, 0x1

    :goto_19
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v5, 0x0

    goto :goto_19

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_12
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

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

    .restart local v8       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v37

    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v37           #_result:J
    :sswitch_13
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    .restart local v31       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v37

    .local v37, _result:Landroid/app/enterprise/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_19

    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/Account;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_19
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .end local v31           #_arg0:J
    .end local v37           #_result:Landroid/app/enterprise/Account;
    :sswitch_14
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    .restart local v31       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->deleteAccount(J)Z

    move-result v37

    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_1a

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v5, 0x0

    goto :goto_1b

    .end local v31           #_arg0:J
    .end local v37           #_result:Z
    :sswitch_15
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->sendAccountsChangedBroadcast()V

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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
