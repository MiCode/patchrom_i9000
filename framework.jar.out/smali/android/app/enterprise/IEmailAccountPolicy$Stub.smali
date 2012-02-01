.class public abstract Landroid/app/enterprise/IEmailAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "IEmailAccountPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IEmailAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IEmailAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IEmailAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IEmailAccountPolicy"

.field static final TRANSACTION_addNewAccount:I = 0x1

.field static final TRANSACTION_deleteAccount:I = 0x1f

.field static final TRANSACTION_getAccountDetails:I = 0x1e

.field static final TRANSACTION_getAccountId:I = 0x1d

.field static final TRANSACTION_sendAccountsChangedBroadcast:I = 0x20

.field static final TRANSACTION_setAccountName:I = 0x2

.field static final TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x8

.field static final TRANSACTION_setAsDefaultAccount:I = 0x1c

.field static final TRANSACTION_setEmailAddress:I = 0x3

.field static final TRANSACTION_setInComingProtocol:I = 0xa

.field static final TRANSACTION_setInComingServerAcceptAllCertificates:I = 0xf

.field static final TRANSACTION_setInComingServerAddress:I = 0xb

.field static final TRANSACTION_setInComingServerLogin:I = 0x10

.field static final TRANSACTION_setInComingServerPassword:I = 0x11

.field static final TRANSACTION_setInComingServerPathPrefix:I = 0x12

.field static final TRANSACTION_setInComingServerPort:I = 0xc

.field static final TRANSACTION_setInComingServerSSL:I = 0xd

.field static final TRANSACTION_setInComingServerTLS:I = 0xe

.field static final TRANSACTION_setOutGoingProtocol:I = 0x13

.field static final TRANSACTION_setOutGoingServerAcceptAllCertificates:I = 0x18

.field static final TRANSACTION_setOutGoingServerAddress:I = 0x14

.field static final TRANSACTION_setOutGoingServerLogin:I = 0x19

.field static final TRANSACTION_setOutGoingServerPassword:I = 0x1a

.field static final TRANSACTION_setOutGoingServerPathPrefix:I = 0x1b

.field static final TRANSACTION_setOutGoingServerPort:I = 0x15

.field static final TRANSACTION_setOutGoingServerSSL:I = 0x16

.field static final TRANSACTION_setOutGoingServerTLS:I = 0x17

.field static final TRANSACTION_setPastDaysToSync:I = 0x4

.field static final TRANSACTION_setSenderName:I = 0x6

.field static final TRANSACTION_setSignature:I = 0x7

.field static final TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x9

.field static final TRANSACTION_setSyncInterval:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.enterprise.IEmailAccountPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailAccountPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.app.enterprise.IEmailAccountPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/enterprise/IEmailAccountPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/enterprise/IEmailAccountPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_1
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v9, v4

    .local v9, _arg4:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v13, v4

    .local v13, _arg8:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v14, v4

    .local v14, _arg9:Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, _arg10:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, _arg11:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, _arg12:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move/from16 v18, v4

    .local v18, _arg13:Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move/from16 v19, v4

    .local v19, _arg14:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move/from16 v20, v4

    .local v20, _arg15:Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, _arg16:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .local v22, _arg17:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .local v23, _arg18:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, _arg19:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .local v25, _arg20:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, _arg21:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move/from16 v27, v4

    .local v27, _arg22:Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move/from16 v28, v4

    .local v28, _arg23:Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move/from16 v29, v4

    .local v29, _arg24:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .local v30, _arg25:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .local v31, _arg26:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, _arg27:Ljava/lang/String;
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v32}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->addNewAccount(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v37

    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v9           #_arg4:Z
    .end local v10           #_arg5:Ljava/lang/String;
    .end local v11           #_arg6:Ljava/lang/String;
    .end local v12           #_arg7:Ljava/lang/String;
    .end local v13           #_arg8:Z
    .end local v14           #_arg9:Z
    .end local v15           #_arg10:Ljava/lang/String;
    .end local v16           #_arg11:Ljava/lang/String;
    .end local v17           #_arg12:I
    .end local v18           #_arg13:Z
    .end local v19           #_arg14:Z
    .end local v20           #_arg15:Z
    .end local v21           #_arg16:Ljava/lang/String;
    .end local v22           #_arg17:Ljava/lang/String;
    .end local v23           #_arg18:Ljava/lang/String;
    .end local v24           #_arg19:Ljava/lang/String;
    .end local v25           #_arg20:Ljava/lang/String;
    .end local v26           #_arg21:I
    .end local v27           #_arg22:Z
    .end local v28           #_arg23:Z
    .end local v29           #_arg24:Z
    .end local v30           #_arg25:Ljava/lang/String;
    .end local v31           #_arg26:Ljava/lang/String;
    .end local v32           #_arg27:Ljava/lang/String;
    .end local v37           #_result:J
    :cond_0
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_1

    .restart local v9       #_arg4:Z
    .restart local v10       #_arg5:Ljava/lang/String;
    .restart local v11       #_arg6:Ljava/lang/String;
    .restart local v12       #_arg7:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_2

    .restart local v13       #_arg8:Z
    :cond_2
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_3

    .restart local v14       #_arg9:Z
    .restart local v15       #_arg10:Ljava/lang/String;
    .restart local v16       #_arg11:Ljava/lang/String;
    .restart local v17       #_arg12:I
    :cond_3
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_4

    .restart local v18       #_arg13:Z
    :cond_4
    const/4 v4, 0x0

    move/from16 v19, v4

    goto :goto_5

    .restart local v19       #_arg14:Z
    :cond_5
    const/4 v4, 0x0

    move/from16 v20, v4

    goto :goto_6

    .restart local v20       #_arg15:Z
    .restart local v21       #_arg16:Ljava/lang/String;
    .restart local v22       #_arg17:Ljava/lang/String;
    .restart local v23       #_arg18:Ljava/lang/String;
    .restart local v24       #_arg19:Ljava/lang/String;
    .restart local v25       #_arg20:Ljava/lang/String;
    .restart local v26       #_arg21:I
    :cond_6
    const/4 v4, 0x0

    move/from16 v27, v4

    goto :goto_7

    .restart local v27       #_arg22:Z
    :cond_7
    const/4 v4, 0x0

    move/from16 v28, v4

    goto :goto_8

    .restart local v28       #_arg23:Z
    :cond_8
    const/4 v4, 0x0

    move/from16 v29, v4

    goto :goto_9

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:I
    .end local v8           #_arg3:I
    .end local v9           #_arg4:Z
    .end local v10           #_arg5:Ljava/lang/String;
    .end local v11           #_arg6:Ljava/lang/String;
    .end local v12           #_arg7:Ljava/lang/String;
    .end local v13           #_arg8:Z
    .end local v14           #_arg9:Z
    .end local v15           #_arg10:Ljava/lang/String;
    .end local v16           #_arg11:Ljava/lang/String;
    .end local v17           #_arg12:I
    .end local v18           #_arg13:Z
    .end local v19           #_arg14:Z
    .end local v20           #_arg15:Z
    .end local v21           #_arg16:Ljava/lang/String;
    .end local v22           #_arg17:Ljava/lang/String;
    .end local v23           #_arg18:Ljava/lang/String;
    .end local v24           #_arg19:Ljava/lang/String;
    .end local v25           #_arg20:Ljava/lang/String;
    .end local v26           #_arg21:I
    .end local v27           #_arg22:Z
    .end local v28           #_arg23:Z
    :sswitch_2
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .local v35, _arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setAccountName(Ljava/lang/String;J)Z

    move-result v37

    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_3
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setEmailAddress(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_a

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_4
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setPastDaysToSync(IJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_b

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .end local v5           #_arg0:I
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_5
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSyncInterval(IJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .end local v5           #_arg0:I
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_6
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSenderName(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_d

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_7
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSignature(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_e

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x0

    goto :goto_f

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_8
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    move v5, v4

    .local v5, _arg0:Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setAlwaysVibrateOnEmailNotification(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_10

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_f
    const/4 v4, 0x0

    move v5, v4

    goto :goto_10

    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_10
    const/4 v4, 0x0

    goto :goto_11

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_9
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    move v5, v4

    .restart local v5       #_arg0:Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSilentVibrateOnEmailNotification(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_12

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_11
    const/4 v4, 0x0

    move v5, v4

    goto :goto_12

    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_12
    const/4 v4, 0x0

    goto :goto_13

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_a
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingProtocol(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_13

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_b
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerAddress(Ljava/lang/String;J)J

    move-result-wide v37

    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:J
    :sswitch_c
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerPort(IJ)Z

    move-result v37

    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_14

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v4, 0x0

    goto :goto_15

    .end local v5           #_arg0:I
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_d
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    move v5, v4

    .local v5, _arg0:Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerSSL(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_16

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_15
    const/4 v4, 0x0

    move v5, v4

    goto :goto_16

    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_16
    const/4 v4, 0x0

    goto :goto_17

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_e
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    move v5, v4

    .restart local v5       #_arg0:Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerTLS(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_18

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_17
    const/4 v4, 0x0

    move v5, v4

    goto :goto_18

    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_f
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    move v5, v4

    .restart local v5       #_arg0:Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerAcceptAllCertificates(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_1a

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_19
    const/4 v4, 0x0

    move v5, v4

    goto :goto_1a

    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1b

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_10
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerLogin(Ljava/lang/String;J)J

    move-result-wide v37

    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:J
    :sswitch_11
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerPassword(Ljava/lang/String;J)Z

    move-result v37

    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_1b

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1b
    const/4 v4, 0x0

    goto :goto_1c

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_12
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerPathPrefix(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_1c

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1c
    const/4 v4, 0x0

    goto :goto_1d

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_13
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingProtocol(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_1d

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v4, 0x0

    goto :goto_1e

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_14
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerAddress(Ljava/lang/String;J)J

    move-result-wide v37

    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:J
    :sswitch_15
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerPort(IJ)Z

    move-result v37

    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_1e

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .end local v5           #_arg0:I
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_16
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    move v5, v4

    .local v5, _arg0:Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerSSL(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_20

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_1f
    const/4 v4, 0x0

    move v5, v4

    goto :goto_20

    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_20
    const/4 v4, 0x0

    goto :goto_21

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_17
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    move v5, v4

    .restart local v5       #_arg0:Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerTLS(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_22

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_21
    const/4 v4, 0x0

    move v5, v4

    goto :goto_22

    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_22
    const/4 v4, 0x0

    goto :goto_23

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_18
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    move v5, v4

    .restart local v5       #_arg0:Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerAcceptAllCertificates(ZJ)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_24

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_23
    const/4 v4, 0x0

    move v5, v4

    goto :goto_24

    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_24
    const/4 v4, 0x0

    goto :goto_25

    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_19
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerLogin(Ljava/lang/String;J)J

    move-result-wide v37

    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:J
    :sswitch_1a
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerPassword(Ljava/lang/String;J)Z

    move-result v37

    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_25

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_25
    const/4 v4, 0x0

    goto :goto_26

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_1b
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerPathPrefix(Ljava/lang/String;J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_26

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_26
    const/4 v4, 0x0

    goto :goto_27

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_1c
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .local v33, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setAsDefaultAccount(J)Z

    move-result v37

    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_27

    const/4 v4, 0x1

    :goto_28
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_27
    const/4 v4, 0x0

    goto :goto_28

    .end local v33           #_arg0:J
    .end local v37           #_result:Z
    :sswitch_1d
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v37

    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:Ljava/lang/String;
    .end local v37           #_result:J
    :sswitch_1e
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v37

    .local v37, _result:Landroid/app/enterprise/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_28

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/Account;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .end local v33           #_arg0:J
    .end local v37           #_result:Landroid/app/enterprise/Account;
    :sswitch_1f
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .restart local v33       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->deleteAccount(J)Z

    move-result v37

    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_29

    const/4 v4, 0x1

    :goto_2a
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_29
    const/4 v4, 0x0

    goto :goto_2a

    .end local v33           #_arg0:J
    .end local v37           #_result:Z
    :sswitch_20
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->sendAccountsChangedBroadcast()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
