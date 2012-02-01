.class Landroid/widget/TextView$CursorControllerMenu;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorControllerMenu"
.end annotation


# static fields
.field static final DEBUG_CCM:Z


# instance fields
.field public mBtnClipBoard:Landroid/widget/LinearLayout;

.field public mBtnCopy:Landroid/widget/LinearLayout;

.field public mBtnCut:Landroid/widget/LinearLayout;

.field public mBtnPaste:Landroid/widget/LinearLayout;

.field public mBtnSearch:Landroid/widget/LinearLayout;

.field public mBtnSelect:Landroid/widget/LinearLayout;

.field public mBtnSelectAll:Landroid/widget/LinearLayout;

.field public mBtnShare:Landroid/widget/LinearLayout;

.field public mCntMenuItem:I

.field private mContext:Landroid/content/Context;

.field private mControllerHeight:I

.field public mCurrentCountry:Ljava/lang/String;

.field private mCursorBottomXPosition:I

.field private mCursorBottomYPosition:I

.field public mCursorControllerMenuArrowDownView:Landroid/view/View;

.field public mCursorControllerMenuArrowUpView:Landroid/view/View;

.field public mCursorControllerMenuView:Landroid/view/View;

.field public mCursorControllerParent:Landroid/widget/TextView;

.field private mCursorPosition:Landroid/graphics/RectF;

.field private mCursorTopXPosition:I

.field private mCursorTopYPosition:I

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mIsCursorControllerDragging:Z

.field private mLife:Z

.field private mMenuAnimation:Landroid/view/ViewGroup;

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowDown:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowUp:Landroid/widget/PopupWindow;

.field private mSelectedText:Ljava/lang/CharSequence;

.field private mSplitCopy:Landroid/widget/ImageView;

.field private mSplitCut:Landroid/widget/ImageView;

.field private mSplitPaste:Landroid/widget/ImageView;

.field private mSplitSearch:Landroid/widget/ImageView;

.field private mSplitSelect:Landroid/widget/ImageView;

.field private mSplitSelectAll:Landroid/widget/ImageView;

.field private mSplitShare:Landroid/widget/ImageView;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "tv"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x3ea

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    iput-boolean v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mIsCursorControllerDragging:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    iput-boolean v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    iput-object p2, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentCountry:Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090014

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090015

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowDownView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090016

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowUpView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitShare:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowDownView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowUpView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x10202a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mMenuAnimation:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x10a004a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/widget/TextView$CursorControllerMenu$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/TextView$CursorControllerMenu$1;-><init>(Landroid/widget/TextView$CursorControllerMenu;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public calcMenuWidthHeight()V
    .locals 5

    .prologue
    const/high16 v4, 0x4160

    const v3, 0x4129999a

    const/16 v0, 0x47

    .local v0, tmpWidth:I
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x13

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x42bfcccc

    invoke-virtual {p0, v2}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public convertDipToPixel(F)I
    .locals 5
    .parameter "dip"

    .prologue
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, density:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float p1, v1

    :cond_0
    float-to-int v1, p1

    return v1
.end method

.method public getCursorControllerHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mControllerHeight:I

    return v0
.end method

.method public getLife()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    return v0
.end method

.method public hideCursorControllerMenu()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isThereAnyTextInClipboard()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .end local v0           #clip:Landroid/text/ClipboardManager;
    :goto_0
    return v1

    .restart local v0       #clip:Landroid/text/ClipboardManager;
    :cond_0
    move v1, v3

    goto :goto_0

    .end local v0           #clip:Landroid/text/ClipboardManager;
    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x1020029

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020028

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    :cond_0
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_1

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x102001f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020021

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    :cond_2
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_3

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020020

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    :cond_3
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020022

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    :cond_4
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .local v3, selStart:I
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .local v2, selEnd:I
    if-le v3, v2, :cond_5

    move v4, v3

    .local v4, tmp:I
    move v3, v2

    move v2, v4

    .end local v4           #tmp:I
    :cond_5
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->showCursorControllerSearchDialog(Ljava/lang/String;)V

    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_6
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .restart local v3       #selStart:I
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .restart local v2       #selEnd:I
    if-le v3, v2, :cond_7

    move v4, v3

    .restart local v4       #tmp:I
    move v3, v2

    move v2, v4

    .end local v4           #tmp:I
    :cond_7
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intentShareText:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "text/plain"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v6, 0x1040465

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .local v0, intentChooser:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x1000

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #intentChooser:Landroid/content/Intent;
    .end local v1           #intentShareText:Landroid/content/Intent;
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_8
    :goto_0
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x102018b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    :cond_9
    return-void

    .restart local v0       #intentChooser:Landroid/content/Intent;
    .restart local v1       #intentShareText:Landroid/content/Intent;
    .restart local v2       #selEnd:I
    .restart local v3       #selStart:I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public setCursorControllerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    iput p1, p0, Landroid/widget/TextView$CursorControllerMenu;->mControllerHeight:I

    return-void
.end method

.method public setLife(Z)V
    .locals 0
    .parameter "life"

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    return-void
.end method

.method public showCursorControllerMenu()V
    .locals 24

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->updateButtonVisibility()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->calcMenuWidthHeight()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    move/from16 v21, v0

    if-nez v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    :goto_0
    return-void

    :cond_0
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .local v7, cursorPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    .local v16, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v15

    .local v15, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move v1, v15

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    move/from16 v0, v16

    move v1, v15

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v16

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .local v18, tmpLocOnWin:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v6, v21, v22

    .local v6, bottomCenter:F
    const/16 v21, 0x0

    aget v21, v18, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v20

    .local v20, widthArrowX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    .local v9, heightArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    div-int/lit8 v22, v20, 0x2

    sub-int v21, v21, v22

    const/16 v22, 0x1

    sub-int v10, v21, v22

    .local v10, posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    add-int/lit8 v11, v21, 0x0

    .local v11, posArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    mul-int/lit8 v22, v20, 0x3

    sub-int v12, v21, v22

    .local v12, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    add-int/lit8 v13, v21, 0x2

    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v19

    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v14, v0

    .local v14, screenWidth:I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .local v17, tmpLocOnScr:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/16 v21, 0x0

    aget v21, v17, v21

    const/16 v22, 0x0

    aget v22, v18, v22

    sub-int v5, v21, v22

    .local v5, activityPadding:I
    if-nez v5, :cond_6

    if-gtz v12, :cond_4

    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    :cond_2
    :goto_1
    const/16 v21, 0x28

    move v0, v13

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    add-int v21, v21, v9

    const/16 v22, 0x14

    sub-int v13, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    const/high16 v21, 0x4040

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    sub-int v13, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    const/16 v22, 0x14

    sub-int v11, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mMenuAnimation:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_4
    add-int v21, v12, v19

    move/from16 v0, v21

    move v1, v14

    if-le v0, v1, :cond_2

    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_1

    :cond_5
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v12, v14, v21

    goto/16 :goto_1

    :cond_6
    add-int v21, v12, v19

    add-int v21, v21, v5

    move/from16 v0, v21

    move v1, v14

    if-gt v0, v1, :cond_7

    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_1

    :cond_7
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    sub-int v12, v21, v5

    goto/16 :goto_1

    :cond_8
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v21, v14, v21

    sub-int v12, v21, v5

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_c
    const/high16 v21, 0x4188

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    add-int v13, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_3
.end method

.method public updateButtonVisibility()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canSelectText()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getIsInTextSelectionMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isTextEditable()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEnableSelection:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mInputType:I
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)I

    move-result v1

    #calls: Landroid/widget/TextView;->isPasswordInputType(I)Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    goto/16 :goto_0
.end method

.method public updateCursorControllerMenu()V
    .locals 24

    .prologue
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .local v7, cursorPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    .local v16, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v15

    .local v15, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move v1, v15

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    move/from16 v0, v16

    move v1, v15

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v16

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .local v18, tmpLocOnWin:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v6, v21, v22

    .local v6, bottomCenter:F
    const/16 v21, 0x0

    aget v21, v18, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v20

    .local v20, widthArrowX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    .local v9, heightArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    div-int/lit8 v22, v20, 0x2

    sub-int v21, v21, v22

    const/16 v22, 0x1

    sub-int v10, v21, v22

    .local v10, posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    add-int/lit8 v11, v21, 0x0

    .local v11, posArrowY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v21, v0

    mul-int/lit8 v22, v20, 0x3

    sub-int v12, v21, v22

    .local v12, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v21, v0

    sub-int v21, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    add-int/lit8 v13, v21, 0x2

    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v19

    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v14, v0

    .local v14, screenWidth:I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .local v17, tmpLocOnScr:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/16 v21, 0x0

    aget v21, v17, v21

    const/16 v22, 0x0

    aget v22, v18, v22

    sub-int v5, v21, v22

    .local v5, activityPadding:I
    if-nez v5, :cond_5

    if-gtz v12, :cond_3

    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    :cond_1
    :goto_0
    const/16 v21, 0x28

    move v0, v13

    move/from16 v1, v21

    if-gt v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    add-int v21, v21, v9

    const/16 v22, 0x14

    sub-int v13, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    const/high16 v21, 0x4040

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    sub-int v13, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v22

    add-int v21, v21, v22

    const/16 v22, 0x14

    sub-int v11, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_2
    return-void

    :cond_3
    add-int v21, v12, v19

    move/from16 v0, v21

    move v1, v14

    if-le v0, v1, :cond_1

    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_0

    :cond_4
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v12, v14, v21

    goto/16 :goto_0

    :cond_5
    add-int v21, v12, v19

    add-int v21, v21, v5

    move/from16 v0, v21

    move v1, v14

    if-gt v0, v1, :cond_6

    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v12, v21, -0x1

    goto/16 :goto_0

    :cond_6
    const/16 v21, 0x20

    sub-int v21, v19, v21

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    const/high16 v21, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    mul-int/lit8 v21, v21, -0x1

    sub-int v12, v21, v5

    goto/16 :goto_0

    :cond_7
    const/16 v21, 0x20

    sub-int v21, v19, v21

    sub-int v21, v14, v21

    sub-int v12, v21, v5

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_b
    const/high16 v21, 0x4188

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v21

    add-int v13, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    move v2, v13

    move/from16 v3, v19

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    move v2, v11

    move/from16 v3, v20

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2
.end method
