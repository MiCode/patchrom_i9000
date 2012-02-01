.class Lcom/android/internal/policy/impl/GlassLockScreen$1;
.super Ljava/lang/Object;
.source "GlassLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    return-void
.end method
