.class public Lcom/android/phone/DeleteFdnContactScreen;
.super Landroid/app/Activity;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2:Ljava/lang/String;

.field protected mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/DeleteFdnContactScreen;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DeleteFdnContactScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DeleteFdnContactScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/DeleteFdnContactScreen;->handleResult(Z)V

    return-void
.end method

.method private authenticatePin2()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    const-class v1, Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 136
    return-void
.end method

.method private deleteContact()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v6, buf:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v0, "\' AND pin2=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 127
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    .line 128
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 130
    return-void

    .line 116
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    const-string v0, "tag=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, "\' AND number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private displayProgress(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 142
    return-void

    .line 139
    :cond_0
    const/4 v2, -0x2

    goto :goto_0
.end method

.method private handleResult(Z)V
    .locals 8
    .parameter "success"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 154
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0140

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 200
    :goto_0
    iget-object v4, p0, Lcom/android/phone/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/DeleteFdnContactScreen$3;

    invoke-direct {v5, p0}, Lcom/android/phone/DeleteFdnContactScreen$3;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    return-void

    .line 160
    :cond_0
    iget-object v4, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoRefresh()Lcom/android/internal/telephony/SimLockInfoResult;

    .line 162
    const-wide/16 v4, 0x190

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    iget-object v4, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockKey()I

    move-result v2

    .line 166
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

    invoke-direct {p0, v4}, Lcom/android/phone/DeleteFdnContactScreen;->log(Ljava/lang/String;)V

    .line 167
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 169
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .local v1, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 172
    const v4, 0x7f0d0288

    invoke-virtual {p0, v4}, Lcom/android/phone/DeleteFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 173
    const v4, 0x7f0d0157

    invoke-virtual {p0, v4}, Lcom/android/phone/DeleteFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 174
    const v4, 0x7f0d002f

    new-instance v5, Lcom/android/phone/DeleteFdnContactScreen$1;

    invoke-direct {v5, p0}, Lcom/android/phone/DeleteFdnContactScreen$1;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 182
    new-instance v4, Lcom/android/phone/DeleteFdnContactScreen$2;

    invoke-direct {v4, p0}, Lcom/android/phone/DeleteFdnContactScreen$2;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 193
    .end local v1           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SimLockInfoResult;->getPin2Retry()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 194
    .local v3, values:[Ljava/lang/String;
    const v4, 0x7f0d028a

    invoke-virtual {p0, v4}, Lcom/android/phone/DeleteFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/phone/DeleteFdnContactScreen;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 195
    .local v0, attemptString:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

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

    invoke-direct {p0, v4}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 164
    .end local v0           #attemptString:Ljava/lang/CharSequence;
    .end local v2           #lockKey:I
    .end local v3           #values:[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 233
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DeleteFdnContact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method private resolveIntent()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    .line 104
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->finish()V

    .line 109
    :cond_0
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "statusMsg"

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 84
    :pswitch_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    .line 85
    .local v0, extras:Landroid/os/Bundle;
    :goto_1
    if-eqz v0, :cond_1

    .line 86
    const-string v1, "pin2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 89
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->deleteContact()V

    goto :goto_0

    .line 84
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_1

    .line 93
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->finish()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->resolveIntent()V

    .line 69
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->authenticatePin2()V

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 74
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->setContentView(I)V

    .line 75
    return-void
.end method
