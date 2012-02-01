.class Landroid/webkit/WebSelectDialog;
.super Landroid/app/Dialog;
.source "WebSelectDialog.java"


# static fields
.field public static final BUTTON_DONE:I = 0x3

.field public static final BUTTON_NEXT:I = 0x1

.field public static final BUTTON_PREV:I = 0x2

.field static final LOGTAG:Ljava/lang/String; = "WebSelectDialog"


# instance fields
.field mContentPanel:Landroid/widget/LinearLayout;

.field private mCurrentOrientation:I

.field private mDoneButton:Landroid/view/View;

.field private mDoneButtonEnabled:Z

.field private mDoneInputListener:Landroid/view/View$OnClickListener;

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mLandscapeViewHeight:I

.field private mListView:Landroid/widget/ListView;

.field private mNextButton:Landroid/view/View;

.field private mNextButtonEnabled:Z

.field private mNextInputListener:Landroid/view/View$OnClickListener;

.field private mPortraitViewHeight:I

.field private mPrevButton:Landroid/view/View;

.field private mPrevButtonEnabled:Z

.field private mPrevInputListener:Landroid/view/View$OnClickListener;

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x10300ab

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v1, p0, Landroid/webkit/WebSelectDialog;->mNextButtonEnabled:Z

    iput-boolean v1, p0, Landroid/webkit/WebSelectDialog;->mPrevButtonEnabled:Z

    iput-boolean v1, p0, Landroid/webkit/WebSelectDialog;->mDoneButtonEnabled:Z

    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebSelectDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/WebSelectDialog;->mTmpLocation:[I

    iput v1, p0, Landroid/webkit/WebSelectDialog;->mPortraitViewHeight:I

    iput v1, p0, Landroid/webkit/WebSelectDialog;->mLandscapeViewHeight:I

    iput v2, p0, Landroid/webkit/WebSelectDialog;->mCurrentOrientation:I

    new-instance v0, Landroid/webkit/WebSelectDialog$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebSelectDialog$1;-><init>(Landroid/webkit/WebSelectDialog;)V

    iput-object v0, p0, Landroid/webkit/WebSelectDialog;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {p0, v2}, Landroid/webkit/WebSelectDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 6
    .parameter "outInsets"

    .prologue
    const/4 v5, 0x1

    iget-object v1, p0, Landroid/webkit/WebSelectDialog;->mTmpLocation:[I

    .local v1, loc:[I
    iget-object v2, p0, Landroid/webkit/WebSelectDialog;->mContentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebSelectDialog;->mContentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    :goto_0
    aget v2, v1, v5

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    aget v2, v1, v5

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    const-string v2, "WebSelectDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentInsets:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, decor:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v1, v5

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/webkit/WebSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/webkit/WebSelectDialog;->mPortraitViewHeight:I

    invoke-virtual {p0}, Landroid/webkit/WebSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/webkit/WebSelectDialog;->mLandscapeViewHeight:I

    invoke-virtual {p0}, Landroid/webkit/WebSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .local v0, theWindow:Landroid/view/Window;
    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x1090082

    invoke-virtual {p0, v1}, Landroid/webkit/WebSelectDialog;->setContentView(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/webkit/WebSelectDialog;->rebuildView()V

    invoke-virtual {p0}, Landroid/webkit/WebSelectDialog;->onWebViewSizeChanged()V

    return-void
.end method

.method public onWebViewSizeChanged()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/webkit/WebSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, cfg:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Landroid/webkit/WebSelectDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_0

    const v2, 0x10202a5

    invoke-virtual {p0, v2}, Landroid/webkit/WebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .local v1, contentPanelTop:Landroid/widget/LinearLayout;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Landroid/webkit/WebSelectDialog;->mCurrentOrientation:I

    if-eqz v1, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/webkit/WebSelectDialog;->mLandscapeViewHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v1           #contentPanelTop:Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .restart local v1       #contentPanelTop:Landroid/widget/LinearLayout;
    :cond_1
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/webkit/WebSelectDialog;->mPortraitViewHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public rebuildView()V
    .locals 7

    .prologue
    const v5, -0x777778

    const/4 v6, -0x1

    invoke-virtual {p0}, Landroid/webkit/WebSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .local v3, theWindow:Landroid/view/Window;
    const v4, 0x10202a2

    invoke-virtual {p0, v4}, Landroid/webkit/WebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, button:Landroid/widget/Button;
    iget-object v4, p0, Landroid/webkit/WebSelectDialog;->mNextInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v4, p0, Landroid/webkit/WebSelectDialog;->mNextButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v4, p0, Landroid/webkit/WebSelectDialog;->mNextButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    iget-boolean v4, p0, Landroid/webkit/WebSelectDialog;->mNextButtonEnabled:Z

    if-nez v4, :cond_1

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0xbb6

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object v0, p0, Landroid/webkit/WebSelectDialog;->mNextButton:Landroid/view/View;

    const v4, 0x10202a1

    invoke-virtual {p0, v4}, Landroid/webkit/WebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .restart local v0       #button:Landroid/widget/Button;
    iget-object v4, p0, Landroid/webkit/WebSelectDialog;->mPrevInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v4, p0, Landroid/webkit/WebSelectDialog;->mPrevButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v4, p0, Landroid/webkit/WebSelectDialog;->mPrevButtonEnabled:Z

    if-nez v4, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    iget-boolean v4, p0, Landroid/webkit/WebSelectDialog;->mPrevButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    iput-object v0, p0, Landroid/webkit/WebSelectDialog;->mPrevButton:Landroid/view/View;

    const v4, 0x10202a4

    invoke-virtual {p0, v4}, Landroid/webkit/WebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .restart local v0       #button:Landroid/widget/Button;
    iget-object v4, p0, Landroid/webkit/WebSelectDialog;->mDoneInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v4, p0, Landroid/webkit/WebSelectDialog;->mDoneButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v4, p0, Landroid/webkit/WebSelectDialog;->mDoneButtonEnabled:Z

    if-nez v4, :cond_3

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    :goto_2
    iget-boolean v4, p0, Landroid/webkit/WebSelectDialog;->mDoneButtonEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    iput-object v0, p0, Landroid/webkit/WebSelectDialog;->mDoneButton:Landroid/view/View;

    iget-object v4, p0, Landroid/webkit/WebSelectDialog;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    const v4, 0x10202a6

    invoke-virtual {p0, v4}, Landroid/webkit/WebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .local v1, contentPanel:Landroid/widget/LinearLayout;
    iget-object v4, p0, Landroid/webkit/WebSelectDialog;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local v1           #contentPanel:Landroid/widget/LinearLayout;
    :cond_0
    return-void

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2
.end method

.method setButtonEnabled(IZ)V
    .locals 0
    .parameter "button"
    .parameter "enabled"

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean p2, p0, Landroid/webkit/WebSelectDialog;->mNextButtonEnabled:Z

    goto :goto_0

    :pswitch_1
    iput-boolean p2, p0, Landroid/webkit/WebSelectDialog;->mPrevButtonEnabled:Z

    goto :goto_0

    :pswitch_2
    iput-boolean p2, p0, Landroid/webkit/WebSelectDialog;->mDoneButtonEnabled:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "button"
    .parameter "listener"

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p2, p0, Landroid/webkit/WebSelectDialog;->mNextInputListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Landroid/webkit/WebSelectDialog;->mPrevInputListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Landroid/webkit/WebSelectDialog;->mDoneInputListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setListView(Landroid/widget/ListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    iget-object v1, p0, Landroid/webkit/WebSelectDialog;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    const v1, 0x10202a6

    invoke-virtual {p0, v1}, Landroid/webkit/WebSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .local v0, contentPanel:Landroid/widget/LinearLayout;
    iget-object v1, p0, Landroid/webkit/WebSelectDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .end local v0           #contentPanel:Landroid/widget/LinearLayout;
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebSelectDialog;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
