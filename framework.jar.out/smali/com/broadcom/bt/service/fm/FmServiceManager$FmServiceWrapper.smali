.class Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
.super Ljava/lang/Object;
.source "FmServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FmServiceWrapper"
.end annotation


# instance fields
.field private mIsStarted:Z

.field private mSvc:Lcom/broadcom/bt/service/framework/IBtService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/framework/IBtService;Z)V
    .locals 0
    .parameter "eventLoop"
    .parameter "isStarted"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;

    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mIsStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;

    return-object v0
.end method
