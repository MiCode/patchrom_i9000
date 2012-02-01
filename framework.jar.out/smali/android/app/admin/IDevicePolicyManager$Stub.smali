.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_generateRecoveryPassword:I = 0x5a

.field static final TRANSACTION_getActiveAdmins:I = 0x4d

.field static final TRANSACTION_getAllowBluetoothMode:I = 0x2a

.field static final TRANSACTION_getAllowBrowser:I = 0x24

.field static final TRANSACTION_getAllowCamera:I = 0x1a

.field static final TRANSACTION_getAllowDesktopSync:I = 0x42

.field static final TRANSACTION_getAllowHTMLEmail:I = 0x22

.field static final TRANSACTION_getAllowInternetSharing:I = 0x26

.field static final TRANSACTION_getAllowIrDA:I = 0x44

.field static final TRANSACTION_getAllowPOPIMAPEmail:I = 0x20

.field static final TRANSACTION_getAllowSMIMEEncryptionAlgorithmNegotiation:I = 0x3e

.field static final TRANSACTION_getAllowSMIMESoftCerts:I = 0x40

.field static final TRANSACTION_getAllowStorageCard:I = 0x18

.field static final TRANSACTION_getAllowTextMessaging:I = 0x1e

.field static final TRANSACTION_getAllowWifi:I = 0x1c

.field static final TRANSACTION_getAttachmentsEnabled:I = 0x14

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x7

.field static final TRANSACTION_getMaxAttachmentSize:I = 0x16

.field static final TRANSACTION_getMaxCalendarAge:I = 0x2e

.field static final TRANSACTION_getMaxEmailAge:I = 0x30

.field static final TRANSACTION_getMaxEmailBodyTruncSize:I = 0x32

.field static final TRANSACTION_getMaxHtmlEmailBodyTruncSize:I = 0x34

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x9

.field static final TRANSACTION_getMaximumTimeToLock:I = 0xc

.field static final TRANSACTION_getMinPasswordComplexChars:I = 0x2c

.field static final TRANSACTION_getPassword:I = 0x59

.field static final TRANSACTION_getPasswordExpires:I = 0x10

.field static final TRANSACTION_getPasswordHistory:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPasswordRecoverable:I = 0xe

.field static final TRANSACTION_getRemoveWarning:I = 0x4f

.field static final TRANSACTION_getRequireDeviceEncryption:I = 0x46

.field static final TRANSACTION_getRequireEncryptedSMIMEMessages:I = 0x38

.field static final TRANSACTION_getRequireEncryptionSMIMEAlgorithm:I = 0x3c

.field static final TRANSACTION_getRequireManualSyncRoaming:I = 0x28

.field static final TRANSACTION_getRequireSignedSMIMEAlgorithm:I = 0x3a

.field static final TRANSACTION_getRequireSignedSMIMEMessages:I = 0x36

.field static final TRANSACTION_getRequireStorageCardEncryption:I = 0x48

.field static final TRANSACTION_isActivePasswordExpired:I = 0x6

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x5

.field static final TRANSACTION_isAdminActive:I = 0x4c

.field static final TRANSACTION_lockNow:I = 0x49

.field static final TRANSACTION_notifyChanges:I = 0x56

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x4e

.field static final TRANSACTION_reboot:I = 0x58

.field static final TRANSACTION_recoverPassword:I = 0x51

.field static final TRANSACTION_removeActiveAdmin:I = 0x50

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x54

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x55

.field static final TRANSACTION_resetPassword:I = 0xa

.field static final TRANSACTION_setActiveAdmin:I = 0x4b

.field static final TRANSACTION_setActivePasswordState:I = 0x53

.field static final TRANSACTION_setAdminPermissions:I = 0x57

.field static final TRANSACTION_setAllowBluetoothMode:I = 0x29

.field static final TRANSACTION_setAllowBrowser:I = 0x23

.field static final TRANSACTION_setAllowCamera:I = 0x19

.field static final TRANSACTION_setAllowDesktopSync:I = 0x41

.field static final TRANSACTION_setAllowHTMLEmail:I = 0x21

.field static final TRANSACTION_setAllowInternetSharing:I = 0x25

.field static final TRANSACTION_setAllowIrDA:I = 0x43

.field static final TRANSACTION_setAllowPOPIMAPEmail:I = 0x1f

.field static final TRANSACTION_setAllowSMIMEEncryptionAlgorithmNegotiation:I = 0x3d

.field static final TRANSACTION_setAllowSMIMESoftCerts:I = 0x3f

.field static final TRANSACTION_setAllowStorageCard:I = 0x17

.field static final TRANSACTION_setAllowTextMessaging:I = 0x1d

.field static final TRANSACTION_setAllowWifi:I = 0x1b

.field static final TRANSACTION_setAttachmentsEnabled:I = 0x13

.field static final TRANSACTION_setEncryptionPolicyWithEncryptApp:I = 0x5b

.field static final TRANSACTION_setMaxAttachmentSize:I = 0x15

.field static final TRANSACTION_setMaxCalendarAge:I = 0x2d

.field static final TRANSACTION_setMaxEmailAge:I = 0x2f

.field static final TRANSACTION_setMaxEmailBodyTruncSize:I = 0x31

.field static final TRANSACTION_setMaxHtmlEmailBodyTruncSize:I = 0x33

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x8

.field static final TRANSACTION_setMaximumTimeToLock:I = 0xb

.field static final TRANSACTION_setMinPasswordComplexChars:I = 0x2b

.field static final TRANSACTION_setPasswordExpires:I = 0xf

.field static final TRANSACTION_setPasswordHistory:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPasswordRecoverable:I = 0xd

.field static final TRANSACTION_setRecoveryPasswordState:I = 0x52

.field static final TRANSACTION_setRequireDeviceEncryption:I = 0x45

.field static final TRANSACTION_setRequireEncryptedSMIMEMessages:I = 0x37

.field static final TRANSACTION_setRequireEncryptionSMIMEAlgorithm:I = 0x3b

.field static final TRANSACTION_setRequireManualSyncRoaming:I = 0x27

.field static final TRANSACTION_setRequireSignedSMIMEAlgorithm:I = 0x39

.field static final TRANSACTION_setRequireSignedSMIMEMessages:I = 0x35

.field static final TRANSACTION_setRequireStorageCardEncryption:I = 0x47

.field static final TRANSACTION_wipeData:I = 0x4a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v8

    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v8

    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_5
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v8

    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .end local v8           #_result:Z
    :sswitch_6
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordExpired()Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .end local v8           #_result:Z
    :sswitch_7
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts()I

    move-result v8

    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v8           #_result:I
    :sswitch_8
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_9
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_8
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v8

    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_8

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v8

    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v8           #_result:Z
    :sswitch_b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, _arg1:J
    invoke-virtual {p0, v1, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:J
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_a

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v8

    .local v8, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:J
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    move v2, v0

    .local v2, _arg1:Z
    :goto_d
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    move v2, v0

    goto :goto_d

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_e
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v8

    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_e

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_e

    .restart local v8       #_result:Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_f

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpires(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_10

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_10
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v8

    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_10
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_11
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistory(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_11
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_12

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_12
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_13
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v8

    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_12
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_13

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_13
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    move v2, v0

    .local v2, _arg1:Z
    :goto_15
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAttachmentsEnabled(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_13
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_14

    :cond_14
    const/4 v0, 0x0

    move v2, v0

    goto :goto_15

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_14
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_16
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v8

    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_16

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_15
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_16

    .restart local v8       #_result:Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_17

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_15
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxAttachmentSize(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_17
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_18

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_16
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_19
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxAttachmentSize(Landroid/content/ComponentName;)I

    move-result v8

    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_18
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_19

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_17
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    move v2, v0

    .local v2, _arg1:Z
    :goto_1b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowStorageCard(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_19
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1a

    :cond_1a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1b

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_18
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v8

    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1c

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_1b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1c

    .restart local v8       #_result:Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1d

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_1f
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowCamera(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_1d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1e

    :cond_1e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1f

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_20
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_20

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_1f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_20

    .restart local v8       #_result:Z
    :cond_20
    const/4 v0, 0x0

    goto :goto_21

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_1b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_23
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowWifi(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_21
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_22

    :cond_22
    const/4 v0, 0x0

    move v2, v0

    goto :goto_23

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_24
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_24

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_23
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_24

    .restart local v8       #_result:Z
    :cond_24
    const/4 v0, 0x0

    goto :goto_25

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_1d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_27
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_25
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_26

    :cond_26
    const/4 v0, 0x0

    move v2, v0

    goto :goto_27

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1e
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_28
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_28

    const/4 v0, 0x1

    :goto_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_27
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_28

    .restart local v8       #_result:Z
    :cond_28
    const/4 v0, 0x0

    goto :goto_29

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_1f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_2b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_29
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2a

    :cond_2a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2b

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_20
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_2c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_2c

    const/4 v0, 0x1

    :goto_2d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_2b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2c

    .restart local v8       #_result:Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_2d

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_21
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_2f
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowHTMLEmail(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_2d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2e

    :cond_2e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2f

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_22
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_30
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_30

    const/4 v0, 0x1

    :goto_31
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_2f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_30

    .restart local v8       #_result:Z
    :cond_30
    const/4 v0, 0x0

    goto :goto_31

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_23
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_33
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBrowser(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_31
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_32

    :cond_32
    const/4 v0, 0x0

    move v2, v0

    goto :goto_33

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_24
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_34
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_34

    const/4 v0, 0x1

    :goto_35
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_33
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_34

    .restart local v8       #_result:Z
    :cond_34
    const/4 v0, 0x0

    goto :goto_35

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_25
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_37
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_35
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_36

    :cond_36
    const/4 v0, 0x0

    move v2, v0

    goto :goto_37

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_26
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_38
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_38

    const/4 v0, 0x1

    :goto_39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_37
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_38

    .restart local v8       #_result:Z
    :cond_38
    const/4 v0, 0x0

    goto :goto_39

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_27
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_3b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_39
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3a

    :cond_3a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_3b

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_28
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_3c

    const/4 v0, 0x1

    :goto_3d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_3b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3c

    .restart local v8       #_result:Z
    :cond_3c
    const/4 v0, 0x0

    goto :goto_3d

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_29
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_3d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3e

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v8

    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_3e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3f

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_3f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_40

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_41
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v8

    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_40
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_41

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxCalendarAge(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_41
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_42

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2e
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_43
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v8

    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_42
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_43

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxEmailAge(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_43
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_44

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_30
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_45
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v8

    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_44
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_45

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_31
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_45
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_46

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_32
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_47
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v8

    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_46
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_47

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_33
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_47
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_48

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_34
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_49
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v8

    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_48
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_49

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_35
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    move v2, v0

    .local v2, _arg1:Z
    :goto_4b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireSignedSMIMEMessages(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_49
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4a

    :cond_4a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_4b

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_36
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_4c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireSignedSMIMEMessages(Landroid/content/ComponentName;)Z

    move-result v8

    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_4c

    const/4 v0, 0x1

    :goto_4d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_4b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4c

    .restart local v8       #_result:Z
    :cond_4c
    const/4 v0, 0x0

    goto :goto_4d

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_37
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_4f
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_4d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4e

    :cond_4e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_4f

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_38
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_50
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_50

    const/4 v0, 0x1

    :goto_51
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_4f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_50

    .restart local v8       #_result:Z
    :cond_50
    const/4 v0, 0x0

    goto :goto_51

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_39
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_53
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_51
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_52

    :cond_52
    const/4 v0, 0x0

    move v2, v0

    goto :goto_53

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_3a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_54
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_54

    const/4 v0, 0x1

    :goto_55
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_53
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_54

    .restart local v8       #_result:Z
    :cond_54
    const/4 v0, 0x0

    goto :goto_55

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_3b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_57
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_55
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_56

    :cond_56
    const/4 v0, 0x0

    move v2, v0

    goto :goto_57

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_3c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_58
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_58

    const/4 v0, 0x1

    :goto_59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_57
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_58

    .restart local v8       #_result:Z
    :cond_58
    const/4 v0, 0x0

    goto :goto_59

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_3d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_5b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_59
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_5a

    :cond_5a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_5b

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_3e
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_5c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_5c

    const/4 v0, 0x1

    :goto_5d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_5b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_5c

    .restart local v8       #_result:Z
    :cond_5c
    const/4 v0, 0x0

    goto :goto_5d

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_3f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_5f
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowSMIMESoftCerts(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_5d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_5e

    :cond_5e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_5f

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_40
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_60
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowSMIMESoftCerts(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_60

    const/4 v0, 0x1

    :goto_61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_5f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_60

    .restart local v8       #_result:Z
    :cond_60
    const/4 v0, 0x0

    goto :goto_61

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_41
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_61

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_63
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_61
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_62

    :cond_62
    const/4 v0, 0x0

    move v2, v0

    goto :goto_63

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_42
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_64
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_64

    const/4 v0, 0x1

    :goto_65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_63
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_64

    .restart local v8       #_result:Z
    :cond_64
    const/4 v0, 0x0

    goto :goto_65

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_43
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_67
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowIrDA(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_65
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_66

    :cond_66
    const/4 v0, 0x0

    move v2, v0

    goto :goto_67

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_44
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_67

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_68
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowIrDA(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_68

    const/4 v0, 0x1

    :goto_69
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_67
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_68

    .restart local v8       #_result:Z
    :cond_68
    const/4 v0, 0x0

    goto :goto_69

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_45
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_6b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_69
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_6a

    :cond_6a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_6b

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_46
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_6c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_6c

    const/4 v0, 0x1

    :goto_6d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_6b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_6c

    .restart local v8       #_result:Z
    :cond_6c
    const/4 v0, 0x0

    goto :goto_6d

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_47
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v0, 0x1

    move v2, v0

    .restart local v2       #_arg1:Z
    :goto_6f
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_6d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_6e

    :cond_6e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_6f

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_48
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_70
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_70

    const/4 v0, 0x1

    :goto_71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_6f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_70

    .restart local v8       #_result:Z
    :cond_70
    const/4 v0, 0x0

    goto :goto_71

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_49
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:I
    :sswitch_4b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_71

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_72
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_71
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_72

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_4c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_73
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_73

    const/4 v0, 0x1

    :goto_74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_72
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_73

    .restart local v8       #_result:Z
    :cond_73
    const/4 v0, 0x0

    goto :goto_74

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_4d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v10

    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_4e
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v8

    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_74

    const/4 v0, 0x1

    :goto_75
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_74
    const/4 v0, 0x0

    goto :goto_75

    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_4f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_75

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .local v2, _arg1:Landroid/os/RemoteCallback;
    :goto_77
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/os/RemoteCallback;
    :cond_75
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_76

    :cond_76
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_77

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_50
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_78
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_77
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_78

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_51
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->recoverPassword()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_78

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_79

    const/4 v0, 0x1

    move v2, v0

    .local v2, _arg1:Z
    :goto_7a
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_78
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_79

    :cond_79
    const/4 v0, 0x0

    move v2, v0

    goto :goto_7a

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_53
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x1

    move v4, v0

    .local v4, _arg3:Z
    :goto_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7b

    const/4 v0, 0x1

    move v5, v0

    .local v5, _arg4:Z
    :goto_7c
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    :cond_7a
    const/4 v0, 0x0

    move v4, v0

    goto :goto_7b

    .restart local v4       #_arg3:Z
    :cond_7b
    const/4 v0, 0x0

    move v5, v0

    goto :goto_7c

    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Z
    :sswitch_54
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_55
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_56
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    move v2, v0

    .local v2, _arg1:Z
    :goto_7e
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyChanges(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_7c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_7d

    :cond_7d
    const/4 v0, 0x0

    move v2, v0

    goto :goto_7e

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_57
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7e

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_7f
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAdminPermissions(Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_7e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_7f

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_58
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_59
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7f

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_80
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Ljava/lang/String;
    :cond_7f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_80

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_5a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_80

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_81
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->generateRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Ljava/lang/String;
    :cond_80
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_81

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_5b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_81

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, _arg0:Landroid/content/Intent;
    :goto_82
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z

    move-result v8

    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_82

    const/4 v0, 0x1

    :goto_83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/Intent;
    .end local v8           #_result:Z
    :cond_81
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/Intent;
    goto :goto_82

    .restart local v8       #_result:Z
    :cond_82
    const/4 v0, 0x0

    goto :goto_83

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
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
