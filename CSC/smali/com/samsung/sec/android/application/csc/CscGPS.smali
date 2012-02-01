.class public Lcom/samsung/sec/android/application/csc/CscGPS;
.super Ljava/lang/Object;
.source "CscGPS.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# instance fields
.field private final DEFAULT_CSC_FILE:Ljava/lang/String;

.field private final OTHERS_CSC_FILE:Ljava/lang/String;

.field extra:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mParser:Lcom/samsung/sec/android/application/csc/CscParser;

.field private mResolver:Landroid/content/ContentResolver;

.field private sPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->OTHERS_CSC_FILE:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->sPrefs:Landroid/content/SharedPreferences;

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->extra:Landroid/os/Bundle;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->mResolver:Landroid/content/ContentResolver;

    .line 89
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method


# virtual methods
.method public GPSUpdate()V
    .locals 4

    .prologue
    .line 141
    const-string v1, "CscGPS"

    const-string v2, "CSCGPS.GPSUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 145
    .local v0, lm:Landroid/location/LocationManager;
    const-string v1, "gps"

    const-string v2, "set_csc_parameters"

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 146
    return-void
.end method

.method public compare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "NOERROR"

    .line 150
    .local v0, answer:Ljava/lang/String;
    return-object v0
.end method

.method public update()V
    .locals 6

    .prologue
    const-string v5, "ssl"

    const-string v4, "CscGPS"

    .line 95
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 98
    const-string v1, "CscGPS"

    const-string v1, "CSCGPS.updateParameters"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.GPS.AGPS.ServAddr"

    invoke-virtual {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, valueStr:Ljava/lang/String;
    const-string v1, "CscGPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supl host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->extra:Landroid/os/Bundle;

    const-string v2, "operation_mode"

    const-string v3, "MSBASED"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->extra:Landroid/os/Bundle;

    const-string v2, "hslp_addr"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "geoloc2.sfr.fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->extra:Landroid/os/Bundle;

    const-string v2, "ssl"

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v2, "Settings.GPS.AGPS.Port"

    invoke-virtual {v1, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "CscGPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supl port : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eqz v0, :cond_2

    .line 123
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->extra:Landroid/os/Bundle;

    const-string v2, "hslp_port"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    :goto_1
    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscGPS;->GPSUpdate()V

    .line 136
    :goto_2
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscGPS;->extra:Landroid/os/Bundle;

    const-string v2, "ssl"

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 115
    :cond_1
    const-string v1, "CscGPS"

    const-string v1, "SUPL Host is null or invalid"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_2
    const-string v1, "CscGPS"

    const-string v1, "SUPL PORT is null or invalid"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    :cond_3
    const-string v1, "CscGPS"

    const-string v1, "CSC don\'t have any AGPS value."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
