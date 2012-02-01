.class Lcom/android/internal/policy/impl/UnlockScreen$2;
.super Ljava/lang/Object;
.source "UnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockScreen;->access$100(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockScreen;->access$100(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    return-void
.end method
