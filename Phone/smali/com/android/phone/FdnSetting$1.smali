.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const v9, 0x7f0d0127

    const v8, 0x7f0d0123

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "puk2_state"

    .line 261
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 266
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 268
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 269
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 271
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 272
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 277
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .local v2, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 280
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d0288

    invoke-virtual {v3, v4}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 281
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d0157

    invoke-virtual {v3, v4}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 282
    const v3, 0x7f0d003d

    new-instance v4, Lcom/android/phone/FdnSetting$1$1;

    invoke-direct {v4, p0}, Lcom/android/phone/FdnSetting$1$1;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 289
    new-instance v3, Lcom/android/phone/FdnSetting$1$2;

    invoke-direct {v3, p0}, Lcom/android/phone/FdnSetting$1$2;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 300
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 302
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0d028b

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 303
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0d028c

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 305
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 306
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 321
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    :goto_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 308
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d0141

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;I)V

    goto :goto_1

    .line 314
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 315
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 316
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 317
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 319
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 329
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 331
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 332
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 333
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 334
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_2

    .line 338
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    .restart local v2       #err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 341
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d0288

    invoke-virtual {v3, v4}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 342
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d0157

    invoke-virtual {v3, v4}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 343
    const v3, 0x7f0d003d

    new-instance v4, Lcom/android/phone/FdnSetting$1$3;

    invoke-direct {v4, p0}, Lcom/android/phone/FdnSetting$1$3;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 351
    new-instance v3, Lcom/android/phone/FdnSetting$1$4;

    invoke-direct {v3, p0}, Lcom/android/phone/FdnSetting$1$4;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 359
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 361
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 363
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 364
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 365
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0d028b

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 366
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0d028c

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 367
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 368
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 369
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 372
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d015c

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;I)V

    .line 380
    :goto_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 381
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$802(Lcom/android/phone/FdnSetting;I)I

    .line 383
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)V

    .line 384
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    .line 385
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 386
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 387
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 388
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 390
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 375
    :cond_3
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d015d

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;I)V

    .line 376
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    goto :goto_2

    .line 394
    :cond_4
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 399
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_5
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d0161

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;I)V

    .line 400
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 401
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 403
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 404
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 405
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 406
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 408
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$802(Lcom/android/phone/FdnSetting;I)I

    .line 410
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    .line 411
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
