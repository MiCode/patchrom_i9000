.class Lcom/android/phone/EditFdnContactScreen$8$5;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/EditFdnContactScreen$8;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen$8;)V
    .locals 0
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$8$5;->this$1:Lcom/android/phone/EditFdnContactScreen$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$8$5;->this$1:Lcom/android/phone/EditFdnContactScreen$8;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    .line 686
    return-void
.end method
