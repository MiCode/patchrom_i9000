.class Landroid/hardware/TvOut$EventHandler;
.super Landroid/os/Handler;
.source "TvOut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/TvOut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mTvOut:Landroid/hardware/TvOut;

.field final synthetic this$0:Landroid/hardware/TvOut;


# direct methods
.method public constructor <init>(Landroid/hardware/TvOut;Landroid/hardware/TvOut;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "sa"
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/hardware/TvOut$EventHandler;->this$0:Landroid/hardware/TvOut;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/hardware/TvOut$EventHandler;->mTvOut:Landroid/hardware/TvOut;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const-string v1, "TvOut-Client"

    const-string v0, "TvOut-Client"

    const-string v0, "handleMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/TvOut$EventHandler;->mTvOut:Landroid/hardware/TvOut;

    #getter for: Landroid/hardware/TvOut;->mNativeContext:I
    invoke-static {v0}, Landroid/hardware/TvOut;->access$000(Landroid/hardware/TvOut;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TvOut-Client"

    const-string v0, "tvout went away with unhandled events"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
