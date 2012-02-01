.class Lcom/android/phone/EditFdnContactScreen$8$4;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 676
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$8$4;->this$1:Lcom/android/phone/EditFdnContactScreen$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$8$4;->this$1:Lcom/android/phone/EditFdnContactScreen$8;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    .line 679
    return-void
.end method
