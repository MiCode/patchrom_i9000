.class Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkPolicy.java"

# interfaces
.implements Landroid/app/enterprise/INetworkPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/INetworkPolicy$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addNewAp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    .locals 9
    .parameter "name"
    .parameter "apn"
    .parameter "mcc"
    .parameter "mnc"
    .parameter "user"
    .parameter "server"
    .parameter "password"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "mmsc"
    .parameter "apType"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .local v3, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v6, "android.app.enterprise.INetworkPolicy"

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, v2

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, v2

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move/from16 v1, p14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, p0, Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v6, v7, v2, v3, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .local v4, _result:J
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-wide v4

    .end local v4           #_result:J
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v6
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteAp(J)Z
    .locals 7
    .parameter "apId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.enterprise.INetworkPolicy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v3, p0, Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v2, v3

    .local v2, _result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2           #_result:Z
    :cond_0
    move v2, v6

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "android.app.enterprise.INetworkPolicy"

    return-object v0
.end method

.method public setApSettings(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    .locals 9
    .parameter "apId"
    .parameter "name"
    .parameter "apn"
    .parameter "mcc"
    .parameter "mnc"
    .parameter "user"
    .parameter "server"
    .parameter "password"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "mmsc"
    .parameter "apType"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .local v3, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v6, "android.app.enterprise.INetworkPolicy"

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, v2

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move/from16 v1, p13

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, v2

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move-object/from16 v1, p15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, v2

    move/from16 v1, p16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, p0, Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-interface {v6, v7, v2, v3, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .local v4, _result:J
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-wide v4

    .end local v4           #_result:J
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v6
.end method

.method public setpreferredAp(J)Z
    .locals 7
    .parameter "apId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.enterprise.INetworkPolicy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v3, p0, Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v2, v3

    .local v2, _result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2           #_result:Z
    :cond_0
    move v2, v6

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
