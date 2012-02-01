.class Lcom/samsung/sec/android/application/csc/CscBrowser$1;
.super Landroid/content/BroadcastReceiver;
.source "CscBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/android/application/csc/CscBrowser;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscBrowser;


# direct methods
.method constructor <init>(Lcom/samsung/sec/android/application/csc/CscBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscBrowser$1;->this$0:Lcom/samsung/sec/android/application/csc/CscBrowser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v6, "homepage"

    const-string v5, "CSCBrowser"

    .line 94
    const-string v3, "CSCBrowser"

    const-string v3, " ** onReceive runs.."

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CSC_BROWSER_HOMEPAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string v3, "homepage"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, rcvd:Ljava/lang/String;
    const-string v3, "CSCBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ** onReceive : received url - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscBrowser$1;->this$0:Lcom/samsung/sec/android/application/csc/CscBrowser;

    #getter for: Lcom/samsung/sec/android/application/csc/CscBrowser;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/sec/android/application/csc/CscBrowser;->access$000(Lcom/samsung/sec/android/application/csc/CscBrowser;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "csc.preferences_name"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 101
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "homepage"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #rcvd:Ljava/lang/String;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscBrowser$1;->this$0:Lcom/samsung/sec/android/application/csc/CscBrowser;

    #getter for: Lcom/samsung/sec/android/application/csc/CscBrowser;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/sec/android/application/csc/CscBrowser;->access$000(Lcom/samsung/sec/android/application/csc/CscBrowser;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscBrowser$1;->this$0:Lcom/samsung/sec/android/application/csc/CscBrowser;

    #getter for: Lcom/samsung/sec/android/application/csc/CscBrowser;->mHomepageUrlRcvr:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/samsung/sec/android/application/csc/CscBrowser;->access$100(Lcom/samsung/sec/android/application/csc/CscBrowser;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    return-void
.end method
