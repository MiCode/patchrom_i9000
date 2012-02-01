.class public Lcom/android/phone/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

.field private shouldHideButtons:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/EditPinPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/EditPinPreference;->getContext()Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/EditPinPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditPinPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 98
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/EditPinPreference;->shouldHideButtons:Z

    .line 99
    return-void

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 115
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditPinPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 116
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 6

    .prologue
    .line 72
    const v3, 0x7f03002c

    invoke-virtual {p0, v3}, Lcom/android/phone/EditPinPreference;->setDialogLayoutResource(I)V

    .line 74
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, dialog:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditPinPreference;->editText:Landroid/widget/EditText;

    .line 80
    iget-object v3, p0, Lcom/android/phone/EditPinPreference;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 81
    iget-object v3, p0, Lcom/android/phone/EditPinPreference;->editText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/EditPinPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getInputType()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 83
    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 84
    .local v2, ptm:Landroid/text/method/PasswordTransformationMethod;
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/text/InputFilter;

    .line 85
    .local v1, filterArray:[Landroid/text/InputFilter;
    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v3

    .line 87
    iget-object v3, p0, Lcom/android/phone/EditPinPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 88
    iget-object v3, p0, Lcom/android/phone/EditPinPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 90
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditPinPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 121
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/phone/EditPinPreference;Z)V

    .line 124
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditPinPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditPinPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditPinPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 127
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 106
    iget-boolean v0, p0, Lcom/android/phone/EditPinPreference;->shouldHideButtons:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/phone/EditPinPreference;->mPinListener:Lcom/android/phone/EditPinPreference$OnPinEnteredListener;

    .line 54
    return-void
.end method

.method public showPinDialog()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 136
    return-void
.end method
