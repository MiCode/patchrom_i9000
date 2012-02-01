.class public abstract Landroid/os/storage/IMountCallBackListener$Stub;
.super Landroid/os/Binder;
.source "IMountCallBackListener.java"

# interfaces
.implements Landroid/os/storage/IMountCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountCallBackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountCallBackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountCallBackListener"

.field static final TRANSACTION_onBeforeActionMassStorage:I = 0x1

.field static final TRANSACTION_onReleasedMassStorage:I = 0x2

.field static final TRANSACTION_onStorageAskPermission:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "IMountCallBackListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountCallBackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountCallBackListener;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "IMountCallBackListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountCallBackListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/storage/IMountCallBackListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IMountCallBackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IMountCallBackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    const-string v5, "IMountCallBackListener"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "IMountCallBackListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "IMountCallBackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, path:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, state:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/storage/IMountCallBackListener$Stub;->onStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto :goto_0

    .end local v0           #path:Ljava/lang/String;
    .end local v1           #result:I
    .end local v2           #state:Ljava/lang/String;
    :sswitch_2
    const-string v3, "IMountCallBackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #path:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/storage/IMountCallBackListener$Stub;->onBeforeActionMassStorage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto :goto_0

    .end local v0           #path:Ljava/lang/String;
    :sswitch_3
    const-string v3, "IMountCallBackListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #path:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/storage/IMountCallBackListener$Stub;->onReleasedMassStorage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
