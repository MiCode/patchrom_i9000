.class public Lcom/broadcom/bt/service/map/MAPProviderManager;
.super Ljava/lang/Object;
.source "MAPProviderManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MapProviderManager"


# instance fields
.field mService:Lcom/broadcom/bt/service/map/MapService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/MapService;)V
    .locals 1
    .parameter "map_service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MAPProviderManager;->mService:Lcom/broadcom/bt/service/map/MapService;

    iput-object p1, p0, Lcom/broadcom/bt/service/map/MAPProviderManager;->mService:Lcom/broadcom/bt/service/map/MapService;

    return-void
.end method


# virtual methods
.method sendProviderDiscoveryBroadcast()V
    .locals 0

    .prologue
    return-void
.end method
