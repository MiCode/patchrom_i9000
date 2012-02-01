.class public Landroid/app/enterprise/CertificateInfo;
.super Ljava/lang/Object;
.source "CertificateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCertificate:Ljava/security/cert/Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/enterprise/CertificateInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/CertificateInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/CertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/app/enterprise/CertificateInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    iput-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public setCertificate(Ljava/security/cert/Certificate;)V
    .locals 0
    .parameter "aCertificate"

    .prologue
    iput-object p1, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flag"

    .prologue
    iget-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
