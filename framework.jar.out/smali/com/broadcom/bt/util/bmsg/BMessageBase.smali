.class abstract Lcom/broadcom/bt/util/bmsg/BMessageBase;
.super Ljava/lang/Object;
.source "BMessageBase.java"


# instance fields
.field protected mNativeObjectRef:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearNativeRef()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    return-void
.end method

.method protected isNativeCreated()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setNativeRef(I)Z
    .locals 1
    .parameter "nativeObjectRef"

    .prologue
    if-lez p1, :cond_0

    iput p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
