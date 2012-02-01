.class public Landroid/dsm/DSMService;
.super Ljava/lang/Object;
.source "DSMService.java"


# static fields
.field static GPSLocationListener:Landroid/location/LocationListener; = null

.field static Gloc:Landroid/location/Location; = null

.field static LGloc:Landroid/location/Location; = null

.field static LNloc:Landroid/location/Location; = null

.field static NGPSLocationListener:Landroid/location/LocationListener; = null

.field static Nloc:Landroid/location/Location; = null

.field private static final TAG:Ljava/lang/String; = "DSMSVC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/dsm/DSMService$1;

    invoke-direct {v0}, Landroid/dsm/DSMService$1;-><init>()V

    sput-object v0, Landroid/dsm/DSMService;->GPSLocationListener:Landroid/location/LocationListener;

    new-instance v0, Landroid/dsm/DSMService$2;

    invoke-direct {v0}, Landroid/dsm/DSMService$2;-><init>()V

    sput-object v0, Landroid/dsm/DSMService;->NGPSLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DSMgetGPSData()[D
    .locals 1

    .prologue
    sget-object v0, Landroid/dsm/DSMService;->Nloc:Landroid/location/Location;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/dsm/DSMService;->Nloc:Landroid/location/Location;

    invoke-static {v0}, Landroid/dsm/DSMService;->DSMgetLastGPSData(Landroid/location/Location;)[D

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/dsm/DSMService;->Gloc:Landroid/location/Location;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/dsm/DSMService;->Gloc:Landroid/location/Location;

    invoke-static {v0}, Landroid/dsm/DSMService;->DSMgetLastGPSData(Landroid/location/Location;)[D

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static DSMgetLastGPSData(Landroid/location/Location;)[D
    .locals 4
    .parameter "location"

    .prologue
    const/4 v1, 0x6

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    .local v0, gpsdata:[D
    const-string v1, "DSMSVC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DSMgetLastGPSData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v0, v1

    return-object v0

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static DSMgetNonGpsSIMData(Landroid/content/Context;)[I
    .locals 9
    .parameter "mcontext"

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    const-string v8, "DSMSVC"

    const/4 v5, 0x2

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .local v0, DSMnonGpsSIMData:[I
    const/4 v2, 0x0

    .local v2, mcc:I
    const/4 v3, 0x0

    .local v3, mnc:I
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .local v4, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .local v1, SimOperator:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "DSMSVC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mcc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mnc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v2, v0, v7

    const/4 v5, 0x1

    aput v3, v0, v5

    move-object v5, v0

    :goto_0
    return-object v5

    :cond_0
    const-string v5, "DSMSVC"

    const-string v5, "Error getting cell location info from SIM."

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static DSMgetnonGPSData(Landroid/content/Context;)[I
    .locals 15
    .parameter "pcontext"

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x1

    const-string v10, "DSMSVC"

    move-object v5, p0

    .local v5, mcontext:Landroid/content/Context;
    const/4 v8, 0x4

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    .local v0, DSMnonGpsData:[I
    const/4 v4, 0x0

    .local v4, mcc:I
    const/4 v6, 0x0

    .local v6, mnc:I
    const/4 v3, 0x0

    .local v3, lac:I
    const/4 v1, 0x0

    .local v1, cellid:I
    const-string v8, "phone"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .local v7, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    if-ne v8, v11, :cond_2

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .local v2, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v2, :cond_1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    if-ne v8, v11, :cond_1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "DSMSVC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mnc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    const-string v8, "DSMSVC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Lac = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cellid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v4, v0, v13

    aput v6, v0, v11

    aput v3, v0, v14

    aput v1, v0, v12

    move-object v8, v0

    .end local v2           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :goto_0
    return-object v8

    .restart local v2       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_1
    const-string v8, "DSMSVC"

    const-string v8, "Error getting cell location info."

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_0

    .end local v2           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    if-ne v8, v14, :cond_3

    const-string v8, "DSMSVC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CDMA not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const-string v8, "DSMSVC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CDMA not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static DSMremoveListener(Landroid/content/Context;)V
    .locals 2
    .parameter "pcontext"

    .prologue
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .local v0, lm:Landroid/location/LocationManager;
    sget-object v1, Landroid/dsm/DSMService;->GPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sget-object v1, Landroid/dsm/DSMService;->NGPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public static DSMstartGPSTracking(Landroid/content/Context;)V
    .locals 12
    .parameter "pcontext"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "network"

    const-string v6, "gps"

    const-string v11, "DSMSVC"

    const-string v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .local v0, lm:Landroid/location/LocationManager;
    const-string v2, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v1, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    const-string v2, "DSMSVC"

    const-string v2, "enable the network provider"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "gps"

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    const-string v2, "DSMSVC"

    const-string v2, "enable the GPS_PROVIDER"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "network"

    const-wide/16 v2, 0x7d0

    sget-object v5, Landroid/dsm/DSMService;->NGPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v2, "DSMSVC"

    const-string v2, "Network GPS listener is starting"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "gps"

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "gps"

    const-wide/16 v7, 0x7d0

    sget-object v10, Landroid/dsm/DSMService;->GPSLocationListener:Landroid/location/LocationListener;

    move-object v5, v0

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v2, "DSMSVC"

    const-string v2, "GPS listener is starting"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "gps"

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "DSMSVC"

    const-string v1, "All Providers are disabled "

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static deleteAll(Landroid/content/Context;)Z
    .locals 2
    .parameter "mContext"

    .prologue
    move-object v0, p0

    .local v0, pcontext:Landroid/content/Context;
    invoke-static {v0}, Landroid/dsm/DSMService;->deleteAllContacts(Landroid/content/Context;)Z

    invoke-static {v0}, Landroid/dsm/DSMService;->deleteAllSimContacts(Landroid/content/Context;)Z

    invoke-static {v0}, Landroid/dsm/DSMService;->deleteAllCallLogs(Landroid/content/Context;)Z

    invoke-static {v0}, Landroid/dsm/DSMService;->deleteAllMessage(Landroid/content/Context;)Z

    invoke-static {v0}, Landroid/dsm/DSMService;->deleteFiles(Landroid/content/Context;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public static deleteAllCallLogs(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteAllChildren(Ljava/io/File;)V
    .locals 8
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, children:[Ljava/io/File;
    if-eqz v2, :cond_0

    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, child:Ljava/io/File;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Landroid/dsm/DSMService;->deleteAllChildren(Ljava/io/File;)V

    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v5, v6

    .local v5, secExp:Ljava/lang/SecurityException;
    const-string v6, "MobileTracker - UserDataGPS"

    const-string v7, "Aborting: SecurityException while deleting the SDCard file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static deleteAllContacts(Landroid/content/Context;)Z
    .locals 5
    .parameter "mContext"

    .prologue
    const-string v2, "DSMSVC"

    const-string v1, "DSMSVC"

    const-string v1, "deleteAllContacts "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "DSMSVC"

    const-string v2, "calling delete "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .local v0, ret:I
    const-string v1, "DSMSVC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #ret:I
    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deleteAllMessage(Landroid/content/Context;)Z
    .locals 7
    .parameter "mContext"

    .prologue
    const/4 v6, 0x1

    const-string v3, "content://sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, uriSms:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "content://mms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uriMms:Landroid/net/Uri;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v6

    .end local v1           #uriMms:Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #uriMms:Landroid/net/Uri;
    :catch_1
    move-exception v3

    move-object v0, v3

    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public static deleteAllSimContacts(Landroid/content/Context;)Z
    .locals 1
    .parameter "mContext"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static deleteAudioFiles(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .local v11, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .end local v11           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .local v9, fileToDelete:Ljava/io/File;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #fileToDelete:Ljava/io/File;
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    :cond_3
    invoke-static {p0}, Landroid/dsm/DSMService;->deleteInternalAudioFiles(Landroid/content/Context;)Z

    return v12

    .restart local v6       #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .restart local v7       #cur:Landroid/database/Cursor;
    .restart local v8       #fileName:[Ljava/lang/String;
    .restart local v10       #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static deleteFiles(Landroid/content/Context;)Z
    .locals 3
    .parameter "mContext"

    .prologue
    invoke-static {p0}, Landroid/dsm/DSMService;->deleteImageFiles(Landroid/content/Context;)Z

    invoke-static {p0}, Landroid/dsm/DSMService;->deleteAudioFiles(Landroid/content/Context;)Z

    invoke-static {p0}, Landroid/dsm/DSMService;->deleteVideoFiles(Landroid/content/Context;)Z

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/dsm/DSMService;->deleteAllChildren(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, secExp:Ljava/lang/SecurityException;
    const-string v1, "DSMSVC"

    const-string v2, "Aborting: SecurityException while deleting the SDCard files"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteImageFiles(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .local v10, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .end local v10           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    aget-object v1, v8, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    :cond_3
    invoke-static {p0}, Landroid/dsm/DSMService;->deleteInternalImageFiles(Landroid/content/Context;)Z

    return v11

    .restart local v6       #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .restart local v7       #cur:Landroid/database/Cursor;
    .restart local v8       #fileName:[Ljava/lang/String;
    .restart local v9       #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static deleteInternalAudioFiles(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .local v11, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .end local v11           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .local v9, fileToDelete:Ljava/io/File;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #fileToDelete:Ljava/io/File;
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    :cond_3
    return v12

    .restart local v6       #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .restart local v7       #cur:Landroid/database/Cursor;
    .restart local v8       #fileName:[Ljava/lang/String;
    .restart local v10       #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static deleteInternalImageFiles(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .local v10, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .end local v10           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    aget-object v1, v8, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    :cond_3
    return v11

    .restart local v6       #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .restart local v7       #cur:Landroid/database/Cursor;
    .restart local v8       #fileName:[Ljava/lang/String;
    .restart local v9       #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static deleteInternalVideoFiles(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .local v11, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .end local v11           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .local v9, fileToDelete:Ljava/io/File;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #fileToDelete:Ljava/io/File;
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    :cond_3
    return v12

    .restart local v6       #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .restart local v7       #cur:Landroid/database/Cursor;
    .restart local v8       #fileName:[Ljava/lang/String;
    .restart local v10       #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static deleteVideoFiles(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .local v11, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .end local v11           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .local v9, fileToDelete:Ljava/io/File;
    goto :goto_0

    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #fileToDelete:Ljava/io/File;
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    :cond_3
    invoke-static {p0}, Landroid/dsm/DSMService;->deleteInternalVideoFiles(Landroid/content/Context;)Z

    return v12

    .restart local v6       #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .restart local v7       #cur:Landroid/database/Cursor;
    .restart local v8       #fileName:[Ljava/lang/String;
    .restart local v10       #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
