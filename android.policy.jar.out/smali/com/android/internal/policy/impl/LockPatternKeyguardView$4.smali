.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onBatteryStatusInform(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2700()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2700()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakeDimlock(I)V

    :cond_1
    return-void
.end method
