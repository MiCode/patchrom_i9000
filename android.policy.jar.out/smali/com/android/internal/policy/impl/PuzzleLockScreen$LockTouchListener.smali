.class Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;
.super Ljava/lang/Object;
.source "PuzzleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PuzzleLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/policy/impl/PuzzleLockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    return-void
.end method


# virtual methods
.method public onControllerOpened(Z)V
    .locals 0
    .parameter "opened"

    .prologue
    return-void
.end method

.method public onControllerVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2402(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    return-void
.end method

.method public onTouchedCD()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    return-void
.end method
