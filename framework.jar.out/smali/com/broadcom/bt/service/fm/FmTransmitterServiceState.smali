.class public Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;
.super Ljava/lang/Object;
.source "FmTransmitterServiceState.java"


# static fields
.field static mRadioIsOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
