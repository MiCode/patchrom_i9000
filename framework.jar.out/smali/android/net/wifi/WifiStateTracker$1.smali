.class Landroid/net/wifi/WifiStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$1;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$1;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "WifiStateTracker"

    const-string v1, "Sending a DHCP renewal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$1;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$1;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
