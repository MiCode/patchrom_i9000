.class Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;
.super Landroid/view/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    invoke-interface {v0, p1, v1, v2}, Landroid/view/IWindowManager;->setRotation(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
