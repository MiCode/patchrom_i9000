.class public abstract Lcom/android/internal/telephony/ITelephonyExt$Stub;
.super Landroid/os/Binder;
.source "ITelephonyExt.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyExt"

.field static final TRANSACTION_getActiveCallsCount:I = 0xd

.field static final TRANSACTION_getCallBaseTime:I = 0x11

.field static final TRANSACTION_getCallTime:I = 0x10

.field static final TRANSACTION_getCallerName:I = 0xf

.field static final TRANSACTION_getHoldCallsCount:I = 0xe

.field static final TRANSACTION_getMsisdnavailable:I = 0x3

.field static final TRANSACTION_getMute:I = 0xa

.field static final TRANSACTION_getSimPinRetry:I = 0x4

.field static final TRANSACTION_getSimPukRetry:I = 0x5

.field static final TRANSACTION_getTelephonyFeature:I = 0x6

.field static final TRANSACTION_isConferenceCall:I = 0x14

.field static final TRANSACTION_isFirstCallDialingAndSecondCallActive:I = 0x16

.field static final TRANSACTION_isIdle:I = 0x13

.field static final TRANSACTION_isMultiCall:I = 0x15

.field static final TRANSACTION_isSimFDNEnabled:I = 0x7

.field static final TRANSACTION_setMute:I = 0x9

.field static final TRANSACTION_showPopupCallScreen:I = 0x12

.field static final TRANSACTION_supplyPin2:I = 0x2

.field static final TRANSACTION_supplyPuk:I = 0x1

.field static final TRANSACTION_switchHoldingAndActive:I = 0x8

.field static final TRANSACTION_turnOnBluetooth:I = 0xc

.field static final TRANSACTION_turnOnSpeaker:I = 0xb

.field static final TRANSACTION_updateRAFTproximity:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephonyExt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyExt;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/ITelephonyExt;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "com.android.internal.telephony.ITelephonyExt"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v7

    goto :goto_1

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_2
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->supplyPin2(Ljava/lang/String;)Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v7

    goto :goto_2

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_3
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMsisdnavailable()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v7

    goto :goto_3

    .end local v2           #_result:Z
    :sswitch_4
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPinRetry()I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    .end local v2           #_result:I
    :sswitch_5
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getSimPukRetry()I

    move-result v2

    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    .end local v2           #_result:I
    :sswitch_6
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getTelephonyFeature()Ljava/util/Map;

    move-result-object v2

    .local v2, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:Ljava/util/Map;
    :sswitch_7
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isSimFDNEnabled()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v4, v5

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_3
    move v4, v7

    goto :goto_4

    .end local v2           #_result:Z
    :sswitch_8
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->switchHoldingAndActive()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v5

    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->setMute(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v7

    goto :goto_5

    :sswitch_a
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getMute()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    move v4, v5

    :goto_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_5
    move v4, v7

    goto :goto_6

    .end local v2           #_result:Z
    :sswitch_b
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v0, v5

    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnSpeaker(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v7

    goto :goto_7

    :sswitch_c
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->turnOnBluetooth()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getActiveCallsCount()I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:I
    :sswitch_e
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getHoldCallsCount()I

    move-result v2

    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:I
    :sswitch_f
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallerName()Ljava/lang/String;

    move-result-object v2

    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallTime()J

    move-result-wide v2

    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:J
    :sswitch_11
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->getCallBaseTime()J

    move-result-wide v2

    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:J
    :sswitch_12
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->showPopupCallScreen()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_7

    move v4, v5

    :goto_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_7
    move v4, v7

    goto :goto_8

    .end local v2           #_result:Z
    :sswitch_13
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isIdle()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_8

    move v4, v5

    :goto_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_8
    move v4, v7

    goto :goto_9

    .end local v2           #_result:Z
    :sswitch_14
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isConferenceCall()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_9

    move v4, v5

    :goto_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_9
    move v4, v7

    goto :goto_a

    .end local v2           #_result:Z
    :sswitch_15
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isMultiCall()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_a

    move v4, v5

    :goto_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_a
    move v4, v7

    goto :goto_b

    .end local v2           #_result:Z
    :sswitch_16
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->isFirstCallDialingAndSecondCallActive()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_b

    move v4, v5

    :goto_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_b
    move v4, v7

    goto :goto_c

    .end local v2           #_result:Z
    :sswitch_17
    const-string v4, "com.android.internal.telephony.ITelephonyExt"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->updateRAFTproximity(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
