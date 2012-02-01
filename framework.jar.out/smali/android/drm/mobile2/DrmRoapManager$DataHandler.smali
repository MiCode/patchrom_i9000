.class Landroid/drm/mobile2/DrmRoapManager$DataHandler;
.super Landroid/os/Handler;
.source "DrmRoapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/mobile2/DrmRoapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/mobile2/DrmRoapManager;


# direct methods
.method constructor <init>(Landroid/drm/mobile2/DrmRoapManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/drm/mobile2/DrmRoapManager$DataHandler;->this$0:Landroid/drm/mobile2/DrmRoapManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/drm/mobile2/DrmHttpEvent;

    .local v0, event:Landroid/drm/mobile2/DrmHttpEvent;
    iget-object v1, p0, Landroid/drm/mobile2/DrmRoapManager$DataHandler;->this$0:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v1, v0}, Landroid/drm/mobile2/DrmRoapManager;->ProcessHttpResponse(Landroid/drm/mobile2/DrmHttpEvent;)V

    return-void
.end method
