.class public Landroid/dsm/DeviceSecurityManager;
.super Ljava/lang/Object;
.source "DeviceSecurityManager.java"


# static fields
.field public static MSISDN:Ljava/lang/String; = null

.field public static MTdata:Ljava/lang/String; = null

.field public static SIMmcc:I = 0x0

.field public static SIMmnc:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DSM"

.field public static cellid:Ljava/lang/String;

.field static expired:Z

.field static isGpsValid:Z

.field static isNonGpsSIMValid:Z

.field static isNonGpsValid:Z

.field public static lac:Ljava/lang/String;

.field public static mAccuracy:D

.field public static mAltitude:D

.field public static mBearing:D

.field public static mLatitude:D

.field public static mLongitude:D

.field public static mSpeed:D

.field public static mcc:I

.field public static mnc:I

.field static timerrun:Z


# instance fields
.field private final DELAY_BEFORE_PHONERESET:J

.field private mNonExistContentHandler:Landroid/os/Handler;

.field private service:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->isGpsValid:Z

    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->isNonGpsSIMValid:Z

    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mLatitude:D

    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mLongitude:D

    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mAltitude:D

    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mBearing:D

    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mSpeed:D

    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mAccuracy:D

    sput v1, Landroid/dsm/DeviceSecurityManager;->mcc:I

    sput v1, Landroid/dsm/DeviceSecurityManager;->mnc:I

    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->expired:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/dsm/DeviceSecurityManager;->timerrun:Z

    sput v1, Landroid/dsm/DeviceSecurityManager;->SIMmcc:I

    sput v1, Landroid/dsm/DeviceSecurityManager;->SIMmnc:I

    const-string v0, " "

    sput-object v0, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/dsm/DeviceSecurityManager;->mNonExistContentHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Landroid/dsm/DeviceSecurityManager;->DELAY_BEFORE_PHONERESET:J

    return-void
.end method


# virtual methods
.method public GetGPSLocation()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "DSM"

    const/4 v0, 0x0

    .local v0, gpsdata:[D
    invoke-static {}, Landroid/dsm/DSMService;->DSMgetGPSData()[D

    move-result-object v0

    const-string v1, "DSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpsdata is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    sput-boolean v3, Landroid/dsm/DeviceSecurityManager;->isGpsValid:Z

    move v1, v3

    :goto_0
    return v1

    :cond_0
    sput-boolean v4, Landroid/dsm/DeviceSecurityManager;->isGpsValid:Z

    aget-wide v1, v0, v3

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mLatitude:D

    aget-wide v1, v0, v4

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mLongitude:D

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mAltitude:D

    const/4 v1, 0x3

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mBearing:D

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mSpeed:D

    const/4 v1, 0x5

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mAccuracy:D

    const-string v1, "DSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latitud is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Longitudude is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Altitude is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mAltitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Bearing is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mBearing:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Speed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mSpeed:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Accuracy is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mAccuracy:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0
.end method

.method public GetNonGPSLocation(Landroid/content/Context;)Z
    .locals 8
    .parameter "pcontext"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "DSM"

    move-object v0, p1

    .local v0, mcontext:Landroid/content/Context;
    sput-boolean v5, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    const/4 v1, 0x0

    .local v1, nonGPSdata:[I
    invoke-static {v0}, Landroid/dsm/DSMService;->DSMgetnonGPSData(Landroid/content/Context;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    sput-boolean v6, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    aget v2, v1, v5

    sput v2, Landroid/dsm/DeviceSecurityManager;->mcc:I

    aget v2, v1, v6

    sput v2, Landroid/dsm/DeviceSecurityManager;->mnc:I

    const-string v2, "%04x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x2

    aget v4, v1, v4

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/dsm/DeviceSecurityManager;->lac:Ljava/lang/String;

    const-string v2, "%08x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x3

    aget v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/dsm/DeviceSecurityManager;->cellid:Ljava/lang/String;

    const-string v2, "DSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/dsm/DeviceSecurityManager;->mcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/dsm/DeviceSecurityManager;->mnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lac is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/dsm/DeviceSecurityManager;->lac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cellid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/dsm/DeviceSecurityManager;->cellid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    :goto_0
    return v2

    :cond_0
    sput-boolean v5, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    const-string v2, "DSM"

    const-string v2, "nonGPSdata is null"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    goto :goto_0
.end method

.method public GetNonGpsSIMLoc(Landroid/content/Context;)Z
    .locals 14
    .parameter "pcontext"

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    const-string v13, "number"

    const-string v12, "DSM"

    move-object v7, p1

    .local v7, mcontext:Landroid/content/Context;
    sput-boolean v4, Landroid/dsm/DeviceSecurityManager;->isNonGpsSIMValid:Z

    const/4 v8, 0x0

    .local v8, nonGpsSIMdata:[I
    invoke-static {v7}, Landroid/dsm/DSMService;->DSMgetNonGpsSIMData(Landroid/content/Context;)[I

    move-result-object v8

    if-eqz v8, :cond_1

    sput-boolean v11, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    aget v0, v8, v4

    sput v0, Landroid/dsm/DeviceSecurityManager;->SIMmcc:I

    aget v0, v8, v11

    sput v0, Landroid/dsm/DeviceSecurityManager;->SIMmnc:I

    const-string v0, "content://icc/msisdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, CONTENT_URI:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v4

    const-string v0, "number"

    aput-object v13, v2, v11

    .local v2, PROJECTION:[Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "number"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .local v10, numberColumn:I
    const-string v9, ""

    .local v9, number:Ljava/lang/String;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "TestDSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v9, Landroid/dsm/DeviceSecurityManager;->MSISDN:Ljava/lang/String;

    .end local v9           #number:Ljava/lang/String;
    .end local v10           #numberColumn:I
    :cond_0
    const-string v0, "DSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMDATA; SIMmcc is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Landroid/dsm/DeviceSecurityManager;->SIMmcc:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " SIMmnc is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Landroid/dsm/DeviceSecurityManager;->SIMmnc:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " MSISDN"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/dsm/DeviceSecurityManager;->MSISDN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .end local v1           #CONTENT_URI:Landroid/net/Uri;
    .end local v2           #PROJECTION:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return v0

    :cond_1
    sput-boolean v4, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    const-string v0, "DSM"

    const-string v0, "nonGPSdata is null"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0
.end method

.method public PhoneLock(Landroid/content/Context;)V
    .locals 4
    .parameter "pcontext"

    .prologue
    const-string v2, "DSM"

    const-string v3, "Lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .local v0, mcontext:Landroid/content/Context;
    new-instance v1, Lcom/android/internal/util/NVStore;

    invoke-direct {v1}, Lcom/android/internal/util/NVStore;-><init>()V

    .local v1, mts:Lcom/android/internal/util/NVStore;
    const-string v2, "1"

    sget-object v3, Lcom/android/internal/util/NVStore$datatype;->PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.MT.PHLOCK_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public StartGPSTracking(Landroid/content/Context;)V
    .locals 1
    .parameter "pcontext"

    .prologue
    move-object v0, p1

    .local v0, mcontext:Landroid/content/Context;
    invoke-static {v0}, Landroid/dsm/DSMService;->DSMstartGPSTracking(Landroid/content/Context;)V

    return-void
.end method

.method public StopGpsTracking(Landroid/content/Context;)V
    .locals 1
    .parameter "pcontext"

    .prologue
    move-object v0, p1

    .local v0, mcontext:Landroid/content/Context;
    invoke-static {v0}, Landroid/dsm/DSMService;->DSMremoveListener(Landroid/content/Context;)V

    return-void
.end method

.method public Wipeout(Landroid/content/Context;)V
    .locals 5
    .parameter "pcontext"

    .prologue
    const-string v4, "DSM"

    move-object v1, p1

    .local v1, mcontext:Landroid/content/Context;
    const-string v3, "DSM"

    const-string v3, "wipeout?"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/util/NVStore;

    invoke-direct {v2}, Lcom/android/internal/util/NVStore;-><init>()V

    .local v2, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    const-string v3, "DSM"

    sget-object v3, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.DSM.wipeout"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v3, "MTDATA"

    sget-object v4, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public isMobileTrackerEnabled()Z
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    return v1
.end method

.method public isPhoneLockEnabled()Z
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
