.class public Landroid/os/HandlerStateMachine;
.super Ljava/lang/Object;
.source "HandlerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HandlerStateMachine$SmHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerStateMachine"


# instance fields
.field private mDbg:Z

.field private mHandler:Landroid/os/HandlerStateMachine$SmHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    iput-object p1, p0, Landroid/os/HandlerStateMachine;->mName:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/HandlerStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/os/HandlerStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/HandlerStateMachine$SmHandler;

    iget-object v1, p0, Landroid/os/HandlerStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/os/HandlerStateMachine$SmHandler;-><init>(Landroid/os/HandlerStateMachine;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/HandlerStateMachine;->mHandler:Landroid/os/HandlerStateMachine$SmHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/os/HandlerStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    return v0
.end method


# virtual methods
.method public final deferMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget-boolean v1, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "HandlerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateMachine.deferMessage EX mDeferredMessages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/HandlerStateMachine;->mHandler:Landroid/os/HandlerStateMachine$SmHandler;

    iget-object v3, v3, Landroid/os/HandlerStateMachine$SmHandler;->mDeferredMessages:Landroid/os/Message;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/os/HandlerStateMachine;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, newMsg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    iget-object v1, p0, Landroid/os/HandlerStateMachine;->mHandler:Landroid/os/HandlerStateMachine$SmHandler;

    iget-object v1, v1, Landroid/os/HandlerStateMachine$SmHandler;->mDeferredMessages:Landroid/os/Message;

    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iget-object v1, p0, Landroid/os/HandlerStateMachine;->mHandler:Landroid/os/HandlerStateMachine$SmHandler;

    iput-object v0, v1, Landroid/os/HandlerStateMachine$SmHandler;->mDeferredMessages:Landroid/os/Message;

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/HandlerStateMachine;->mHandler:Landroid/os/HandlerStateMachine$SmHandler;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/HandlerStateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isDbg()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    return v0
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/os/HandlerStateMachine;->mHandler:Landroid/os/HandlerStateMachine$SmHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "HandlerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateMachine.obtainMessage() EX target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 4
    .parameter "what"

    .prologue
    iget-object v1, p0, Landroid/os/HandlerStateMachine;->mHandler:Landroid/os/HandlerStateMachine$SmHandler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "HandlerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateMachine.obtainMessage(what) EX what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget-boolean v0, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HandlerStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.sendMessage EX msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/os/HandlerStateMachine;->mHandler:Landroid/os/HandlerStateMachine$SmHandler;

    invoke-virtual {v0, p1}, Landroid/os/HandlerStateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 3
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    iget-boolean v0, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HandlerStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.sendMessageDelayed EX msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/os/HandlerStateMachine;->mHandler:Landroid/os/HandlerStateMachine$SmHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/HandlerStateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setDbg(Z)V
    .locals 4
    .parameter "dbg"

    .prologue
    iput-boolean p1, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    iget-boolean v0, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/HandlerStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/LogPrinter;

    const/4 v2, 0x2

    const-string v3, "HandlerStateMachine"

    invoke-direct {v1, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/HandlerStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    goto :goto_0
.end method

.method public setInitialState(Landroid/os/HandlerState;)V
    .locals 3
    .parameter "initialState"

    .prologue
    iget-boolean v0, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HandlerStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.setInitialState EX initialState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/os/HandlerStateMachine;->mHandler:Landroid/os/HandlerStateMachine$SmHandler;

    iput-object p1, v0, Landroid/os/HandlerStateMachine$SmHandler;->mDestState:Landroid/os/HandlerState;

    return-void
.end method

.method public final transitionTo(Landroid/os/HandlerState;)V
    .locals 3
    .parameter "destState"

    .prologue
    iget-boolean v0, p0, Landroid/os/HandlerStateMachine;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HandlerStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.transitionTo EX destState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/os/HandlerStateMachine;->mHandler:Landroid/os/HandlerStateMachine$SmHandler;

    iput-object p1, v0, Landroid/os/HandlerStateMachine$SmHandler;->mDestState:Landroid/os/HandlerState;

    return-void
.end method
