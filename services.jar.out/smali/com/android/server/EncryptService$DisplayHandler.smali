.class Lcom/android/server/EncryptService$DisplayHandler;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisplayHandler"
.end annotation


# instance fields
.field final PopupType:I

.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;I)V
    .locals 0
    .parameter
    .parameter "PopupType"

    .prologue
    iput-object p1, p0, Lcom/android/server/EncryptService$DisplayHandler;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/EncryptService$DisplayHandler;->PopupType:I

    return-void
.end method
