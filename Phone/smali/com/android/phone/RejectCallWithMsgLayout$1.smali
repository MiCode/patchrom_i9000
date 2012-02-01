.class Lcom/android/phone/RejectCallWithMsgLayout$1;
.super Landroid/os/Handler;
.source "RejectCallWithMsgLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgLayout;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 58
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 61
    .local v0, index:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgLayout;->access$000(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 64
    .local v1, item:Landroid/widget/LinearLayout;
    const v3, 0x7f0800cd

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v3, 0x7f0800ce

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/RejectCallWithMsgLayout$1$1;

    invoke-direct {v4, p0}, Lcom/android/phone/RejectCallWithMsgLayout$1$1;-><init>(Lcom/android/phone/RejectCallWithMsgLayout$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
