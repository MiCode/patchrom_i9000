.class Lcom/android/phone/InVTCallScreen$27$1;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen$27;->onStateChanged(Lsiso/vt/VTManager$VTEventForUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/InVTCallScreen$27;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen$27;)V
    .locals 0
    .parameter

    .prologue
    .line 8181
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$27$1;->this$1:Lcom/android/phone/InVTCallScreen$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 8184
    return-void
.end method
