.class public Lcom/android/phone/EditFdnContactScreen;
.super Landroid/app/Activity;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditFdnContactScreen$QueryHandler;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field final ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

.field capaUri:Landroid/net/Uri;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAddContact:Z

.field private mButton:Landroid/widget/Button;

.field private mCancel:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field protected mCursor:Landroid/database/Cursor;

.field private mDataBusy:Z

.field private mHandler:Landroid/os/Handler;

.field private mIndex:Ljava/lang/String;

.field private mMax_Count:I

.field private mName:Ljava/lang/String;

.field private mNameField:Landroid/widget/EditText;

.field private mName_MaxLength:I

.field private mNumber:Ljava/lang/String;

.field private mNumberField:Landroid/widget/EditText;

.field private mNumber_MaxLength:I

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2:Ljava/lang/String;

.field private mPin2Field:Landroid/widget/EditText;

.field private mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mUsedCount:I

.field private toastAlert:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "%d"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->SRC_TAGS:[Ljava/lang/String;

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->NUM_PROJECTION:[Ljava/lang/String;

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 145
    sget-object v0, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mCursor:Landroid/database/Cursor;

    .line 124
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "maxCount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "usedCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "firstIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name_MaxLength"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number_MaxLength"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 132
    const-string v0, "content://icc/capacity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->capaUri:Landroid/net/Uri;

    .line 323
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$2;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    .line 615
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$8;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$8;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    .line 715
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$9;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$9;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    .line 725
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/EditFdnContactScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/EditFdnContactScreen;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mTelMan:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/EditFdnContactScreen;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen;->mTelMan:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->authenticatePin2()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/EditFdnContactScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->addContact()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->updateContact()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/EditFdnContactScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/phone/EditFdnContactScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/phone/EditFdnContactScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/phone/EditFdnContactScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/EditFdnContactScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/EditFdnContactScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/EditFdnContactScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/EditFdnContactScreen;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/EditFdnContactScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/EditFdnContactScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    return p1
.end method

.method private addContact()V
    .locals 6

    .prologue
    .line 446
    iget v2, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    iget v3, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    if-gt v2, v3, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0287

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/EditFdnContactScreen$4;

    invoke-direct {v3, p0}, Lcom/android/phone/EditFdnContactScreen$4;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 476
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v1

    .line 465
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 466
    .local v0, bundle:Landroid/content/ContentValues;
    const-string v2, "tag"

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v2, "number"

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v2, "pin2"

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 472
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 473
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    goto :goto_0
.end method

.method private authenticatePin2()V
    .locals 1

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getPin2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    .line 518
    return-void
.end method

.method private deleteSelected()V
    .locals 3

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 504
    const-class v1, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 505
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v1, "adn_index"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mIndex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->startActivity(Landroid/content/Intent;)V

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    .line 511
    return-void
.end method

.method private displayProgress(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    .line 523
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 528
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 529
    return-void

    .line 523
    :cond_0
    const/4 v2, -0x2

    goto :goto_0

    .line 528
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getContentURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 427
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getNameFromTextField()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, returnName:Ljava/lang/String;
    return-object v0
.end method

.method private getNumberFromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(ZZ)V
    .locals 8
    .parameter "success"
    .parameter "invalidNumber"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 545
    if-eqz p1, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0d013a

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/EditFdnContactScreen$5;

    invoke-direct {v5, p0}, Lcom/android/phone/EditFdnContactScreen$5;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 613
    :goto_1
    return-void

    .line 547
    :cond_0
    const v5, 0x7f0d013d

    goto :goto_0

    .line 557
    :cond_1
    if-eqz p2, :cond_2

    .line 558
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0142

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 560
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 566
    :cond_2
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoRefresh()Lcom/android/internal/telephony/SimLockInfoResult;

    .line 568
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockKey()I

    move-result v2

    .line 569
    .local v2, lockKey:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLockKey() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 570
    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    .line 572
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 573
    .local v1, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 575
    const v4, 0x7f0d0288

    invoke-virtual {p0, v4}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 576
    const v4, 0x7f0d0157

    invoke-virtual {p0, v4}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 577
    const v4, 0x7f0d002f

    new-instance v5, Lcom/android/phone/EditFdnContactScreen$6;

    invoke-direct {v5, p0}, Lcom/android/phone/EditFdnContactScreen$6;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 585
    new-instance v4, Lcom/android/phone/EditFdnContactScreen$7;

    invoke-direct {v4, p0}, Lcom/android/phone/EditFdnContactScreen$7;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 607
    .end local v1           #err_builder:Landroid/app/AlertDialog$Builder;
    :goto_2
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 599
    :cond_3
    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SimLockInfoResult;->getPin2Retry()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 600
    .local v3, values:[Ljava/lang/String;
    const v4, 0x7f0d028a

    invoke-virtual {p0, v4}, Lcom/android/phone/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/phone/EditFdnContactScreen;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 602
    .local v0, attemptString:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0141

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 604
    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 928
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EditFdnContact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void
.end method

.method private resolveIntent()V
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 315
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    .line 316
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 317
    const-string v1, "adn_index"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mIndex:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    .line 322
    :cond_0
    return-void
.end method

.method private setupView()V
    .locals 4

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(0)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(1)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(2)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(3)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 353
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    .line 354
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$3;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$3;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 363
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 364
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 368
    :cond_1
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    .line 370
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    :cond_2
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    .line 378
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 382
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 384
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 385
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_5

    .line 392
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 397
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_5
    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    .line 402
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mCancel:Landroid/widget/Button;

    .line 405
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "statusMsg"

    .prologue
    .line 536
    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 542
    :cond_0
    return-void
.end method

.method private updateContact()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 482
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    .line 484
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .local v4, bundle:Landroid/content/ContentValues;
    const-string v0, "tag"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v0, "number"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "newTag"

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "newNumber"

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v0, "pin2"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 492
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    const/4 v1, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 494
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 495
    return-void
.end method


# virtual methods
.method public getByteArrayText(Ljava/lang/String;)[B
    .locals 11
    .parameter "text"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const-string v10, "byteArrayText"

    const-string v8, "EditFdnContactScreen"

    .line 871
    new-array v0, v5, [B

    .line 872
    .local v0, byteArrayText:[B
    new-array v1, v5, [B

    .line 873
    .local v1, byteArrayTextTemp:[B
    const/4 v4, 0x0

    .line 877
    .local v4, isEncodable:Z
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    .line 878
    const/4 v4, 0x1

    .line 879
    const-string v5, "EditFdnContactScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    if-eqz v4, :cond_0

    .line 888
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 889
    const-string v5, "EditFdnContactScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrayText"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :goto_1
    return-object v0

    .line 881
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 882
    .local v3, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 v4, 0x0

    .line 883
    const-string v5, "EditFdnContactScreen"

    const-string v5, "inNotEncodable"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 896
    .end local v3           #ex:Lcom/android/internal/telephony/EncodeException;
    :cond_0
    :try_start_1
    const-string v5, "ISO-10646-UCS-2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 897
    array-length v5, v1

    new-array v0, v5, [B

    .line 898
    const/4 v5, 0x2

    const/4 v6, 0x0

    array-length v7, v1

    sub-int/2addr v7, v9

    invoke-static {v1, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    const-string v5, "EditFdnContactScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrayText"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 900
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 902
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v7, "PhoneApp"

    .line 210
    packed-switch p1, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/EditFdnContactScreen;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 237
    const-string v0, "PhoneApp"

    const-string v0, "onActivityResult: bad contact data, query return null."

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    const-string v0, "PhoneApp"

    const-string v0, "onActivityResult: bad contact data, no results found."

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 245
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 247
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 248
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 249
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$1;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 210
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 157
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->capaUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    const-string v5, "EF_TYPE = 28475"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 167
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->resolveIntent()V

    .line 169
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 170
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->setContentView(I)V

    .line 171
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->setupView()V

    .line 172
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0138

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->setTitle(I)V

    .line 175
    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    .line 177
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    .line 183
    return-void

    .line 172
    :cond_0
    const v0, 0x7f0d013b

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f0d01b3

    const v2, 0x7f020138

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 268
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 269
    .local v0, r:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 273
    const/4 v1, 0x2

    const v2, 0x7f0d0133

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020139

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 282
    :goto_0
    return v4

    .line 277
    :cond_0
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 301
    :pswitch_0
    sget-object v0, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EditFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    .line 302
    goto :goto_0

    .line 305
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->deleteSelected()V

    move v0, v2

    .line 306
    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 291
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 190
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 191
    return-void
.end method
