.class Lsiso/vt/VTManager$EventHandler;
.super Landroid/os/Handler;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsiso/vt/VTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private listener:Lsiso/vt/VTManager$VTStackStateListener;

.field final synthetic this$0:Lsiso/vt/VTManager;

.field private vtmanager:Lsiso/vt/VTManager;


# direct methods
.method public constructor <init>(Lsiso/vt/VTManager;Lsiso/vt/VTManager;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "vt"
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lsiso/vt/VTManager$EventHandler;->this$0:Lsiso/vt/VTManager;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v0, v0, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    iput-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const-string v3, "EventHandler"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lsiso/vt/VTManager;

    iput-object v1, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v1, v1, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    iput-object v1, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    const-string v1, "EventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener is :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vtmanager.mStackStateListener is :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v2, v2, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message is :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    iget-object v2, p0, Lsiso/vt/VTManager$EventHandler;->this$0:Lsiso/vt/VTManager;

    #getter for: Lsiso/vt/VTManager;->vtStackEventStrings:[Ljava/lang/String;
    invoke-static {v2}, Lsiso/vt/VTManager;->access$000(Lsiso/vt/VTManager;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lsiso/vt/VTManager$VTEventForUI;->valueOf(Ljava/lang/String;)Lsiso/vt/VTManager$VTEventForUI;

    move-result-object v2

    invoke-interface {v1, v2}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$VTEventForUI;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Invalid String used on Vt Stack Event"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enum is :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsiso/vt/VTManager$EventHandler;->this$0:Lsiso/vt/VTManager;

    #getter for: Lsiso/vt/VTManager;->vtStackEventStrings:[Ljava/lang/String;
    invoke-static {v3}, Lsiso/vt/VTManager;->access$000(Lsiso/vt/VTManager;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Out of Bound Index used on Vt Stack Event"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
