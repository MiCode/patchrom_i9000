.class Lcom/android/phone/EditFdnContactScreen$8;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x64

    const/4 v5, 0x0

    .line 618
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 619
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 709
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 710
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 712
    return-void

    .line 620
    :cond_1
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 621
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 622
    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v3

    if-ne p1, v3, :cond_9

    .line 626
    const/4 v2, 0x1

    .line 627
    .local v2, result:Z
    new-array v0, v5, [B

    .line 628
    .local v0, byteArrayName:[B
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v0

    .line 630
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$600(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 632
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v3

    const v4, 0x7f0d0285

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    .line 633
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 634
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 635
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/phone/EditFdnContactScreen$8$1;

    invoke-direct {v4, p0}, Lcom/android/phone/EditFdnContactScreen$8$1;-><init>(Lcom/android/phone/EditFdnContactScreen$8;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 643
    :cond_3
    array-length v3, v0

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$900(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    if-le v3, v4, :cond_4

    .line 644
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v3

    const v4, 0x7f0d0143

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    .line 645
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 646
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 647
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/phone/EditFdnContactScreen$8$2;

    invoke-direct {v4, p0}, Lcom/android/phone/EditFdnContactScreen$8$2;-><init>(Lcom/android/phone/EditFdnContactScreen$8;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 653
    :cond_4
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 654
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v3

    const v4, 0x7f0d0134

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    .line 655
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 656
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 657
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/phone/EditFdnContactScreen$8$3;

    invoke-direct {v4, p0}, Lcom/android/phone/EditFdnContactScreen$8$3;-><init>(Lcom/android/phone/EditFdnContactScreen$8;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 665
    :cond_5
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$1000(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 667
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    #setter for: Lcom/android/phone/EditFdnContactScreen;->mTelMan:Landroid/telephony/TelephonyManager;
    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->access$1102(Lcom/android/phone/EditFdnContactScreen;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 668
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mTelMan:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mTelMan:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v8, :cond_7

    .line 671
    :cond_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 672
    .local v1, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 674
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const v4, 0x7f0d0089

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 675
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const v4, 0x7f0d008e

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 676
    const v3, 0x7f0d002f

    new-instance v4, Lcom/android/phone/EditFdnContactScreen$8$4;

    invoke-direct {v4, p0}, Lcom/android/phone/EditFdnContactScreen$8$4;-><init>(Lcom/android/phone/EditFdnContactScreen$8;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 681
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 682
    new-instance v3, Lcom/android/phone/EditFdnContactScreen$8$5;

    invoke-direct {v3, p0}, Lcom/android/phone/EditFdnContactScreen$8$5;-><init>(Lcom/android/phone/EditFdnContactScreen$8;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 689
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 693
    .end local v1           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_7
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->authenticatePin2()V
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$1200(Lcom/android/phone/EditFdnContactScreen;)V

    .line 696
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$1300(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 697
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->addContact()V
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$1400(Lcom/android/phone/EditFdnContactScreen;)V

    goto/16 :goto_0

    .line 699
    :cond_8
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->updateContact()V
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$1500(Lcom/android/phone/EditFdnContactScreen;)V

    goto/16 :goto_0

    .line 704
    .end local v0           #byteArrayName:[B
    .end local v2           #result:Z
    :cond_9
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mCancel:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$1600(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 706
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v3}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    goto/16 :goto_0
.end method
