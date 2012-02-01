.class public abstract Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IIccPhoneBook"

.field static final TRANSACTION_getAdnLikesInfo:I = 0x9

.field static final TRANSACTION_getAdnLikesSimStatusInfo:I = 0xa

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsInEfInit:I = 0x2

.field static final TRANSACTION_getAdnRecordsSize:I = 0x7

.field static final TRANSACTION_getUsimPBCapaInfo:I = 0x8

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x5

.field static final TRANSACTION_updateAdnRecordsInEfByIndexUsingAR:I = 0x6

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x3

.field static final TRANSACTION_updateAdnRecordsInEfBySearchUsingAR:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IIccPhoneBook;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/IIccPhoneBook;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v8

    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :sswitch_2
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEfInit(I)Ljava/util/List;

    move-result-object v8

    .restart local v8       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :sswitch_3
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_4
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    .local v2, _arg1:Lcom/android/internal/telephony/AdnRecord;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .local v3, _arg2:Lcom/android/internal/telephony/AdnRecord;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearchUsingAR(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z

    move-result v7

    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:Lcom/android/internal/telephony/AdnRecord;
    .end local v3           #_arg2:Lcom/android/internal/telephony/AdnRecord;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v7           #_result:Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_3

    .restart local v4       #_arg3:Ljava/lang/String;
    .restart local v7       #_result:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/android/internal/telephony/AdnRecord;
    .end local v3           #_arg2:Lcom/android/internal/telephony/AdnRecord;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_5
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg5:Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_6
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    .local v2, _arg1:Lcom/android/internal/telephony/AdnRecord;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndexUsingAR(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)I

    move-result v7

    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:Lcom/android/internal/telephony/AdnRecord;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v7           #_result:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_5

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/android/internal/telephony/AdnRecord;
    :sswitch_7
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSize(I)[I

    move-result-object v7

    .local v7, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v7           #_result:[I
    :sswitch_8
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    move-result-object v7

    .local v7, _result:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .end local v7           #_result:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :sswitch_9
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnLikesInfo(I)[I

    move-result-object v7

    .local v7, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v7           #_result:[I
    :sswitch_a
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnLikesSimStatusInfo(I)I

    move-result v7

    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
