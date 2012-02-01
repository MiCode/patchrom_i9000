.class public Landroid/webkit/HtmlComposerInputConnection;
.super Ljava/lang/Object;
.source "HtmlComposerInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR_BLUE:I = -0xf0001

.field private static final BACKGROUND_COLOR_GREEN:I = -0x993256

.field private static final BACKGROUND_COLOR_PURPLE:I = -0x777701

.field private static final BACKGROUND_COLOR_SKYBLUE:I = -0x604933

.field static final COMPOSING:Ljava/lang/Object; = null

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerInputConnection"


# instance fields
.field final MAX_SPANS:I

.field private bBeginBatchEdit:Z

.field bShadeColor:Z

.field composingEnd:I

.field composingStart:I

.field curSelEnd:I

.field curSelStart:I

.field currCompText:Ljava/lang/CharSequence;

.field isInComposingState:Z

.field private mBGColorSpans:[Landroid/text/style/BackgroundColorSpan;

.field private mBackGroundColorSpan:[I

.field mBatchEditNesting:I

.field private mColorSpans:[Landroid/text/style/ForegroundColorSpan;

.field private mCursorPosition:I

.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field spanData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/webkit/ComposingText;

    invoke-direct {v0}, Landroid/webkit/ComposingText;-><init>()V

    sput-object v0, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 3
    .parameter "targetView"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mCursorPosition:I

    const/16 v0, 0xff

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->MAX_SPANS:I

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    return-void
.end method

.method private replaceTextToHtml(Ljava/lang/CharSequence;IZ)V
    .locals 17
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    const/4 v15, 0x0

    const/4 v14, -0x1

    const-string v16, "HtmlComposerInputConnection"

    const-string v11, "HtmlComposerInputConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "replaceTextToHtml called here"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v11, v0

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v9, 0x0

    .local v9, sp:Landroid/text/Spanned;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    move v5, v0

    .local v5, a:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    move v6, v0

    .local v6, b:I
    if-ne v5, v14, :cond_2

    if-ne v6, v14, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    move v6, v0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/Vector;->clear()V

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v11, v0

    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v9, v0

    invoke-static {v9}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v7

    .local v7, htmltext:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->getSpanData(Landroid/text/Spanned;)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v11, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    move-object v13, v0

    move-object v0, v11

    move-object v1, v12

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/HtmlComposerView;->insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;

    move-result-object v8

    .local v8, m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    const-string v11, "HtmlComposerInputConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Selection offset value start "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",End:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_6

    iget v11, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    add-int/2addr v11, v5

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v11, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    add-int/2addr v11, v5

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v5, v11

    if-lez p2, :cond_7

    const/4 v11, 0x1

    sub-int v11, v5, v11

    add-int v11, v11, p2

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v11, v0

    if-gez v11, :cond_4

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v11, v0

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .end local v7           #htmltext:Ljava/lang/String;
    .end local v8           #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #htmltext:Ljava/lang/String;
    if-eqz p3, :cond_3

    new-instance v10, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .local v10, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v15, v10, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    iput v11, v10, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    iput-boolean v15, v10, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    move-object v11, v0

    invoke-virtual {v11, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v10           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    .restart local v8       #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_6
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    goto :goto_2

    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    sub-int v11, v5, v11

    add-int v11, v11, p2

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto :goto_3
.end method

.method private updateInputMethodSelection()V
    .locals 8

    .prologue
    const-string v7, "HtmlComposerInputConnection"

    const-string v6, " "

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->updateIMSelectionToEditor(II)V

    :cond_0
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v1, :cond_1

    const-string v1, "HtmlComposerInputConnection"

    const-string v1, "return without updateInputMethodSelection as  bBeginBatchEdit is TRUE.........."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    const-string v1, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInputMethodSelection curSelStart curSelEnd composingStart, composingEnd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "HtmlComposerInputConnection"

    const-string v1, "updateInputMethodSelection exit"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "arg0"

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "clearMetaKeyStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 4
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v3, 0x0

    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    invoke-direct {p0, p1, p2, v3}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 4
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v3, 0x0

    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSurroundingText left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rgh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->deleteSurroundingText(II)V

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v0, :cond_1

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    :cond_1
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    return v3
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishComposingText  composingStart   composingEnd  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .parameter "reqModes"

    .prologue
    const-string v3, "HtmlComposerInputConnection"

    const-string v4, "getCursorCapsMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .local v1, arbOffset:I
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, textBeforCursor:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, a:I
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 9
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string v7, "HtmlComposerInputConnection"

    const-string v4, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtractedText request.hintMaxChars "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request.hintMaxLines "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v4, :cond_0

    move-object v4, v8

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->beginBatchEdit()Z

    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {p0, v4, v6}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, textBeforCursor:Ljava/lang/String;
    const/16 v4, 0xf

    invoke-virtual {p0, v4, v6}, Landroid/webkit/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, textAfetrCursor:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const-string v5, ""

    if-ne v4, v5, :cond_2

    :cond_1
    move-object v4, v8

    goto :goto_0

    :cond_2
    iput v6, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    iput v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    const/4 v4, -0x1

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    const-string v4, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtractedText outText.selectionStart "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " outText.selectionEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "outText.startOffset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->endBatchEdit()Z

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v4, :cond_3

    const-string v4, "HtmlComposerInputConnection"

    const-string v4, "getExtractedText return without update"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_4

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4, v6, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    :cond_4
    move-object v4, v1

    goto/16 :goto_0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "flags"

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "getSelectedText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method getSpanData(Landroid/text/Spanned;)V
    .locals 9
    .parameter "text"

    .prologue
    const-class v8, Landroid/text/style/CharacterStyle;

    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v3

    .local v3, spanLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_3

    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v3, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .local v2, next:I
    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v2, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    .local v4, style:[Landroid/text/style/CharacterStyle;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_2

    aget-object v6, v4, v1

    instance-of v6, v6, Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_0

    new-instance v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v5, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .local v5, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    iput v2, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    aget-object v6, v4, v1

    check-cast v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    const/high16 v7, 0x100

    add-int/2addr v6, v7

    iput v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->highLightColor:I

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v5           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_0
    aget-object v6, v4, v1

    instance-of v6, v6, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_1

    new-instance v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v5, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .restart local v5       #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    iput v2, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v5           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    .end local v1           #j:I
    .end local v2           #next:I
    .end local v4           #style:[Landroid/text/style/CharacterStyle;
    :cond_3
    return-void
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "n"
    .parameter "flags"

    .prologue
    const-string v8, ""

    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v5, :cond_0

    const-string v5, ""

    move-object v5, v8

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v6, Landroid/webkit/WebView$CursorDirection;->FORWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    .local v4, retText:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    aget-char v1, v0, v2

    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    aput-char v5, v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #chrVal:C
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .local v3, rText:Ljava/lang/String;
    move-object v4, v3

    .end local v0           #arr:[C
    .end local v2           #i:I
    .end local v3           #rText:Ljava/lang/String;
    :cond_3
    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTextAfterCursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    if-nez v4, :cond_4

    const-string v5, ""

    move-object v5, v8

    goto :goto_0

    :cond_4
    move-object v5, v4

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 13
    .parameter "n"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const-string v12, "\n"

    const-string v11, ""

    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v8, :cond_0

    const-string v8, ""

    move-object v8, v11

    :goto_0
    return-object v8

    :cond_0
    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v9, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v8, p1, v9}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v6

    .local v6, retText:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr:[C
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_2

    aget-char v1, v0, v4

    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    aput-char v8, v0, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #chrVal:C
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    .local v5, rText:Ljava/lang/String;
    move-object v6, v5

    .end local v0           #arr:[C
    .end local v4           #i:I
    .end local v5           #rText:Ljava/lang/String;
    :cond_3
    if-nez v6, :cond_4

    const-string v8, ""

    move-object v6, v11

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, p1, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-ge v8, v9, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v2, p1, v8

    .local v2, diffLen:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v7, tempString:Ljava/lang/StringBuilder;
    const-string v8, "\n"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .local v3, extCnt:I
    :goto_2
    sub-int v8, v2, v10

    if-ge v3, v8, :cond_5

    const-string v8, "X"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    if-le v2, v10, :cond_6

    const-string v8, "\n"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v2           #diffLen:I
    .end local v3           #extCnt:I
    .end local v7           #tempString:Ljava/lang/StringBuilder;
    :cond_7
    const-string v8, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTextBeforeCursor "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " n "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " flags "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    if-nez v6, :cond_8

    const-string v8, ""

    move-object v8, v11

    goto/16 :goto_0

    :cond_8
    move-object v8, v6

    goto/16 :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 4
    .parameter "id"

    .prologue
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performContextMenuAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, retVal:Z
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_1
.end method

.method public performEditorAction(I)Z
    .locals 17
    .parameter "editorAction"

    .prologue
    const-string v2, "HtmlComposerInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performEditorAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .local v3, eventTime:J
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "performPrivateCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public removeComposingSpan()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "removeComposingSpan called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    goto :goto_0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/16 v9, 0x16

    const/16 v8, 0x13

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v10, "HtmlComposerInputConnection"

    const-string v4, "HtmlComposerInputConnection"

    const-string v4, "sendKeyEvent"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v4, :cond_0

    move v4, v6

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eq v4, v7, :cond_2

    move v0, v7

    .local v0, down:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .local v2, keyCode:I
    const-string v4, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendKeyEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v2, v8, :cond_9

    if-gt v2, v9, :cond_9

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v3

    .local v3, selctionAtBoundry:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    if-eqz v0, :cond_1

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v2}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_1
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v7

    goto :goto_0

    .end local v0           #down:Z
    .end local v2           #keyCode:I
    .end local v3           #selctionAtBoundry:I
    :cond_2
    move v0, v6

    goto :goto_1

    .restart local v0       #down:Z
    .restart local v2       #keyCode:I
    .restart local v3       #selctionAtBoundry:I
    :cond_3
    if-nez v3, :cond_6

    if-eq v2, v9, :cond_4

    const/16 v4, 0x14

    if-ne v2, v4, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v2}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_5
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v7

    goto :goto_0

    :cond_6
    if-ne v3, v7, :cond_10

    if-eq v2, v8, :cond_7

    const/16 v4, 0x15

    if-ne v2, v4, :cond_10

    :cond_7
    if-eqz v0, :cond_8

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v2}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_8
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v7

    goto :goto_0

    .end local v3           #selctionAtBoundry:I
    :cond_9
    const/16 v4, 0x3d

    if-ne v4, v2, :cond_b

    if-eqz v0, :cond_a

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v5, "InsertText"

    const-string v6, "    "

    invoke-virtual {v4, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v7}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    :cond_a
    move v4, v7

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x42

    if-ne v2, v4, :cond_d

    if-eqz v0, :cond_c

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v5, "InsertText"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    :cond_c
    move v4, v7

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x43

    if-ne v2, v4, :cond_10

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v5, ""

    invoke-virtual {v4, v5, v7}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    sub-int/2addr v4, v7

    iput v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v4, :cond_f

    move v4, v6

    :goto_2
    iput v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    :cond_e
    move v4, v7

    goto/16 :goto_0

    :cond_f
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto :goto_2

    :cond_10
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .local v1, h:Landroid/os/Handler;
    if-eqz v1, :cond_11

    const/16 v4, 0x3f3

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    move v4, v7

    goto/16 :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setComposingRegion start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->setComposingRegion(II)V

    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    move v0, v3

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 4
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v3, 0x1

    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setComposingText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    invoke-direct {p0, p1, p2, v3}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    move v0, v3

    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelection start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTargetNull()V
    .locals 2

    .prologue
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection setTargetNull()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    return-void
.end method

.method public updateInputMethodSelectionWithRandom()V
    .locals 6

    .prologue
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .local v1, randm:Ljava/util/Random;
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .local v0, randNum:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    const-string v3, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInputMethodSelection curSelStart curSelEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    return-void
.end method
