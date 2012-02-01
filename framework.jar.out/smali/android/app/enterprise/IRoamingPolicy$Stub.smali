.class public abstract Landroid/app/enterprise/IRoamingPolicy$Stub;
.super Landroid/os/Binder;
.source "IRoamingPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IRoamingPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IRoamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IRoamingPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IRoamingPolicy"

.field static final TRANSACTION_isRoamingDataEnabled:I = 0x6

.field static final TRANSACTION_isRoamingPushEnabled:I = 0x4

.field static final TRANSACTION_isRoamingSyncEnabled:I = 0x2

.field static final TRANSACTION_setRoamingData:I = 0x5

.field static final TRANSACTION_setRoamingPush:I = 0x3

.field static final TRANSACTION_setRoamingSync:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.app.enterprise.IRoamingPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/enterprise/IRoamingPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/enterprise/IRoamingPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IRoamingPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "android.app.enterprise.IRoamingPolicy"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v3

    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->setRoamingSync(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->isRoamingSyncEnabled()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1

    move v2, v3

    :goto_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_2

    .end local v1           #_result:Z
    :sswitch_3
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->setRoamingPush(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_2
    move v0, v5

    goto :goto_3

    :sswitch_4
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->isRoamingPushEnabled()Z

    move-result v1

    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3

    move v2, v3

    :goto_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_4

    .end local v1           #_result:Z
    :sswitch_5
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->setRoamingData(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v5

    goto :goto_5

    :sswitch_6
    const-string v2, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->isRoamingDataEnabled()Z

    move-result v1

    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_5

    move v2, v3

    :goto_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    :cond_5
    move v2, v5

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
