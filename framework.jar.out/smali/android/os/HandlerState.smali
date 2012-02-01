.class public abstract Landroid/os/HandlerState;
.super Ljava/lang/Object;
.source "HandlerState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Landroid/os/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public exit(Landroid/os/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public abstract processMessage(Landroid/os/Message;)V
.end method
