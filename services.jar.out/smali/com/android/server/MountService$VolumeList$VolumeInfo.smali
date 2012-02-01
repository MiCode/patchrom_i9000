.class final Lcom/android/server/MountService$VolumeList$VolumeInfo;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService$VolumeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeInfo"
.end annotation


# instance fields
.field public CryptogramState:Ljava/lang/String;

.field public LegacyState:Ljava/lang/String;

.field public devPath:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public pending:Z

.field final synthetic this$1:Lcom/android/server/MountService$VolumeList;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$VolumeList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "LegacyState"

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->this$1:Lcom/android/server/MountService$VolumeList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->LegacyState:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->pending:Z

    const-string v0, "decrypt"

    iput-object v0, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->CryptogramState:Ljava/lang/String;

    return-void
.end method
