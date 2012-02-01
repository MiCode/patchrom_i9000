.class Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;
.super Ljava/lang/Thread;
.source "BaseProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/framework/BaseProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/broadcom/bt/service/framework/BaseProxy;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/framework/BaseProxy;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->this$0:Lcom/broadcom/bt/service/framework/BaseProxy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->setPriority(I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;

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

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
