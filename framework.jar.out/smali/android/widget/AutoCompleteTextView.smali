.class public Landroid/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Landroid/widget/AutoCompleteTextView$PassThroughClickListener;,
        Landroid/widget/AutoCompleteTextView$Validator;,
        Landroid/widget/AutoCompleteTextView$DropDownListView;,
        Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Landroid/widget/AutoCompleteTextView$PopupScrollListener;,
        Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;,
        Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;,
        Landroid/widget/AutoCompleteTextView$ListSelectorHider;,
        Landroid/widget/AutoCompleteTextView$MyWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field private static final HINT_VIEW_ID:I = 0x17

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorId:I

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownDismissedOnCompletion:Z

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private final mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

.field private mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mFilter:Landroid/widget/Filter;

.field private mForceIgnoreOutsideTouch:Z

.field private mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mResizePopupRunnable:Ljava/lang/Runnable;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThreshold:I

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 164
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    .line 136
    new-instance v2, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    .line 139
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    .line 141
    iput-boolean v6, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 143
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    .line 145
    iput v4, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 148
    iput-object v5, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 154
    new-instance v2, Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;

    .line 1116
    new-instance v2, Landroid/widget/AutoCompleteTextView$1;

    invoke-direct {v2, p0}, Landroid/widget/AutoCompleteTextView$1;-><init>(Landroid/widget/AutoCompleteTextView;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v2, Landroid/widget/PopupWindow;

    const v3, 0x101006b

    invoke-direct {v2, p1, p2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    .line 172
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 174
    sget-object v2, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 178
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 181
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 183
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 185
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    .line 187
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    .line 194
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 199
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    .line 201
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    .line 204
    const v2, 0x1090066

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    .line 209
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v1

    .line 210
    .local v1, inputType:I
    and-int/lit8 v2, v1, 0xf

    if-ne v2, v6, :cond_0

    .line 212
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    .line 213
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setRawInputType(I)V

    .line 216
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    invoke-virtual {p0, v6}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 220
    new-instance v2, Landroid/widget/AutoCompleteTextView$MyWatcher;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    new-instance v2, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    .line 223
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/AutoCompleteTextView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView$DropDownListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/AutoCompleteTextView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/AutoCompleteTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 35

    .prologue
    .line 1293
    const/16 v29, 0x0

    .line 1295
    .local v29, otherHeights:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v11, v0

    .line 1296
    .local v11, adapter:Landroid/widget/ListAdapter;
    if-eqz v11, :cond_3

    .line 1297
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v25

    .line 1298
    .local v25, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v25, :cond_3

    .line 1299
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/16 v6, 0x14

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1300
    .local v15, count:I
    new-array v13, v15, [Landroid/view/inputmethod/CompletionInfo;

    .line 1301
    .local v13, completions:[Landroid/view/inputmethod/CompletionInfo;
    const/16 v31, 0x0

    .line 1303
    .local v31, realCount:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move v1, v15

    if-ge v0, v1, :cond_1

    .line 1304
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1305
    add-int/lit8 v31, v31, 0x1

    .line 1306
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v26

    .line 1307
    .local v26, item:Ljava/lang/Object;
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 1308
    .local v22, id:J
    new-instance v5, Landroid/view/inputmethod/CompletionInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v5

    move-wide/from16 v1, v22

    move/from16 v3, v21

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v5, v13, v21

    .line 1303
    .end local v22           #id:J
    .end local v26           #item:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 1313
    :cond_1
    move/from16 v0, v31

    move v1, v15

    if-eq v0, v1, :cond_2

    .line 1314
    move/from16 v0, v31

    new-array v0, v0, [Landroid/view/inputmethod/CompletionInfo;

    move-object/from16 v32, v0

    .line 1315
    .local v32, tmp:[Landroid/view/inputmethod/CompletionInfo;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v13

    move v1, v5

    move-object/from16 v2, v32

    move v3, v6

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1316
    move-object/from16 v13, v32

    .line 1319
    .end local v32           #tmp:[Landroid/view/inputmethod/CompletionInfo;
    :cond_2
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1323
    .end local v13           #completions:[Landroid/view/inputmethod/CompletionInfo;
    .end local v15           #count:I
    .end local v21           #i:I
    .end local v25           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v31           #realCount:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    if-nez v5, :cond_9

    .line 1324
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 1326
    .local v14, context:Landroid/content/Context;
    new-instance v5, Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/AutoCompleteTextView$ListSelectorHider;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    .line 1334
    new-instance v5, Landroid/widget/AutoCompleteTextView$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView$2;-><init>(Landroid/widget/AutoCompleteTextView;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1344
    new-instance v5, Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-direct {v5, v14}, Landroid/widget/AutoCompleteTextView$DropDownListView;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    invoke-virtual {v5, v11}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setFocusable(Z)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    new-instance v6, Landroid/widget/AutoCompleteTextView$3;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView$3;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    new-instance v6, Landroid/widget/AutoCompleteTextView$PopupScrollListener;

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/AutoCompleteTextView$PopupScrollListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1373
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object/from16 v16, v0

    .line 1375
    .local v16, dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;->getHintView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v20

    .line 1376
    .local v20, hintView:Landroid/view/View;
    if-eqz v20, :cond_5

    .line 1379
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1380
    .local v18, hintContainer:Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1382
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1385
    .local v19, hintParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1390
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v5

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v34

    .line 1391
    .local v34, widthSpec:I
    const/16 v17, 0x0

    .line 1392
    .local v17, heightSpec:I
    move-object/from16 v0, v20

    move/from16 v1, v34

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1394
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 1395
    .restart local v19       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v5, v6

    .line 1398
    move-object/from16 v16, v18

    .line 1401
    .end local v17           #heightSpec:I
    .end local v18           #hintContainer:Landroid/widget/LinearLayout;
    .end local v19           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v34           #widthSpec:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1414
    .end local v14           #context:Landroid/content/Context;
    .end local v20           #hintView:Landroid/view/View;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    const/4 v5, 0x1

    move/from16 v24, v5

    .line 1416
    .local v24, ignoreBottomDecorations:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-direct/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    move v7, v0

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v28

    .line 1421
    .local v28, maxHeight:I
    const/16 v30, 0x0

    .line 1422
    .local v30, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1423
    .local v12, background:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_7

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v12, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int v30, v5, v6

    .line 1428
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    move v5, v0

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_b

    .line 1429
    :cond_8
    add-int v5, v28, v30

    .line 1438
    :goto_3
    return v5

    .line 1403
    .end local v12           #background:Landroid/graphics/drawable/Drawable;
    .end local v16           #dropDownView:Landroid/view/ViewGroup;
    .end local v24           #ignoreBottomDecorations:Z
    .end local v28           #maxHeight:I
    .end local v30           #padding:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 1404
    .restart local v16       #dropDownView:Landroid/view/ViewGroup;
    const/16 v5, 0x17

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 1405
    .local v33, view:Landroid/view/View;
    if-eqz v33, :cond_6

    .line 1406
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 1408
    .restart local v19       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v5, v6

    goto/16 :goto_1

    .line 1414
    .end local v19           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v33           #view:Landroid/view/View;
    :cond_a
    const/4 v5, 0x0

    move/from16 v24, v5

    goto :goto_2

    .line 1432
    .restart local v12       #background:Landroid/graphics/drawable/Drawable;
    .restart local v24       #ignoreBottomDecorations:Z
    .restart local v28       #maxHeight:I
    .restart local v30       #padding:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    sub-int v9, v28, v29

    const/4 v10, 0x2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/AutoCompleteTextView$DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v27

    .line 1436
    .local v27, listContent:I
    if-lez v27, :cond_c

    add-int v29, v29, v30

    .line 1438
    :cond_c
    add-int v5, v27, v29

    goto :goto_3
.end method

.method private getDropDownAnchorView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1159
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    .line 1161
    :cond_0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    goto :goto_0
.end method

.method private getHintView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1442
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1443
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1445
    .local v0, hintView:Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    move-object v1, v0

    .line 1449
    .end local v0           #hintView:Landroid/widget/TextView;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v3

    goto :goto_0
.end method

.method private onClickImpl()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    .line 240
    :cond_0
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 7
    .parameter "selectedView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 937
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 939
    if-gez p2, :cond_1

    .line 940
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    .line 944
    .local v6, selectedItem:Ljava/lang/Object;
    :goto_0
    if-nez v6, :cond_2

    .line 945
    const-string v0, "AutoCompleteTextView"

    const-string/jumbo v2, "performCompletion: no selected item"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .end local v6           #selectedItem:Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 942
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .restart local v6       #selectedItem:Ljava/lang/Object;
    goto :goto_0

    .line 949
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 950
    invoke-virtual {p0, v6}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 953
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_5

    .line 954
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 956
    .local v1, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 957
    :cond_3
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 958
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result p2

    .line 959
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemId()J

    move-result-wide p3

    .line 961
    :cond_4
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 965
    .end local v1           #list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    .end local v6           #selectedItem:Ljava/lang/Object;
    :cond_5
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_0

    .line 966
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1
.end method

.method private updateDropDownForFilter(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 1020
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    if-gtz p1, :cond_2

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1030
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    .line 1033
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_0

    .line 1034
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 857
    .local v0, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    if-eqz v0, :cond_0

    .line 859
    const/4 v1, 0x1

    #setter for: Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 860
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->hideSelector()V

    .line 861
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->requestLayout()V

    .line 863
    :cond_0
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "selectedItem"

    .prologue
    .line 848
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1132
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1133
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1136
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1137
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1138
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 1139
    return-void
.end method

.method doAfterTextChanged()V
    .locals 2

    .prologue
    .line 803
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 817
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 823
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 824
    :cond_4
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method doBeforeTextChanged()V
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 2

    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureImeVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1180
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1182
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1183
    return-void

    .line 1180
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 892
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public getValidator()Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPerformingCompletion()Z
    .locals 1

    .prologue
    .line 975
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1080
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1081
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1085
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 1086
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 6
    .parameter "completion"

    .prologue
    .line 921
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 923
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 924
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 926
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 927
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 930
    .local v1, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getId()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 934
    .end local v1           #list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1098
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1105
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 1106
    return-void

    .line 1099
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 1048
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    .line 1049
    packed-switch p1, :pswitch_data_0

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1051
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 1049
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 1016
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1060
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1062
    if-nez p1, :cond_0

    .line 1063
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    .line 1065
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_1

    .line 1066
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1068
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 668
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 674
    const/16 v8, 0x3e

    if-eq p1, v8, :cond_8

    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v8

    if-gez v8, :cond_0

    const/16 v8, 0x42

    if-eq p1, v8, :cond_8

    const/16 v8, 0x17

    if-eq p1, v8, :cond_8

    .line 678
    :cond_0
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 681
    .local v4, curIndex:I
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    move v2, v8

    .line 683
    .local v2, below:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 686
    .local v0, adapter:Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 687
    .local v5, firstItem:I
    const/high16 v7, -0x8000

    .line 689
    .local v7, lastItem:I
    if-eqz v0, :cond_1

    .line 690
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 691
    .local v1, allEnabled:Z
    if-eqz v1, :cond_5

    const/4 v8, 0x0

    move v5, v8

    .line 693
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move v7, v8

    .line 697
    .end local v1           #allEnabled:Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    const/16 v8, 0x13

    if-ne p1, v8, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    const/16 v8, 0x14

    if-ne p1, v8, :cond_7

    if-lt v4, v7, :cond_7

    .line 701
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 702
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 703
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 704
    const/4 v8, 0x1

    .line 762
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v7           #lastItem:I
    :goto_3
    return v8

    .line 681
    .restart local v4       #curIndex:I
    :cond_4
    const/4 v8, 0x0

    move v2, v8

    goto :goto_0

    .line 691
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #allEnabled:Z
    .restart local v2       #below:Z
    .restart local v5       #firstItem:I
    .restart local v7       #lastItem:I
    :cond_5
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/AutoCompleteTextView$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    move v5, v8

    goto :goto_1

    .line 693
    :cond_6
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/AutoCompleteTextView$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    move v7, v8

    goto :goto_2

    .line 708
    .end local v1           #allEnabled:Z
    :cond_7
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    const/4 v9, 0x0

    #setter for: Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v8, v9}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 711
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8, p1, p2}, Landroid/widget/AutoCompleteTextView$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 714
    .local v3, consumed:Z
    if-eqz v3, :cond_a

    .line 717
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 722
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->requestFocusFromTouch()Z

    .line 723
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 725
    sparse-switch p1, :sswitch_data_0

    .line 754
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v7           #lastItem:I
    :cond_8
    :goto_4
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 755
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 756
    .local v6, handled:Z
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 758
    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v8, :cond_9

    .line 759
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    :cond_9
    move v8, v6

    .line 762
    goto :goto_3

    .line 732
    .end local v6           #handled:Z
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #below:Z
    .restart local v3       #consumed:Z
    .restart local v4       #curIndex:I
    .restart local v5       #firstItem:I
    .restart local v7       #lastItem:I
    :sswitch_0
    const/4 v8, 0x1

    goto :goto_3

    .line 735
    :cond_a
    if-eqz v2, :cond_b

    const/16 v8, 0x14

    if-ne p1, v8, :cond_b

    .line 738
    if-ne v4, v7, :cond_8

    .line 739
    const/4 v8, 0x1

    goto :goto_3

    .line 741
    :cond_b
    if-nez v2, :cond_8

    const/16 v8, 0x13

    if-ne p1, v8, :cond_8

    if-ne v4, v5, :cond_8

    .line 743
    const/4 v8, 0x1

    goto :goto_3

    .line 748
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v7           #lastItem:I
    :cond_c
    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 750
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    goto :goto_4

    .line 725
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 748
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 628
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_1

    .line 632
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 633
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v0, v1

    .line 643
    :goto_0
    return v0

    .line 635
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 636
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 637
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    move v0, v1

    .line 639
    goto :goto_0

    .line 643
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 649
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/AutoCompleteTextView$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 650
    .local v0, consumed:Z
    if-eqz v0, :cond_0

    .line 651
    sparse-switch p1, :sswitch_data_0

    .line 662
    .end local v0           #consumed:Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 657
    .restart local v0       #consumed:Z
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    .line 658
    const/4 v1, 0x1

    goto :goto_0

    .line 651
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 1040
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 1041
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1044
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 4

    .prologue
    .line 916
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 917
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 907
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 908
    return-void
.end method

.method public performValidation()V
    .locals 2

    .prologue
    .line 1484
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v1, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1486
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1488
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1489
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 1004
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearComposingText()V

    .line 1006
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1009
    .local v0, spannable:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1010
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    const/4 v2, 0x0

    .line 607
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_2

    .line 608
    new-instance v0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    .line 612
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 613
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 616
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 621
    :goto_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 624
    :cond_1
    return-void

    .line 609
    :cond_2
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 618
    :cond_3
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    goto :goto_1
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 252
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 253
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .parameter "dropDownAlwaysVisible"

    .prologue
    .line 454
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    .line 455
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 330
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    .line 332
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .parameter "animationStyle"

    .prologue
    .line 416
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 417
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 353
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 364
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0
    .parameter "dropDownDismissedOnCompletion"

    .prologue
    .line 475
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 476
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 306
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    .line 307
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 391
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    .line 392
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 373
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    .line 374
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 278
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    .line 279
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .parameter "forceIgnoreOutsideTouch"

    .prologue
    .line 1282
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    .line 1283
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 1145
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1146
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1149
    :cond_0
    return v0
.end method

.method public setListSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 871
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 873
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelection(I)V

    .line 876
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 228
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #setter for: Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->access$402(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 229
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 519
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 520
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 529
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 530
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 987
    if-eqz p2, :cond_0

    .line 988
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    :goto_0
    return-void

    .line 990
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 991
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 505
    if-gtz p1, :cond_0

    .line 506
    const/4 p1, 0x1

    .line 509
    :cond_0
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 510
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .parameter "validator"

    .prologue
    .line 1462
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1463
    return-void
.end method

.method public showDropDown()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 1196
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->buildDropDown()I

    move-result v6

    .line 1198
    .local v6, height:I
    const/4 v4, 0x0

    .line 1199
    .local v4, widthSpec:I
    const/4 v5, 0x0

    .line 1201
    .local v5, heightSpec:I
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isInputMethodNotNeeded()Z

    move-result v7

    .line 1203
    .local v7, noInputMethod:Z
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1204
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v8, :cond_0

    .line 1207
    const/4 v4, -0x1

    .line 1214
    :goto_0
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v8, :cond_6

    .line 1217
    if-eqz v7, :cond_2

    move v5, v6

    .line 1218
    :goto_1
    if-eqz v7, :cond_4

    .line 1219
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v1, v8, :cond_3

    move v1, v8

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1234
    :goto_3
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_8

    move v1, v9

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1236
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 1272
    :goto_5
    return-void

    .line 1208
    :cond_0
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v3, :cond_1

    .line 1209
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_0

    .line 1211
    :cond_1
    iget v4, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    goto :goto_0

    :cond_2
    move v5, v8

    .line 1217
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1219
    goto :goto_2

    .line 1223
    :cond_4
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v1, v8, :cond_5

    move v1, v8

    :goto_6
    invoke-virtual {v0, v1, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_6

    .line 1228
    :cond_6
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v3, :cond_7

    .line 1229
    move v5, v6

    goto :goto_3

    .line 1231
    :cond_7
    iget v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    goto :goto_3

    :cond_8
    move v1, v2

    .line 1234
    goto :goto_4

    .line 1239
    :cond_9
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v8, :cond_a

    .line 1240
    const/4 v4, -0x1

    .line 1249
    :goto_7
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v8, :cond_c

    .line 1250
    const/4 v5, -0x1

    .line 1259
    :goto_8
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1260
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1264
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_e

    move v1, v9

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1265
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1266
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1268
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0, v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelection(I)V

    .line 1269
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 1270
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 1242
    :cond_a
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v3, :cond_b

    .line 1243
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_7

    .line 1245
    :cond_b
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_7

    .line 1252
    :cond_c
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v3, :cond_d

    .line 1253
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_8

    .line 1255
    :cond_d
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_8

    :cond_e
    move v1, v2

    .line 1264
    goto :goto_9
.end method

.method public showDropDownAfterLayout()V
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 1171
    return-void
.end method
