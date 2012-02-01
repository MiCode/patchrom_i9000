.class public Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
.super Ljava/lang/Thread;
.source "EventCallbackHandler.java"


# instance fields
.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->setPriority(I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, l:Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .end local v0           #l:Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
