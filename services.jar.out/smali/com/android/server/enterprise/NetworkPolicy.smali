.class public Lcom/android/server/enterprise/NetworkPolicy;
.super Landroid/app/enterprise/INetworkPolicy$Stub;
.source "NetworkPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/NetworkPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I

.field public static AUTH_TYPE_NONE:I

.field private static AUTH_TYPE_NOTSET:I

.field public static AUTH_TYPE_PAP:I

.field public static AUTH_TYPE_PAP_OR_CHAP:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/NetworkPolicy;->AUTH_TYPE_NOTSET:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/NetworkPolicy;->AUTH_TYPE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/NetworkPolicy;->AUTH_TYPE_PAP:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/NetworkPolicy;->AUTH_TYPE_CHAP:I

    const/4 v0, 0x3

    sput v0, Lcom/android/server/enterprise/NetworkPolicy;->AUTH_TYPE_PAP_OR_CHAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    invoke-direct {p0}, Landroid/app/enterprise/INetworkPolicy$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/NetworkPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized addUpdateAp(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    .locals 19
    .parameter "isNewAp"
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

    .prologue
    monitor-enter p0

    const/4 v12, 0x1

    .local v12, success:Z
    const-wide/16 v10, -0x1

    .local v10, rowId:J
    const/4 v5, 0x0

    .local v5, devMCC:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, devMNC:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, devSimOperatorNumeric:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p7

    :try_start_1
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-wide/16 v16, 0x1

    cmp-long v16, v16, p2

    if-gtz v16, :cond_1

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_1

    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, -0x1

    move/from16 v0, v16

    move/from16 v1, p12

    if-gt v0, v1, :cond_1

    const/16 v16, -0x1

    move/from16 v0, v16

    move/from16 v1, p14

    if-gt v0, v1, :cond_1

    const/16 v16, -0x2

    move/from16 v0, v16

    move/from16 v1, p17

    if-gt v0, v1, :cond_1

    const/16 v16, 0x3

    move/from16 v0, v16

    move/from16 v1, p17

    if-ge v0, v1, :cond_e

    :cond_1
    const/4 v12, 0x0

    if-nez p1, :cond_2

    const-wide/16 v16, 0x1

    cmp-long v16, v16, p2

    if-lez v16, :cond_2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addUpdateAp() : invalid ap Id "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_4

    :cond_3
    const-string v16, "addUpdateAp() : invalid ap name"

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_6

    :cond_5
    const-string v16, "addUpdateAp() : invalid ap apn"

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    :cond_6
    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_8

    :cond_7
    const-string v16, "addUpdateAp() : invalid ap mcc"

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    :cond_8
    if-eqz p7, :cond_9

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_a

    :cond_9
    const-string v16, "addUpdateAp() : invalid ap mnc"

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    :cond_a
    const/16 v16, -0x1

    move/from16 v0, v16

    move/from16 v1, p12

    if-le v0, v1, :cond_b

    const-string v16, "addUpdateAp() : invalid ap port"

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    :cond_b
    const/16 v16, -0x1

    move/from16 v0, v16

    move/from16 v1, p14

    if-le v0, v1, :cond_c

    const-string v16, "addUpdateAp() : invalid ap mmsPort"

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    :cond_c
    const/16 v16, -0x2

    move/from16 v0, v16

    move/from16 v1, p17

    if-gt v0, v1, :cond_d

    const/16 v16, 0x3

    move/from16 v0, v16

    move/from16 v1, p17

    if-ge v0, v1, :cond_e

    :cond_d
    const-string v16, "addUpdateAp() : invalid ap authType"

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    :goto_0
    if-eqz v12, :cond_13

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/NetworkPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "phone"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .local v13, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    const/16 v16, 0x4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object v0, v7

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x3

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_f
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p13

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p15

    move-object/from16 v0, p0

    move-object/from16 v1, p16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/NetworkPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p16

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .local v15, values:Landroid/content/ContentValues;
    const-string v16, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "numeric"

    if-eqz p6, :cond_10

    if-nez p7, :cond_14

    :cond_10
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "mcc"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "mnc"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "apn"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "user"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "server"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "password"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "proxy"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "port"

    if-ltz p12, :cond_15

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "mmsproxy"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "mmsport"

    if-ltz p14, :cond_16

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "mmsc"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_18

    const-string v16, "authtype"

    const/16 v17, -0x2

    move/from16 v0, v17

    move/from16 v1, p17

    if-ge v0, v1, :cond_17

    const/16 v17, 0x4

    move/from16 v0, v17

    move/from16 v1, p17

    if-le v0, v1, :cond_17

    move/from16 v17, p17

    :goto_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_11
    :goto_5
    const-string v16, "type"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/NetworkPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_12

    if-eqz v5, :cond_12

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const-string v16, "current"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_12
    invoke-virtual {v15}, Landroid/content/ContentValues;->size()I

    move-result v16

    if-lez v16, :cond_1c

    if-eqz p1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/NetworkPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/android/server/enterprise/NetworkPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .local v14, url:Landroid/net/Uri;
    if-eqz v14, :cond_19

    const/16 v16, 0x1

    move/from16 v12, v16

    :goto_6
    if-eqz v12, :cond_13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addUpdateAp Created rowUri : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v10

    .end local v13           #tm:Landroid/telephony/TelephonyManager;
    .end local v14           #url:Landroid/net/Uri;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_13
    :goto_7
    monitor-exit p0

    return-wide v10

    :catch_0
    move-exception v16

    move-object/from16 v8, v16

    .local v8, e:Ljava/lang/Exception;
    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .restart local v13       #tm:Landroid/telephony/TelephonyManager;
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_14
    :try_start_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_17
    sget v17, Lcom/android/server/enterprise/NetworkPolicy;->AUTH_TYPE_NOTSET:I

    goto/16 :goto_4

    :cond_18
    if-nez p1, :cond_11

    const/16 v16, -0x2

    move/from16 v0, v16

    move/from16 v1, p17

    if-ge v0, v1, :cond_11

    const/16 v16, 0x4

    move/from16 v0, v16

    move/from16 v1, p17

    if-le v0, v1, :cond_11

    const-string v16, "authtype"

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    .end local v13           #tm:Landroid/telephony/TelephonyManager;
    .end local v15           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v16

    move-object/from16 v8, v16

    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .end local v8           #e:Ljava/lang/Exception;
    .restart local v13       #tm:Landroid/telephony/TelephonyManager;
    .restart local v14       #url:Landroid/net/Uri;
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_19
    const/16 v16, 0x0

    move/from16 v12, v16

    goto :goto_6

    .end local v14           #url:Landroid/net/Uri;
    :cond_1a
    :try_start_6
    sget-object v16, Lcom/android/server/enterprise/NetworkPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .restart local v14       #url:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/NetworkPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .local v9, rowCount:I
    if-lez v9, :cond_1b

    const/16 v16, 0x1

    move/from16 v12, v16

    :goto_8
    if-eqz v12, :cond_13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addUpdateAp Updated rowUri : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    goto/16 :goto_7

    :cond_1b
    const/16 v16, 0x0

    move/from16 v12, v16

    goto :goto_8

    .end local v9           #rowCount:I
    .end local v14           #url:Landroid/net/Uri;
    :cond_1c
    const-string v16, "addUpdateAp Error: Empty dataset."

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_7
.end method

.method private isValidApId(J)Z
    .locals 11
    .parameter "apId"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .local v8, isValid:Z
    const/4 v6, 0x0

    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v3, 0x0

    cmp-long v0, v3, p1

    if-gez v0, :cond_3

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/NetworkPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, url:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/enterprise/NetworkPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidApId() row count : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for apId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    move v8, v10

    :goto_0
    if-eqz v6, :cond_0

    .end local v1           #url:Landroid/net/Uri;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    :cond_0
    :goto_2
    return v8

    .restart local v1       #url:Landroid/net/Uri;
    .restart local v2       #ID_PROJECTION:[Ljava/lang/String;
    :cond_1
    move v8, v9

    goto :goto_0

    .end local v1           #url:Landroid/net/Uri;
    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    goto :goto_1

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidApId() : invalid apId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "isNewAp"
    .parameter "values"
    .parameter "key"
    .parameter "value"

    .prologue
    if-eqz p1, :cond_2

    if-nez p4, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    if-nez p1, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addNewAp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    .locals 18
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

    .prologue
    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    invoke-direct/range {v0 .. v17}, Lcom/android/server/enterprise/NetworkPolicy;->addUpdateAp(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized deleteAp(J)Z
    .locals 7
    .parameter "apId"

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    const/4 v1, -0x1

    .local v1, rowCount:I
    const-wide/16 v3, 0x1

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    :try_start_0
    const-string v3, "deleteAp : apId is invalid"

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v6

    :goto_0
    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/NetworkPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/enterprise/NetworkPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2           #uri:Landroid/net/Uri;
    :goto_1
    if-lez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    move v3, v6

    goto :goto_0
.end method

.method public setApSettings(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    .locals 18
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

    .prologue
    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    invoke-direct/range {v0 .. v17}, Lcom/android/server/enterprise/NetworkPolicy;->addUpdateAp(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized setpreferredAp(J)Z
    .locals 8
    .parameter "apId"

    .prologue
    const-wide/16 v5, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    .local v2, success:Z
    cmp-long v4, v5, p1

    if-eqz v4, :cond_1

    cmp-long v4, v5, p1

    if-lez v4, :cond_1

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/NetworkPolicy;->isValidApId(J)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "apn_id"

    cmp-long v5, v5, p1

    if-nez v5, :cond_2

    const-wide/16 v5, -0x1

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/server/enterprise/NetworkPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/NetworkPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .local v1, rowCount:I
    if-lez v1, :cond_3

    const/4 v4, 0x1

    move v2, v4

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreferedAp() row count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1           #rowCount:I
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_2
    move-wide v5, p1

    goto :goto_1

    .restart local v1       #rowCount:I
    :cond_3
    const/4 v4, 0x0

    move v2, v4

    goto :goto_2
.end method
