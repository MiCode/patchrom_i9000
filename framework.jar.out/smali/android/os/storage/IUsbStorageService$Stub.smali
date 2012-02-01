.class public abstract Landroid/os/storage/IUsbStorageService$Stub;
.super Landroid/os/Binder;
.source "IUsbStorageService.java"

# interfaces
.implements Landroid/os/storage/IUsbStorageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IUsbStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IUsbStorageService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IUsbStorageService"

.field static final TRANSACTION_formatVolume:I = 0x5

.field static final TRANSACTION_getShowSafeUnmountNotification:I = 0x9

.field static final TRANSACTION_getVolumeState:I = 0x6

.field static final TRANSACTION_isUsbStorageConnected:I = 0x7

.field static final TRANSACTION_mountVolume:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_setShowSafeUnmountNotification:I = 0xa

.field static final TRANSACTION_unmountVolume:I = 0x4

.field static final TRANSACTION_unmountVolumeAll:I = 0x8

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "IUsbStorageService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IUsbStorageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "IUsbStorageService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IUsbStorageService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/storage/IUsbStorageService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IUsbStorageService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IUsbStorageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v8, "IUsbStorageService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_0

    :sswitch_1
    const-string v8, "IUsbStorageService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IUsbStorageServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageServiceListener;

    move-result-object v1

    .local v1, listener:Landroid/os/storage/IUsbStorageServiceListener;
    invoke-virtual {p0, v1}, Landroid/os/storage/IUsbStorageService$Stub;->registerListener(Landroid/os/storage/IUsbStorageServiceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v8, 0x1

    goto :goto_0

    .end local v1           #listener:Landroid/os/storage/IUsbStorageServiceListener;
    :sswitch_2
    const-string v8, "IUsbStorageService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IUsbStorageServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageServiceListener;

    move-result-object v1

    .restart local v1       #listener:Landroid/os/storage/IUsbStorageServiceListener;
    invoke-virtual {p0, v1}, Landroid/os/storage/IUsbStorageService$Stub;->unregisterListener(Landroid/os/storage/IUsbStorageServiceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v8, 0x1

    goto :goto_0

    .end local v1           #listener:Landroid/os/storage/IUsbStorageServiceListener;
    :sswitch_3
    const-string v8, "IUsbStorageService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, mountPoint:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/storage/IUsbStorageService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v4

    .local v4, resultCode:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v8, 0x1

    goto :goto_0

    .end local v2           #mountPoint:Ljava/lang/String;
    .end local v4           #resultCode:I
    :sswitch_4
    const-string v8, "IUsbStorageService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #mountPoint:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move v0, v8

    .local v0, force:Z
    :goto_1
    invoke-virtual {p0, v2, v0}, Landroid/os/storage/IUsbStorageService$Stub;->unmountVolume(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v8, 0x1

    goto :goto_0

    .end local v0           #force:Z
    :cond_0
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1

    .end local v2           #mountPoint:Ljava/lang/String;
    :sswitch_5
    const-string v8, "IUsbStorageService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    move v0, v8

    .restart local v0       #force:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/storage/IUsbStorageService$Stub;->unmountVolume(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v8, 0x1

    goto :goto_0

    .end local v0           #force:Z
    :cond_1
    const/4 v8, 0x0

    move v0, v8

    goto :goto_2

    :sswitch_6
    const-string v8, "IUsbStorageService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #mountPoint:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/storage/IUsbStorageService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v3

    .local v3, result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v2           #mountPoint:Ljava/lang/String;
    .end local v3           #result:I
    :sswitch_7
    const-string v8, "IUsbStorageService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #mountPoint:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/storage/IUsbStorageService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, state:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v2           #mountPoint:Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    :sswitch_8
    const-string v8, "IUsbStorageService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/storage/IUsbStorageService$Stub;->isUsbStorageConnected()Z

    move-result v3

    .local v3, result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    .end local v3           #result:Z
    :sswitch_9
    const-string v8, "IUsbStorageService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/storage/IUsbStorageService$Stub;->getShowSafeUnmountNotification()Z

    move-result v5

    .local v5, ret:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_3

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    .end local v5           #ret:Z
    :sswitch_a
    const-string v8, "IUsbStorageService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    move v6, v8

    .local v6, set:Z
    :goto_5
    invoke-virtual {p0, v6}, Landroid/os/storage/IUsbStorageService$Stub;->setShowSafeUnmountNotification(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v6           #set:Z
    :cond_4
    const/4 v8, 0x0

    move v6, v8

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_5
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
