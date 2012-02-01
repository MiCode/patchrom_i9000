.class public Lcom/samsung/sec/android/application/csc/CscConnection;
.super Ljava/lang/Object;
.source "CscConnection.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/android/application/csc/CscConnection$1;,
        Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;,
        Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;,
        Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;,
        Lcom/samsung/sec/android/application/csc/CscConnection$Profile;,
        Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;,
        Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;
    }
.end annotation


# static fields
.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private final DEFAULT_CSC_FILE:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final OTHERS_CSC_FILE:Ljava/lang/String;

.field private final SALES_CODE_FILE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

.field private mIsSuplApn:Z

.field private mLastFailCause:Ljava/lang/String;

.field private mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

.field private mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mParser:Lcom/samsung/sec/android/application/csc/CscParser;

.field private mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

.field private mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;

.field private useDunForTethering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 168
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "nwkname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscConnection;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->OTHERS_CSC_FILE:Ljava/lang/String;

    .line 33
    const-string v0, "/system/csc/sales_code.dat"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->SALES_CODE_FILE:Ljava/lang/String;

    .line 193
    const-string v0, "CscConnection"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->LOG_TAG:Ljava/lang/String;

    .line 254
    iput-boolean v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->useDunForTethering:Z

    .line 258
    iput-boolean v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mIsSuplApn:Z

    .line 260
    const-string v0, "NOERROR"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mLastFailCause:Ljava/lang/String;

    .line 263
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mResolver:Landroid/content/ContentResolver;

    .line 265
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance()Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 266
    return-void
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1596
    if-nez p1, :cond_0

    .line 1597
    const-string v0, ""

    .line 1599
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private compareProfAndValid(Ljava/util/ArrayList;I)I
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v11, "mms"

    .line 1040
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Z

    move v0, v9

    move v2, v9

    .line 1047
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    if-ge v2, v3, :cond_a

    .line 1048
    aget-boolean v3, v1, v2

    if-nez v3, :cond_9

    .line 1049
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1050
    add-int/lit8 v4, v2, 0x1

    move v5, v4

    move v4, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 1052
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    const-string v6, "mms"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v4, v2

    move v6, v10

    .line 1056
    :goto_2
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    const-string v7, "mms"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v5

    move v6, v10

    .line 1060
    :cond_0
    aget-boolean v0, v1, v2

    if-nez v0, :cond_1

    aget-boolean v0, v1, v5

    if-nez v0, :cond_1

    .line 1061
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v7, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    invoke-virtual {v7, v0, v6}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->equals(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1062
    aput-boolean v10, v1, v5

    .line 1065
    iget-boolean v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mIsSuplApn:Z

    if-eqz v0, :cond_2

    .line 1066
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1071
    :goto_3
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    :cond_1
    :goto_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 1068
    :cond_2
    const-string v0, ",supl,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1073
    :cond_3
    const-string v6, "CscConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "profName: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "profile diff! in compareProfAndValid()"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1077
    :cond_4
    aput-boolean v10, v1, v2

    .line 1078
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    invoke-virtual {v3, v9, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1079
    const-string v0, "CscConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "same profile\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "mms"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v12, :cond_7

    .line 1082
    new-instance v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;

    invoke-direct {v5, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1083
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    .line 1084
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    .line 1085
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "mms"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1086
    iput-object v8, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->proxy:Ljava/lang/String;

    .line 1087
    iput-object v8, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->port:Ljava/lang/String;

    .line 1092
    :goto_5
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsProxy:Ljava/lang/String;

    .line 1093
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsPort:Ljava/lang/String;

    .line 1094
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->url:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsc:Ljava/lang/String;

    .line 1095
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->userName:Ljava/lang/String;

    .line 1096
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->passwd:Ljava/lang/String;

    .line 1097
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    .line 1099
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 1100
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->convertAuth(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->authtype:I

    .line 1101
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->nwkname:Ljava/lang/String;

    move-object v0, v5

    .line 1122
    :goto_6
    iget-boolean v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mIsSuplApn:Z

    if-nez v3, :cond_5

    const-string v3, "default"

    iget-object v5, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1123
    const-string v3, "default,supl"

    iput-object v3, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 1126
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->validate(Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mLastFailCause:Ljava/lang/String;

    .line 1128
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->closeNwkInfoDb()V

    move v0, v12

    .line 1181
    :goto_7
    return v0

    .line 1089
    :cond_6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->proxy:Ljava/lang/String;

    .line 1090
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->port:Ljava/lang/String;

    goto/16 :goto_5

    .line 1103
    :cond_7
    new-instance v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;

    invoke-direct {v5, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1104
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    .line 1105
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    .line 1107
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->proxy:Ljava/lang/String;

    .line 1108
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->port:Ljava/lang/String;

    .line 1110
    iput-object v8, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsc:Ljava/lang/String;

    .line 1111
    iput-object v8, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsProxy:Ljava/lang/String;

    .line 1112
    iput-object v8, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsPort:Ljava/lang/String;

    .line 1113
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->userName:Ljava/lang/String;

    .line 1114
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->passwd:Ljava/lang/String;

    .line 1115
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    .line 1116
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    .line 1117
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 1118
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->convertAuth(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->authtype:I

    .line 1119
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->nwkname:Ljava/lang/String;

    move-object v0, v5

    goto/16 :goto_6

    :cond_8
    move v0, v4

    .line 1047
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1134
    :cond_a
    aget-boolean v0, v1, v2

    if-nez v0, :cond_d

    .line 1135
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1136
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1137
    const-string v3, "CscConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profName: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " add profile : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mms"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1140
    new-instance v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;

    invoke-direct {v3, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1141
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    .line 1142
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    .line 1143
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsProxy:Ljava/lang/String;

    .line 1144
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsPort:Ljava/lang/String;

    .line 1145
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->url:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsc:Ljava/lang/String;

    .line 1146
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->userName:Ljava/lang/String;

    .line 1147
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->passwd:Ljava/lang/String;

    .line 1148
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    .line 1149
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    .line 1150
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 1151
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->convertAuth(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->authtype:I

    .line 1152
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->nwkname:Ljava/lang/String;

    move-object v0, v3

    .line 1171
    :goto_8
    iget-boolean v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mIsSuplApn:Z

    if-nez v1, :cond_b

    const-string v1, "default"

    iget-object v2, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1172
    const-string v1, "default,supl"

    iput-object v1, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 1175
    :cond_b
    invoke-direct {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->validate(Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mLastFailCause:Ljava/lang/String;

    .line 1177
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->closeNwkInfoDb()V

    move v0, v12

    .line 1178
    goto/16 :goto_7

    .line 1154
    :cond_c
    new-instance v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;

    invoke-direct {v3, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1155
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    .line 1156
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    .line 1157
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->proxy:Ljava/lang/String;

    .line 1158
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->port:Ljava/lang/String;

    .line 1159
    iput-object v8, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsc:Ljava/lang/String;

    .line 1160
    iput-object v8, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsProxy:Ljava/lang/String;

    .line 1161
    iput-object v8, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsPort:Ljava/lang/String;

    .line 1162
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->userName:Ljava/lang/String;

    .line 1163
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->passwd:Ljava/lang/String;

    .line 1164
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    .line 1165
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    .line 1166
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 1167
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->convertAuth(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->authtype:I

    .line 1168
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->nwkname:Ljava/lang/String;

    move-object v0, v3

    goto/16 :goto_8

    :cond_d
    move v0, v9

    .line 1181
    goto/16 :goto_7

    :cond_e
    move v6, v9

    goto/16 :goto_2
.end method

.method private compareProfAndWrite(Ljava/util/ArrayList;I)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 891
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Z

    .line 894
    const/4 v0, 0x0

    .line 896
    const/4 v2, 0x0

    .line 897
    const/4 v3, 0x0

    .line 899
    const/4 v4, 0x0

    move v9, v3

    move v3, v0

    move v0, v9

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_a

    .line 900
    aget-boolean v5, v1, v4

    if-nez v5, :cond_7

    .line 901
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 902
    add-int/lit8 v5, v4, 0x1

    move v6, v5

    move v5, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 903
    const/4 v7, 0x0

    .line 904
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    const-string v8, "mms"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    const/4 v0, 0x1

    move v5, v4

    move v7, v0

    .line 908
    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    const-string v8, "mms"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    const/4 v0, 0x1

    move v5, v6

    move v7, v0

    .line 912
    :cond_1
    aget-boolean v0, v1, v4

    if-nez v0, :cond_2

    aget-boolean v0, v1, v6

    if-nez v0, :cond_2

    .line 913
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v8, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    invoke-virtual {v8, v0, v7}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->equals(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 914
    const/4 v0, 0x1

    aput-boolean v0, v1, v6

    .line 917
    iget-boolean v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mIsSuplApn:Z

    if-eqz v0, :cond_3

    .line 918
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 922
    :goto_2
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 902
    :cond_2
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 920
    :cond_3
    const-string v0, ",supl,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 925
    :cond_4
    const-string v7, "CscConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "profName: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "profile diff!"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 929
    :cond_5
    const/4 v0, 0x1

    aput-boolean v0, v1, v4

    .line 930
    const/4 v6, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    const-string v6, "CscConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "profName: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " same profile: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "mms"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_9

    .line 934
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 935
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    .line 936
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    .line 938
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "mms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 939
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->proxy:Ljava/lang/String;

    .line 940
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->port:Ljava/lang/String;

    .line 946
    :goto_4
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsProxy:Ljava/lang/String;

    .line 947
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsPort:Ljava/lang/String;

    .line 948
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->url:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsc:Ljava/lang/String;

    .line 949
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->userName:Ljava/lang/String;

    .line 950
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->passwd:Ljava/lang/String;

    .line 951
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    .line 952
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    .line 953
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 954
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->convertAuth(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->authtype:I

    .line 955
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->nwkname:Ljava/lang/String;

    move-object v0, v6

    .line 976
    :goto_5
    iget-boolean v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mIsSuplApn:Z

    if-nez v6, :cond_6

    const-string v6, "default"

    iget-object v7, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 977
    const-string v6, "default,supl"

    iput-object v6, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 980
    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->validateAndSave(Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;)Z

    .line 982
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dun"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_11

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "default"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_11

    .line 983
    const/4 v2, 0x1

    move v3, v2

    move-object v2, v0

    move v0, v5

    .line 899
    :cond_7
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 942
    :cond_8
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->proxy:Ljava/lang/String;

    .line 943
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->port:Ljava/lang/String;

    goto/16 :goto_4

    .line 957
    :cond_9
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 958
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    .line 959
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    .line 961
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->proxy:Ljava/lang/String;

    .line 962
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->port:Ljava/lang/String;

    .line 964
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsc:Ljava/lang/String;

    .line 965
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsProxy:Ljava/lang/String;

    .line 966
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsPort:Ljava/lang/String;

    .line 967
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->userName:Ljava/lang/String;

    .line 968
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->passwd:Ljava/lang/String;

    .line 969
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    .line 970
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    .line 971
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 972
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->convertAuth(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->authtype:I

    .line 973
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->nwkname:Ljava/lang/String;

    move-object v0, v6

    goto/16 :goto_5

    .line 987
    :cond_a
    aget-boolean v0, v1, v4

    if-nez v0, :cond_10

    .line 988
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 989
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 990
    const-string v2, "CscConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profName: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " add profile : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 993
    new-instance v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 994
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    .line 995
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    .line 996
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsProxy:Ljava/lang/String;

    .line 997
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsPort:Ljava/lang/String;

    .line 998
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->url:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsc:Ljava/lang/String;

    .line 999
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->userName:Ljava/lang/String;

    .line 1000
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->passwd:Ljava/lang/String;

    .line 1001
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    .line 1002
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    .line 1003
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 1004
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->convertAuth(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->authtype:I

    .line 1005
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->nwkname:Ljava/lang/String;

    move-object v0, v2

    .line 1024
    :goto_7
    iget-boolean v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mIsSuplApn:Z

    if-nez v2, :cond_b

    const-string v2, "default"

    iget-object v4, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1025
    const-string v2, "default,supl"

    iput-object v2, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 1028
    :cond_b
    invoke-direct {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->validateAndSave(Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;)Z

    .line 1030
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    const/4 v1, 0x1

    .line 1033
    :goto_8
    if-eqz v0, :cond_c

    .line 1034
    iget-object v2, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->nwkname:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_9
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/samsung/sec/android/application/csc/CscConnection;->writeToTetherDunDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1037
    :cond_c
    return-void

    .line 1007
    :cond_d
    new-instance v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1008
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    .line 1009
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    .line 1010
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->proxy:Ljava/lang/String;

    .line 1011
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->port:Ljava/lang/String;

    .line 1012
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsc:Ljava/lang/String;

    .line 1013
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsProxy:Ljava/lang/String;

    .line 1014
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsPort:Ljava/lang/String;

    .line 1015
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->userName:Ljava/lang/String;

    .line 1016
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->passwd:Ljava/lang/String;

    .line 1017
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    .line 1018
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    .line 1019
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    .line 1020
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    iget-object v0, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->convertAuth(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->authtype:I

    .line 1021
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->nwkname:Ljava/lang/String;

    move-object v0, v2

    goto/16 :goto_7

    .line 1034
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_f
    move v1, v3

    goto/16 :goto_8

    :cond_10
    move-object v0, v2

    move v1, v3

    goto/16 :goto_8

    :cond_11
    move-object v2, v0

    move v0, v5

    goto/16 :goto_6
.end method

.method private loadDormancyProfiles()I
    .locals 9

    .prologue
    const/4 v7, -0x1

    const-string v8, "CscConnection"

    .line 477
    const/4 v3, 0x0

    .line 481
    .local v3, size:I
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v6, "Settings.Main.Network"

    invoke-virtual {v5, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 482
    .local v1, node:Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    move v5, v7

    .line 544
    :goto_0
    return v5

    .line 485
    :cond_0
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v6, "FastDormancy"

    invoke-virtual {v5, v1, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 487
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    .line 488
    const-string v5, "CscConnection"

    const-string v5, "No dormancy profile"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 489
    goto :goto_0

    .line 492
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 494
    const-string v5, "CscConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - loadDormancyProfiles"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-array v5, v3, [Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    iput-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    .line 498
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 499
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    aput-object v6, v5, v0

    .line 501
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "NetworkName"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 502
    .local v4, temp:Lorg/w3c/dom/Node;
    if-eqz v4, :cond_2

    .line 503
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->nwkName:Ljava/lang/String;

    .line 505
    :cond_2
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "FastDormancyEnableStatus"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 506
    if-eqz v4, :cond_3

    .line 507
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->enable:Ljava/lang/String;

    .line 539
    :cond_3
    const-string v5, "CscConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nwkName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->nwkName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->enable:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 544
    .end local v4           #temp:Lorg/w3c/dom/Node;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private loadNetworkInfo()I
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v8, -0x1

    const-string v9, "CscConnection"

    .line 269
    const/4 v4, 0x0

    .line 273
    .local v4, size:I
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "GeneralInfo"

    invoke-virtual {v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 274
    .local v2, node:Lorg/w3c/dom/Node;
    if-nez v2, :cond_0

    move v6, v8

    .line 315
    :goto_0
    return v6

    .line 277
    :cond_0
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "NetworkInfo"

    invoke-virtual {v6, v2, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 279
    .local v3, nodeList:Lorg/w3c/dom/NodeList;
    if-nez v3, :cond_1

    .line 280
    const-string v6, "CscConnection"

    const-string v6, "No network info"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 281
    goto :goto_0

    .line 284
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 286
    const-string v6, "CscConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-array v6, v4, [Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    iput-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 291
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    new-instance v7, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    aput-object v7, v6, v0

    .line 293
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "NetworkName"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 295
    .local v5, temp:Lorg/w3c/dom/Node;
    if-eqz v5, :cond_2

    .line 296
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    .line 299
    :cond_2
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "MCCMNC"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 301
    if-eqz v5, :cond_3

    .line 302
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, mccMnc:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_3

    .line 307
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v6, v6, v0

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    .line 309
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v6, v6, v0

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    .line 310
    const-string v6, "CscConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load NwkInfo["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v1           #mccMnc:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .end local v5           #temp:Lorg/w3c/dom/Node;
    :cond_4
    move v6, v10

    .line 315
    goto/16 :goto_0
.end method

.method private loadProfileHandles()I
    .locals 9

    .prologue
    const/4 v7, -0x1

    const-string v8, "CscConnection"

    .line 319
    const/4 v3, 0x0

    .line 323
    .local v3, size:I
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v6, "Settings.Connections"

    invoke-virtual {v5, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 324
    .local v1, node:Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    move v5, v7

    .line 382
    :goto_0
    return v5

    .line 327
    :cond_0
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v6, "ProfileHandle"

    invoke-virtual {v5, v1, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 329
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    .line 330
    const-string v5, "CscConnection"

    const-string v5, "No profile handle"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 331
    goto :goto_0

    .line 334
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 336
    const-string v5, "CscConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-array v5, v3, [Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    iput-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    .line 340
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_b

    .line 341
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    aput-object v6, v5, v0

    .line 343
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "NetworkName"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 344
    .local v4, temp:Lorg/w3c/dom/Node;
    if-eqz v4, :cond_2

    .line 345
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->nwkName:Ljava/lang/String;

    .line 347
    :cond_2
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "ProfBrowser"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 348
    if-eqz v4, :cond_3

    .line 349
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profBrowser:Ljava/lang/String;

    .line 351
    :cond_3
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "ProfMMS"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 352
    if-eqz v4, :cond_4

    .line 353
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profMms:Ljava/lang/String;

    .line 355
    :cond_4
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "ProfEmail"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 356
    if-eqz v4, :cond_5

    .line 357
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profEmail:Ljava/lang/String;

    .line 359
    :cond_5
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "ProfIM"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 360
    if-eqz v4, :cond_6

    .line 361
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profIm:Ljava/lang/String;

    .line 363
    :cond_6
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "ProfStreaming"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 364
    if-eqz v4, :cond_7

    .line 365
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profStream:Ljava/lang/String;

    .line 367
    :cond_7
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "ProfIntSharing"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 368
    if-eqz v4, :cond_8

    .line 369
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profDun:Ljava/lang/String;

    .line 372
    :cond_8
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "ProfAGPS"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 373
    if-eqz v4, :cond_9

    .line 374
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profSupl:Ljava/lang/String;

    .line 377
    :cond_9
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "ProfActiveSync"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 378
    if-eqz v4, :cond_a

    .line 379
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v6, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profActiveSync:Ljava/lang/String;

    .line 340
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 382
    .end local v4           #temp:Lorg/w3c/dom/Node;
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private loadProfiles()I
    .locals 11

    .prologue
    const/4 v8, -0x1

    const-string v10, "CscConnection"

    const-string v9, "APN"

    .line 386
    const/4 v3, 0x0

    .line 390
    .local v3, size:I
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "Settings.Connections"

    invoke-virtual {v6, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 391
    .local v1, node:Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    move v6, v8

    .line 473
    :goto_0
    return v6

    .line 394
    :cond_0
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "Profile"

    invoke-virtual {v6, v1, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 396
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    .line 397
    const-string v6, "CscConnection"

    const-string v6, "No profiles"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 398
    goto :goto_0

    .line 401
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 403
    const-string v6, "CscConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-array v6, v3, [Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    iput-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 407
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_10

    .line 408
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    new-instance v7, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    aput-object v7, v6, v0

    .line 410
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "NetworkName"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 411
    .local v4, temp:Lorg/w3c/dom/Node;
    if-eqz v4, :cond_2

    .line 412
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    .line 414
    :cond_2
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "Editable"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 415
    if-eqz v4, :cond_3

    .line 416
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    .line 418
    :cond_3
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "EnableStatus"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 419
    if-eqz v4, :cond_4

    .line 420
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    .line 422
    :cond_4
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "ProfileName"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 423
    if-eqz v4, :cond_5

    .line 424
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    .line 426
    :cond_5
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "URL"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 427
    if-eqz v4, :cond_6

    .line 428
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->url:Ljava/lang/String;

    .line 430
    :cond_6
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "Auth"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 431
    if-eqz v4, :cond_7

    .line 432
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    .line 434
    :cond_7
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "Protocol"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 435
    if-eqz v4, :cond_8

    .line 436
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    .line 438
    :cond_8
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "APN"

    invoke-virtual {v6, v7, v9}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 439
    if-eqz v4, :cond_9

    .line 440
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    .line 442
    :cond_9
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "Proxy"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 443
    if-eqz v4, :cond_c

    .line 444
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "EnableFlag"

    invoke-virtual {v6, v4, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 445
    .local v5, temp2:Lorg/w3c/dom/Node;
    if-eqz v5, :cond_a

    .line 446
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxyEnable:Ljava/lang/String;

    .line 448
    :cond_a
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "ServAddr"

    invoke-virtual {v6, v4, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 449
    if-eqz v5, :cond_b

    .line 450
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    .line 452
    :cond_b
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "Port"

    invoke-virtual {v6, v4, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 453
    if-eqz v5, :cond_c

    .line 454
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    .line 457
    .end local v5           #temp2:Lorg/w3c/dom/Node;
    :cond_c
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "PSparam"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 458
    if-eqz v4, :cond_f

    .line 459
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "APN"

    invoke-virtual {v6, v4, v9}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 460
    .restart local v5       #temp2:Lorg/w3c/dom/Node;
    if-eqz v5, :cond_d

    .line 461
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    .line 463
    :cond_d
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "UserId"

    invoke-virtual {v6, v4, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 464
    if-eqz v5, :cond_e

    .line 465
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->userId:Ljava/lang/String;

    .line 467
    :cond_e
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v7, "Password"

    invoke-virtual {v6, v4, v7}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 468
    if-eqz v5, :cond_f

    .line 469
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v7, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->passwd:Ljava/lang/String;

    .line 407
    .end local v5           #temp2:Lorg/w3c/dom/Node;
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 473
    .end local v4           #temp:Lorg/w3c/dom/Node;
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private setDefaultAPN()I
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    const-string v9, "CscConnection"

    .line 1750
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 1753
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "DefaultApn.ProfileName"

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1754
    if-nez v0, :cond_0

    move v0, v6

    .line 1787
    :goto_0
    return v0

    .line 1757
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v1, v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 1758
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Profile Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1764
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1770
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v8, :cond_3

    .line 1771
    :cond_1
    if-eqz v0, :cond_2

    .line 1772
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v6

    .line 1773
    goto :goto_0

    .line 1777
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1778
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1779
    const-string v2, "CscConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default Profile key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1782
    const-string v3, "apn_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "content://telephony/carriers/preferapn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1786
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 1787
    goto/16 :goto_0
.end method

.method private validate(Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "\' and "

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "numeric=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mcc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mnc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->userName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->passwd:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "proxy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->proxy:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "port=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->port:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsproxy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsport=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsPort:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsc:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "authtype=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->authtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nwkname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->nwkname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1558
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/sec/android/application/csc/CscConnection;->sProjection:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1564
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1565
    :cond_0
    if-eqz v0, :cond_1

    .line 1566
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    .line 1578
    :goto_0
    return v0

    .line 1571
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v7, :cond_3

    .line 1572
    const-string v1, "CscConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validate same profile count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1574
    goto :goto_0

    .line 1577
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 1578
    goto :goto_0
.end method

.method private validateAndSave(Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;)Z
    .locals 4
    .parameter

    .prologue
    .line 1515
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1517
    const-string v1, "name"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->profName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const-string v1, "apn"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const-string v1, "proxy"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->proxy:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const-string v1, "port"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->port:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    const-string v1, "mmsproxy"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const-string v1, "mmsport"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsPort:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const-string v1, "user"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->userName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const-string v1, "server"

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    const-string v1, "password"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->passwd:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const-string v1, "mmsc"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mmsc:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const-string v1, "type"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    const-string v1, "mcc"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v1, "mnc"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v1, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->mnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string v1, "authtype"

    iget v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->authtype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1532
    const-string v1, "nwkname"

    iget-object v2, p1, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->nwkname:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_CSC_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1537
    const/4 v0, 0x1

    return v0
.end method

.method private validateNwkInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10
    .parameter "plmn"
    .parameter "name"
    .parameter "dormFlag"
    .parameter "mtu"

    .prologue
    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plmn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nwkname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dormancy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mtu=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 859
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    const-string v0, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "nwkinfo"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 869
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 870
    :cond_0
    if-eqz v8, :cond_1

    .line 871
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 873
    :cond_1
    const/4 v0, 0x0

    .line 886
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 876
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 877
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 878
    const/4 v0, 0x1

    goto :goto_0

    .line 881
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    const/4 v0, 0x0

    goto :goto_0

    .line 884
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 885
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught during nwkinfo query(compare): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method closeNwkInfoDb()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 796
    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 801
    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 804
    :cond_1
    return-void
.end method

.method public compare()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "CscConnection"

    .line 1791
    const-string v0, "NOERROR"

    .line 1792
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 1794
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->loadNetworkInfo()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1795
    const-string v1, "CscConnection"

    const-string v1, "error during loading network info"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->loadProfileHandles()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1800
    const-string v1, "CscConnection"

    const-string v1, "error during loading profile handles"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_1
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->loadProfiles()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1805
    const-string v1, "CscConnection"

    const-string v1, "error during loading profiles"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_2
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->loadDormancyProfiles()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1814
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->validateDb()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1815
    const-string v1, "CscConnection"

    const-string v1, "DB doesn\'t match with XML"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_4
    return-object v0
.end method

.method convertAuth(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1582
    if-nez p1, :cond_0

    move v0, v1

    .line 1592
    :goto_0
    return v0

    .line 1585
    :cond_0
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1586
    const/4 v0, 0x0

    goto :goto_0

    .line 1587
    :cond_1
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1588
    const/4 v0, 0x1

    goto :goto_0

    .line 1589
    :cond_2
    const-string v0, "secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1590
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1592
    goto :goto_0
.end method

.method createTetherDunDb()V
    .locals 5

    .prologue
    const-string v4, "CscConnection"

    .line 609
    const-string v2, "CscConnection"

    const-string v2, "createTetherDunDb"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    new-instance v0, Ljava/io/File;

    const-string v2, "/dbdata/databases/com.android.providers.telephony"

    const-string v3, "tether_dun.db"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    .local v0, databaseFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 615
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 616
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    .line 617
    const-string v2, "CscConnection"

    const-string v3, "nwk_info DB creation error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;

    const/high16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 621
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CREATE TABLE nwkinfo(plmn TEXT, nwkname TEXT, usedun INT, CONSTRAINT PKcompKey PRIMARY KEY (plmn, nwkname))"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 624
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CscConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught during creating tether_dun table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method cscUpdateToDb()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "CscConnection"

    .line 1693
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->openNwkInfoDb_RW()V

    .line 1695
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    if-nez v0, :cond_0

    .line 1696
    const-string v0, "CscConnection"

    const-string v0, "No network info, write nothing to DB"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->closeNwkInfoDb()V

    .line 1747
    :goto_0
    return-void

    :cond_0
    move v0, v5

    .line 1701
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1708
    const-string v1, "on"

    .line 1714
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    if-eqz v2, :cond_1

    move v2, v5

    .line 1715
    :goto_2
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1716
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->nwkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1718
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->enable:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1719
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->enable:Ljava/lang/String;

    .line 1725
    :cond_1
    const-string v2, "CscConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write NwkInfo["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5dc

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/samsung/sec/android/application/csc/CscConnection;->insertNwkInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1701
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1715
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1744
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    const/high16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1746
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->closeNwkInfoDb()V

    goto/16 :goto_0
.end method

.method insertNwkInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "plmn"
    .parameter "name"
    .parameter "dormFlag"
    .parameter "mtu"

    .prologue
    .line 833
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 850
    :goto_0
    return-void

    .line 837
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 839
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "plmn"

    invoke-direct {p0, p1}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v2, "nwkname"

    invoke-direct {p0, p2}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v2, "dormancy"

    invoke-direct {p0, p3}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v2, "mtu"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    :try_start_0
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "nwkinfo"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 847
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 848
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CscConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught during inserting network info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method openNwkInfoDb()V
    .locals 6

    .prologue
    const-string v5, "CscConnection"

    .line 692
    const-string v2, "CscConnection"

    const-string v2, "openNwkInfoDb"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v0, Ljava/io/File;

    const-string v2, "/dbdata/databases/com.android.providers.telephony"

    const-string v3, "nwk_info.db"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .local v0, databaseFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 698
    const-string v2, "CscConnection"

    const-string v2, "nwk_info.db doesn\'t exist"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 704
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 705
    const-string v2, "CscConnection"

    const-string v3, "nwk_info DB open error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 710
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CscConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught during open nwk_info.db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method openNwkInfoDb_RW()V
    .locals 6

    .prologue
    const-string v5, "CscConnection"

    .line 668
    const-string v2, "CscConnection"

    const-string v2, "openNwkInfoDb_RW"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v0, Ljava/io/File;

    const-string v2, "/dbdata/databases/com.android.providers.telephony"

    const-string v3, "nwk_info.db"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .local v0, databaseFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 674
    const-string v2, "CscConnection"

    const-string v2, "nwk_info.db doesn\'t exist"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 680
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 681
    const-string v2, "CscConnection"

    const-string v3, "nwk_info DB open error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 686
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CscConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught during open nwk_info.db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method printDormancy()V
    .locals 4

    .prologue
    const-string v3, "CscConnection"

    .line 1871
    const-string v0, "CscConnection"

    const-string v0, "[Dormancy Profile] -----------------"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    if-eqz v0, :cond_0

    .line 1873
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1874
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->nwkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->enable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1877
    :cond_0
    const-string v0, "CscConnection"

    const-string v0, "----------------- [Dormancy Profile]"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    return-void
.end method

.method printNwkInfo()V
    .locals 4

    .prologue
    const-string v3, "CscConnection"

    .line 1861
    const-string v0, "CscConnection"

    const-string v0, "[printNwkInfo] -----------------"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    if-eqz v0, :cond_0

    .line 1863
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1864
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1867
    :cond_0
    const-string v0, "CscConnection"

    const-string v0, "----------------- [printNwkInfo]"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    return-void
.end method

.method printProfileHandles()V
    .locals 5

    .prologue
    const-string v4, "--------------------------------"

    const-string v3, "CscConnection"

    .line 1823
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    if-eqz v0, :cond_0

    .line 1824
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1825
    const-string v1, "CscConnection"

    const-string v1, "--------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nwk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->nwkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Browser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profBrowser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profMms:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E-mail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profIm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Streaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profStream:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DUN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profDun:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profSupl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActiveSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profActiveSync:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const-string v1, "CscConnection"

    const-string v1, "--------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1838
    :cond_0
    return-void
.end method

.method printProfiles()V
    .locals 5

    .prologue
    const-string v4, "--------------------------------"

    const-string v3, "CscConnection"

    .line 1841
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    if-eqz v0, :cond_0

    .line 1842
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1843
    const-string v1, "CscConnection"

    const-string v1, "--------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nwk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Editable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->editable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->enableStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProfileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->authtype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxyEnable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    const-string v1, "CscConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    const-string v1, "CscConnection"

    const-string v1, "--------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1858
    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "CscConnection"

    .line 1639
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 1641
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->loadNetworkInfo()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    const-string v0, "CscConnection"

    const-string v0, "error during loading network info"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->loadProfileHandles()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1647
    const-string v0, "CscConnection"

    const-string v0, "error during loading profile handles"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_1
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->loadProfiles()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1652
    const-string v0, "CscConnection"

    const-string v0, "error during loading profiles"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_2
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->loadDormancyProfiles()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1657
    const-string v0, "CscConnection"

    const-string v0, "error during loading dormancy profiles"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->printNwkInfo()V

    .line 1662
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->printDormancy()V

    .line 1663
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->printProfileHandles()V

    .line 1664
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->printProfiles()V

    .line 1675
    .line 1683
    .line 1685
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CSC_UPDATE_DONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1687
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->setDefaultAPN()I

    move-result v0

    if-gez v0, :cond_4

    .line 1688
    const-string v0, "CscConnection"

    const-string v0, "error during setting default APN"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_4
    return-void
.end method

.method public updateCSCFD()V
    .locals 2

    .prologue
    const-string v1, "CscConnection"

    .line 1610
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 1611
    const-string v0, "CscConnection"

    const-string v0, "updateCSCFD()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->loadNetworkInfo()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    const-string v0, "CscConnection"

    const-string v0, "error during loading network info"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->loadDormancyProfiles()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1619
    const-string v0, "CscConnection"

    const-string v0, "error during loading dormancy profiles"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->printNwkInfo()V

    .line 1632
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->printDormancy()V

    .line 1635
    #invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->cscUpdateToDb()V

    .line 1636
    return-void
.end method

.method validateDb()I
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v11, "CscConnection"

    .line 1364
    .line 1365
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->openNwkInfoDb()V

    .line 1367
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    if-nez v0, :cond_0

    .line 1368
    const-string v0, "CscConnection"

    const-string v0, "No network info, write nothing to DB"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->closeNwkInfoDb()V

    move v0, v9

    .line 1511
    :goto_0
    return v0

    :cond_0
    move v0, v9

    move v1, v9

    .line 1373
    :goto_1
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 1380
    const-string v2, "on"

    .line 1386
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    if-eqz v3, :cond_1

    move v3, v9

    .line 1387
    :goto_2
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 1388
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->nwkName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1390
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->enable:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1391
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->enable:Ljava/lang/String;

    .line 1399
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5dc

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/samsung/sec/android/application/csc/CscConnection;->validateNwkInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1403
    const-string v0, "Connection.nwkinfo"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mLastFailCause:Ljava/lang/String;

    .line 1404
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->closeNwkInfoDb()V

    move v0, v12

    .line 1405
    goto :goto_0

    .line 1387
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1408
    :cond_3
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    if-nez v2, :cond_4

    .line 1373
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    move v2, v1

    move v1, v9

    .line 1412
    :goto_4
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    array-length v3, v3

    if-ge v1, v3, :cond_12

    .line 1413
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->nwkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1414
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1424
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    if-nez v4, :cond_6

    .line 1412
    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    move v4, v9

    move v5, v2

    move v2, v9

    .line 1427
    :goto_6
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    array-length v6, v6

    if-ge v2, v6, :cond_e

    .line 1428
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->nwkName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1429
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profBrowser:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profBrowser:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1431
    new-instance v5, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    invoke-direct {v5, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1432
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v5, v5, v2

    .line 1433
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    invoke-direct {v6, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1434
    iput-object v5, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1435
    const-string v5, "default"

    iput-object v5, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1436
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v4, v5

    move v5, v10

    .line 1440
    :cond_7
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profMms:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profMms:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1442
    new-instance v5, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    invoke-direct {v5, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1443
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v5, v5, v2

    .line 1444
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    invoke-direct {v6, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1445
    iput-object v5, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1446
    const-string v5, "mms"

    iput-object v5, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1447
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v10

    .line 1451
    :cond_8
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profDun:Ljava/lang/String;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profDun:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1453
    new-instance v5, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    invoke-direct {v5, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1454
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v5, v5, v2

    .line 1455
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    invoke-direct {v6, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1456
    iput-object v5, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1457
    const-string v5, "dun"

    iput-object v5, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1458
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v10

    .line 1462
    :cond_9
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profSupl:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profSupl:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1464
    new-instance v5, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    invoke-direct {v5, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1465
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v5, v5, v2

    .line 1466
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    invoke-direct {v6, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1467
    iput-object v5, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1468
    const-string v5, "supl"

    iput-object v5, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1469
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v10

    .line 1473
    :cond_a
    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profActiveSync:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profActiveSync:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1475
    new-instance v5, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    invoke-direct {v5, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1476
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v5, v5, v2

    .line 1477
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    invoke-direct {v6, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1478
    iput-object v5, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1479
    const-string v5, "hipri"

    iput-object v5, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1480
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v10

    .line 1483
    :cond_b
    if-nez v5, :cond_c

    .line 1484
    new-instance v5, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    invoke-direct {v5, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1485
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    aget-object v5, v5, v2

    .line 1486
    new-instance v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    invoke-direct {v6, p0, v8}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1487
    iput-object v5, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1488
    const-string v7, "default"

    iput-object v7, v6, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1489
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1491
    const-string v4, "CscConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "additional profiletypelist add : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v5, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    :cond_c
    move v5, v9

    .line 1427
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 1496
    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 1498
    invoke-direct {p0, v3, v0}, Lcom/samsung/sec/android/application/csc/CscConnection;->compareProfAndValid(Ljava/util/ArrayList;I)I

    move-result v2

    if-ne v2, v12, :cond_10

    move v0, v12

    .line 1499
    goto/16 :goto_0

    .line 1502
    :cond_f
    const-string v2, "CscConnection"

    const-string v2, "profiletypelist.size() == 0"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move v2, v5

    goto/16 :goto_5

    .line 1508
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->closeNwkInfoDb()V

    .line 1509
    const-string v0, "CscConnection"

    const-string v0, "compare success"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1511
    goto/16 :goto_0

    :cond_12
    move v1, v2

    goto/16 :goto_3
.end method

.method writeToDb()V
    .locals 23

    .prologue
    .line 1186
    const/4 v5, 0x0

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->openNwkInfoDb_RW()V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    move-object v6, v0

    if-nez v6, :cond_0

    .line 1194
    const-string v5, "CscConnection"

    const-string v6, "No network info, write nothing to DB"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->closeNwkInfoDb()V

    .line 1361
    :goto_0
    return-void

    .line 1200
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->createTetherDunDb()V

    .line 1204
    const/4 v6, 0x0

    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    move-object v7, v0

    array-length v7, v7

    if-ge v5, v7, :cond_f

    .line 1211
    const-string v7, "on"

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    move-object v8, v0

    if-eqz v8, :cond_1

    .line 1218
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    move-object v9, v0

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    move-object v9, v0

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    move-object v9, v0

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    move-object v10, v0

    aget-object v10, v10, v8

    iget-object v10, v10, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->nwkName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    move-object v9, v0

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->enable:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mDormProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;

    move-object v7, v0

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/samsung/sec/android/application/csc/CscConnection$DormancyProfile;->enable:Ljava/lang/String;

    .line 1228
    :cond_1
    const-string v8, "CscConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "write NwkInfo["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    move-object v10, v0

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    move-object v10, v0

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    move-object v10, v0

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    move-object v9, v0

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMcc:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    move-object v9, v0

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mMnc:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    move-object v9, v0

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/samsung/sec/android/application/csc/CscConnection;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5dc

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v7

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/sec/android/application/csc/CscConnection;->insertNwkInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object v7, v0

    if-nez v7, :cond_3

    .line 1204
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1218
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1249
    :cond_3
    const/4 v7, 0x0

    move/from16 v19, v7

    move v7, v6

    move/from16 v6, v19

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object v8, v0

    array-length v8, v8

    if-ge v6, v8, :cond_10

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfo:[Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;

    move-object v8, v0

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/samsung/sec/android/application/csc/CscConnection$NwkInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object v9, v0

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->nwkName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1251
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    const/4 v9, 0x0

    .line 1254
    const/4 v10, 0x0

    .line 1255
    const/4 v11, 0x0

    .line 1256
    const/4 v12, 0x0

    .line 1257
    const/4 v13, 0x0

    .line 1258
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/sec/android/application/csc/CscConnection;->mIsSuplApn:Z

    .line 1259
    const/4 v14, 0x0

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object v15, v0

    if-nez v15, :cond_5

    .line 1249
    :cond_4
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1264
    :cond_5
    const/4 v15, 0x0

    move/from16 v19, v15

    move v15, v7

    move/from16 v7, v19

    move-object/from16 v20, v13

    move-object v13, v10

    move-object/from16 v10, v20

    move-object/from16 v21, v11

    move-object v11, v12

    move-object/from16 v12, v21

    move-object/from16 v22, v9

    move v9, v14

    move-object/from16 v14, v22

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_d

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->nwkName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->nwkName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 1266
    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profBrowser:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profBrowser:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1268
    new-instance v14, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object v14, v0

    aget-object v14, v14, v7

    .line 1270
    new-instance v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1271
    iput-object v14, v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1272
    const-string v16, "default"

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1273
    add-int/lit8 v16, v9, 0x1

    invoke-virtual {v8, v9, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1274
    const/4 v9, 0x1

    .line 1276
    const-string v15, "CscConnection"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "profiletypelist add : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v14

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v9

    move/from16 v9, v16

    .line 1279
    :cond_6
    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profMms:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profMms:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1281
    new-instance v13, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    const/4 v15, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object v13, v0

    aget-object v13, v13, v7

    .line 1283
    new-instance v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1284
    iput-object v13, v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1285
    const-string v16, "mms"

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1286
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    const/4 v15, 0x1

    .line 1289
    const-string v16, "CscConnection"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "profiletypelist add : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v13

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_7
    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profDun:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profDun:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1294
    new-instance v12, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    const/4 v15, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object v12, v0

    aget-object v12, v12, v7

    .line 1296
    new-instance v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1297
    iput-object v12, v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1298
    const-string v16, "dun"

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1299
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    const/4 v15, 0x1

    .line 1302
    const-string v16, "CscConnection"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "profiletypelist add : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v12

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_8
    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profSupl:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profSupl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1307
    new-instance v11, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    const/4 v15, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object v11, v0

    aget-object v11, v11, v7

    .line 1309
    new-instance v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1310
    iput-object v11, v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1311
    const-string v16, "supl"

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1312
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    const/4 v15, 0x1

    .line 1314
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/sec/android/application/csc/CscConnection;->mIsSuplApn:Z

    .line 1316
    const-string v16, "CscConnection"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "profiletypelist add : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v11

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_9
    if-nez v10, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profActiveSync:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfHandle:[Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->profActiveSync:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1321
    new-instance v10, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    const/4 v15, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object v10, v0

    aget-object v10, v10, v7

    .line 1323
    new-instance v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1324
    iput-object v10, v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1325
    const-string v16, "hipri"

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1326
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    const/4 v15, 0x1

    .line 1329
    const-string v16, "CscConnection"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "profiletypelist add : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v10

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_a
    if-nez v15, :cond_b

    .line 1332
    new-instance v14, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mProfile:[Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    move-object v14, v0

    aget-object v14, v14, v7

    .line 1334
    new-instance v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V

    .line 1335
    iput-object v14, v15, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

    .line 1336
    const-string v16, "default"

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->type:Ljava/lang/String;

    .line 1337
    add-int/lit8 v16, v9, 0x1

    invoke-virtual {v8, v9, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1339
    const-string v9, "CscConnection"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "additional profiletypelist add : "

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v14

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection$Profile;->profName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v9, v16

    .line 1341
    :cond_b
    const/4 v15, 0x0

    .line 1264
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 1345
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    .line 1347
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/android/application/csc/CscConnection;->compareProfAndWrite(Ljava/util/ArrayList;I)V

    move v7, v15

    goto/16 :goto_5

    .line 1349
    :cond_e
    const-string v7, "CscConnection"

    const-string v8, "profiletypelist.size() == 0"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v15

    goto/16 :goto_5

    .line 1358
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscConnection;->mNwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const/high16 v6, 0x17

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/android/application/csc/CscConnection;->closeNwkInfoDb()V

    goto/16 :goto_0

    :cond_10
    move v6, v7

    goto/16 :goto_3
.end method

.method writeToTetherDunDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "mcc"
    .parameter "mnc"
    .parameter "nwkname"
    .parameter "useDun"

    .prologue
    .line 628
    const-string v2, "hsnow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeToTetherDunDb mcc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mnc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nwkname"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, plmn:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscConnection;->mTetherDunDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR REPLACE INTO nwkinfo (plmn,nwkname,usedun) values (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 638
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CscConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught during write to tether_dun.db : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
