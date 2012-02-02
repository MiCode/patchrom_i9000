.class Lcom/android/server/StorageFeature;
.super Ljava/lang/Object;
.source "MountService.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final INSTALLED_FIRST_DISK:Z = false

#the value of this static final field might be set in the static constructor
.field public static final INSTALLED_SECOND_DISK:Z = false

#the value of this static final field might be set in the static constructor
.field public static final INSTALLED_USBHOST_DISK:Z = false

.field public static final STORAGE_DO_ACTION:Z = true

.field public static final STORAGE_ENCRYPTION:Z = true

.field public static final STORAGE_IT_POLICY:Z = true

.field public static final STORAGE_MUTIPLEX_PACKAGE_INSTALL:Z = false

.field public static final STORAGE_NOTIFICATION_BAR:Z = true

.field public static final STORAGE_NOTIFICATION_SOUND:Z

.field public static STORAGE_WAKE_LOCK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/os/Environment;->isExternalStorageFirstInsalled()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/StorageFeature;->INSTALLED_FIRST_DISK:Z

    .line 94
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    .line 95
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/StorageFeature;->INSTALLED_USBHOST_DISK:Z

    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/StorageFeature;->STORAGE_WAKE_LOCK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method
