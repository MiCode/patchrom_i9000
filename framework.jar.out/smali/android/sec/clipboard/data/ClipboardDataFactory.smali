.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .parameter "format"

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    packed-switch p0, :pswitch_data_0

    .line 42
    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 28
    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 31
    :pswitch_1
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 32
    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 35
    :pswitch_2
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 36
    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
