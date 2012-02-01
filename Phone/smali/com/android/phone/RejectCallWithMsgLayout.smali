.class public Lcom/android/phone/RejectCallWithMsgLayout;
.super Landroid/widget/LinearLayout;
.source "RejectCallWithMsgLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;,
        Lcom/android/phone/RejectCallWithMsgLayout$updateThread;
    }
.end annotation


# static fields
.field private static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mBtnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RejectCallWithMsgLayout;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;

    .line 44
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCreateButton:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    .line 46
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 47
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;

    .line 56
    new-instance v1, Lcom/android/phone/RejectCallWithMsgLayout$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgLayout$1;-><init>(Lcom/android/phone/RejectCallWithMsgLayout;)V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03002f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/RejectCallWithMsgLayout;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/phone/RejectCallWithMsgLayout;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 100
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCreateButton:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/RejectCallWithMsgLayout$2;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgLayout$2;-><init>(Lcom/android/phone/RejectCallWithMsgLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    .line 113
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgLayout;->updateItemList()V

    .line 119
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "cm"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 127
    return-void
.end method

.method setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;

    .line 123
    return-void
.end method

.method updateItemList()V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    new-instance v1, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;-><init>(Lcom/android/phone/RejectCallWithMsgLayout;)V

    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;->start()V

    .line 134
    return-void
.end method
