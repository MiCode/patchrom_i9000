.class public Lsiso/vt/VideoTelephonyData;
.super Ljava/lang/Object;
.source "VideoTelephonyData.java"


# instance fields
.field private mDatalen:I

.field private mObjectmode:I

.field private mProdNum:Ljava/lang/String;

.field private mUserData:Ljava/lang/String;

.field private mVerNum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "prodNum"
    .parameter "verNum"
    .parameter "userData"
    .parameter "datalen"
    .parameter "objectmode"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lsiso/vt/VideoTelephonyData;->mProdNum:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lsiso/vt/VideoTelephonyData;->mVerNum:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lsiso/vt/VideoTelephonyData;->mUserData:Ljava/lang/String;

    .line 21
    iput p4, p0, Lsiso/vt/VideoTelephonyData;->mDatalen:I

    .line 22
    iput p5, p0, Lsiso/vt/VideoTelephonyData;->mObjectmode:I

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getDataLen()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lsiso/vt/VideoTelephonyData;->mDatalen:I

    return v0
.end method

.method public getObjectMode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lsiso/vt/VideoTelephonyData;->mObjectmode:I

    return v0
.end method

.method public getObjectMode(I)V
    .locals 0
    .parameter "objectMode"

    .prologue
    .line 66
    iput p1, p0, Lsiso/vt/VideoTelephonyData;->mObjectmode:I

    .line 67
    return-void
.end method

.method public getProductNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lsiso/vt/VideoTelephonyData;->mProdNum:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lsiso/vt/VideoTelephonyData;->mUserData:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lsiso/vt/VideoTelephonyData;->mVerNum:Ljava/lang/String;

    return-object v0
.end method

.method public setDataLen(I)V
    .locals 0
    .parameter "dataLen"

    .prologue
    .line 61
    iput p1, p0, Lsiso/vt/VideoTelephonyData;->mDatalen:I

    .line 62
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .parameter "userData"

    .prologue
    .line 56
    iput-object p1, p0, Lsiso/vt/VideoTelephonyData;->mUserData:Ljava/lang/String;

    .line 57
    return-void
.end method
