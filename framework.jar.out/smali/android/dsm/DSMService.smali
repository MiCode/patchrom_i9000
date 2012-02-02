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
    .line 699
    new-instance v0, Landroid/dsm/DSMService$1;

    invoke-direct {v0}, Landroid/dsm/DSMService$1;-><init>()V

    sput-object v0, Landroid/dsm/DSMService;->GPSLocationListener:Landroid/location/LocationListener;

    .line 723
    new-instance v0, Landroid/dsm/DSMService$2;

    invoke-direct {v0}, Landroid/dsm/DSMService$2;-><init>()V

    sput-object v0, Landroid/dsm/DSMService;->NGPSLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DSMgetGPSData()[D
    .locals 1

    .prologue
    .line 640
    sget-object v0, Landroid/dsm/DSMService;->Nloc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 641
    sget-object v0, Landroid/dsm/DSMService;->Nloc:Landroid/location/Location;

    invoke-static {v0}, Landroid/dsm/DSMService;->DSMgetLastGPSData(Landroid/location/Location;)[D

    move-result-object v0

    .line 644
    :goto_0
    return-object v0

    .line 642
    :cond_0
    sget-object v0, Landroid/dsm/DSMService;->Gloc:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 643
    sget-object v0, Landroid/dsm/DSMService;->Gloc:Landroid/location/Location;

    invoke-static {v0}, Landroid/dsm/DSMService;->DSMgetLastGPSData(Landroid/location/Location;)[D

    move-result-object v0

    goto :goto_0

    .line 644
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static DSMgetLastGPSData(Landroid/location/Location;)[D
    .locals 4
    .parameter "location"

    .prologue
    .line 648
    const/4 v1, 0x6

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    .line 649
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

    .line 651
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 652
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 653
    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 654
    const/4 v1, 0x3

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v0, v1

    .line 655
    const/4 v1, 0x4

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v0, v1

    .line 656
    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v0, v1

    .line 657
    return-object v0

    .line 648
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

    .line 618
    const/4 v5, 0x2

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 619
    .local v0, DSMnonGpsSIMData:[I
    const/4 v2, 0x0

    .line 620
    .local v2, mcc:I
    const/4 v3, 0x0

    .line 622
    .local v3, mnc:I
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 623
    .local v4, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, SimOperator:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 625
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 626
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 627
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

    .line 628
    aput v2, v0, v7

    .line 629
    const/4 v5, 0x1

    aput v3, v0, v5

    move-object v5, v0

    .line 634
    :goto_0
    return-object v5

    .line 633
    :cond_0
    const-string v5, "DSMSVC"

    const-string v5, "Error getting cell location info from SIM."

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v5, 0x0

    goto :goto_0

    .line 618
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

    .line 561
    move-object v5, p0

    .line 563
    .local v5, mcontext:Landroid/content/Context;
    const/4 v8, 0x4

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    .line 564
    .local v0, DSMnonGpsData:[I
    const/4 v4, 0x0

    .line 565
    .local v4, mcc:I
    const/4 v6, 0x0

    .line 566
    .local v6, mnc:I
    const/4 v3, 0x0

    .line 567
    .local v3, lac:I
    const/4 v1, 0x0

    .line 568
    .local v1, cellid:I
    const-string/jumbo v8, "phone"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 569
    .local v7, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 570
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 571
    .local v2, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v2, :cond_1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    if-ne v8, v11, :cond_1

    .line 573
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 574
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 575
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 577
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

    .line 580
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .line 581
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 582
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

    .line 583
    aput v4, v0, v13

    .line 584
    aput v6, v0, v11

    .line 585
    aput v3, v0, v14

    .line 586
    aput v1, v0, v12

    move-object v8, v0

    .line 614
    .end local v2           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :goto_0
    return-object v8

    .line 590
    .restart local v2       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_1
    const-string v8, "DSMSVC"

    const-string v8, "Error getting cell location info."

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v8, 0x0

    goto :goto_0

    .line 594
    .end local v2           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    if-ne v8, v14, :cond_3

    .line 610
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

    .line 614
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 613
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

    .line 563
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
    .line 749
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 750
    .local v0, lm:Landroid/location/LocationManager;
    sget-object v1, Landroid/dsm/DSMService;->GPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 751
    sget-object v1, Landroid/dsm/DSMService;->NGPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 752
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

    .line 672
    const-string v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 674
    .local v0, lm:Landroid/location/LocationManager;
    const-string v2, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v1, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 677
    const-string v2, "DSMSVC"

    const-string v2, "enable the network provider"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    const-string v2, "gps"

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 680
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 682
    const-string v2, "DSMSVC"

    const-string v2, "enable the GPS_PROVIDER"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_1
    const-string v2, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 687
    const-string v2, "network"

    const-wide/16 v2, 0x7d0

    sget-object v5, Landroid/dsm/DSMService;->NGPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 688
    const-string v2, "DSMSVC"

    const-string v2, "Network GPS listener is starting"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_2
    const-string v2, "gps"

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 691
    const-string v2, "gps"

    const-wide/16 v7, 0x7d0

    sget-object v10, Landroid/dsm/DSMService;->GPSLocationListener:Landroid/location/LocationListener;

    move-object v5, v0

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 692
    const-string v2, "DSMSVC"

    const-string v2, "GPS listener is starting"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_3
    const-string v2, "gps"

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 695
    const-string v1, "DSMSVC"

    const-string v1, "All Providers are disabled "

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_4
    return-void
.end method

.method public static deleteAll(Landroid/content/Context;)Z
    .locals 2
    .parameter "mContext"

    .prologue
    .line 34
    move-object v0, p0

    .line 35
    .local v0, pcontext:Landroid/content/Context;
    invoke-static {v0}, Landroid/dsm/DSMService;->deleteAllContacts(Landroid/content/Context;)Z

    .line 36
    invoke-static {v0}, Landroid/dsm/DSMService;->deleteAllSimContacts(Landroid/content/Context;)Z

    .line 37
    invoke-static {v0}, Landroid/dsm/DSMService;->deleteAllCallLogs(Landroid/content/Context;)Z

    .line 38
    invoke-static {v0}, Landroid/dsm/DSMService;->deleteAllMessage(Landroid/content/Context;)Z

    .line 39
    invoke-static {v0}, Landroid/dsm/DSMService;->deleteFiles(Landroid/content/Context;)Z

    .line 40
    const/4 v1, 0x1

    return v1
.end method

.method public static deleteAllCallLogs(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 51
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
    .line 533
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 559
    :cond_0
    return-void

    .line 536
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 537
    .local v2, children:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 540
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 541
    .local v1, child:Ljava/io/File;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 542
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 543
    invoke-static {v1}, Landroid/dsm/DSMService;->deleteAllChildren(Ljava/io/File;)V

    .line 548
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3

    .line 549
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 552
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

    .line 61
    const-string v1, "DSMSVC"

    const-string v1, "deleteAllContacts "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    const-string v1, "DSMSVC"

    const-string v2, "calling delete "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 68
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

    .line 75
    .end local v0           #ret:I
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 71
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deleteAllMessage(Landroid/content/Context;)Z
    .locals 7
    .parameter "mContext"

    .prologue
    const/4 v6, 0x1

    .line 83
    const-string v3, "content://sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 86
    .local v2, uriSms:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    const-string v3, "content://mms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 95
    .local v1, uriMms:Landroid/net/Uri;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :goto_1
    return v6

    .line 88
    .end local v1           #uriMms:Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 89
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 97
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #uriMms:Landroid/net/Uri;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 98
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
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public static deleteAudioFiles(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    .line 246
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

    .line 251
    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 252
    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
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

    .line 264
    .local v11, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    .end local v11           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 271
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

    .line 272
    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 273
    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 279
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

    .line 293
    :goto_1
    :try_start_2
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 295
    .local v9, fileToDelete:Ljava/io/File;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0

    .line 306
    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #fileToDelete:Ljava/io/File;
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 311
    :cond_3
    invoke-static {p0}, Landroid/dsm/DSMService;->deleteInternalAudioFiles(Landroid/content/Context;)Z

    .line 313
    return v12

    .line 289
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
    .line 105
    invoke-static {p0}, Landroid/dsm/DSMService;->deleteImageFiles(Landroid/content/Context;)Z

    .line 106
    invoke-static {p0}, Landroid/dsm/DSMService;->deleteAudioFiles(Landroid/content/Context;)Z

    .line 107
    invoke-static {p0}, Landroid/dsm/DSMService;->deleteVideoFiles(Landroid/content/Context;)Z

    .line 109
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/dsm/DSMService;->deleteAllChildren(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 110
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 111
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

    .line 119
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

    .line 124
    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 125
    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
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

    .line 137
    .local v10, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    .end local v10           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 143
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

    .line 144
    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 145
    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 150
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

    .line 164
    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    aget-object v1, v8, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 171
    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 176
    :cond_3
    invoke-static {p0}, Landroid/dsm/DSMService;->deleteInternalImageFiles(Landroid/content/Context;)Z

    .line 178
    return v11

    .line 160
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

    .line 319
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

    .line 324
    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 325
    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
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

    .line 337
    .local v11, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    .end local v11           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 344
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

    .line 345
    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 346
    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 352
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

    .line 366
    :goto_1
    :try_start_2
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 368
    .local v9, fileToDelete:Ljava/io/File;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    goto :goto_0

    .line 380
    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #fileToDelete:Ljava/io/File;
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 385
    :cond_3
    return v12

    .line 362
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

    .line 184
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

    .line 189
    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 190
    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
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

    .line 202
    .local v10, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    .end local v10           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 208
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

    .line 209
    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 210
    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 215
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

    .line 229
    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    aget-object v1, v8, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 236
    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 241
    :cond_3
    return v11

    .line 225
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

    .line 460
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

    .line 465
    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 466
    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
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

    .line 478
    .local v11, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    .end local v11           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 484
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

    .line 485
    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 486
    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 491
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

    .line 505
    :goto_1
    :try_start_2
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 507
    .local v9, fileToDelete:Ljava/io/File;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    goto :goto_0

    .line 516
    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #fileToDelete:Ljava/io/File;
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 521
    :cond_3
    return v12

    .line 501
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

    .line 392
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

    .line 397
    .local v7, cur:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 398
    .local v6, contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
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

    .line 410
    .local v11, rowData:[Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    .end local v11           #rowData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 416
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

    .line 417
    .local v8, fileName:[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 418
    const/4 v0, 0x1

    aget-object v0, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 423
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

    .line 437
    :goto_1
    :try_start_2
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 441
    .local v9, fileToDelete:Ljava/io/File;
    goto :goto_0

    .line 448
    .end local v6           #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #fileName:[Ljava/lang/String;
    .end local v9           #fileToDelete:Ljava/io/File;
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 452
    :cond_3
    invoke-static {p0}, Landroid/dsm/DSMService;->deleteInternalVideoFiles(Landroid/content/Context;)Z

    .line 454
    return v12

    .line 433
    .restart local v6       #contactInfo:Ljava/util/Vector;,"Ljava/util/Vector<[Ljava/lang/String;>;"
    .restart local v7       #cur:Landroid/database/Cursor;
    .restart local v8       #fileName:[Ljava/lang/String;
    .restart local v10       #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
