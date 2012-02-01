.class Lcom/android/phone/EditFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    .line 727
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 728
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 866
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 853
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/EditFdnContactScreen;->access$2100(Lcom/android/phone/EditFdnContactScreen;Z)V

    .line 854
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/EditFdnContactScreen;->access$2200(Lcom/android/phone/EditFdnContactScreen;ZZ)V

    .line 855
    return-void

    :cond_0
    move v1, v2

    .line 854
    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "onQueryComplete: cursor.getShort(0)="

    .line 737
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete: cursor.count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 738
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 739
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete: cursor.getShort(0)="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 740
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete: cursor.getShort(1)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete: cursor.getShort(2)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 742
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete: cursor.getShort(3)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 743
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete: cursor.getShort(4)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 746
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    #setter for: Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1802(Lcom/android/phone/EditFdnContactScreen;I)I

    .line 747
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    #setter for: Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1902(Lcom/android/phone/EditFdnContactScreen;I)I

    .line 748
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    #setter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$902(Lcom/android/phone/EditFdnContactScreen;I)I

    .line 749
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    #setter for: Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$2002(Lcom/android/phone/EditFdnContactScreen;I)I

    .line 750
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete: cursor.getShort(0)="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$1800(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 751
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete: cursor.getShort(1)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$1900(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 752
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete: cursor.getShort(3)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$900(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 753
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete: cursor.getShort(4)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$2000(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 756
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iput-object p3, v2, Lcom/android/phone/EditFdnContactScreen;->mCursor:Landroid/database/Cursor;

    .line 759
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$900(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name_MaxLEngth)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$900(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 764
    new-array v0, v6, [Landroid/text/InputFilter;

    .line 765
    .local v0, NameFilterArray:[Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$900(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v5

    .line 766
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 806
    .end local v0           #NameFilterArray:[Landroid/text/InputFilter;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$2000(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    new-array v1, v6, [Landroid/text/InputFilter;

    .line 812
    .local v1, NumberFilterArray:[Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$2000(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    .line 813
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 814
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 816
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;

    invoke-direct {v3, p0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;-><init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 848
    .end local v1           #NumberFilterArray:[Landroid/text/InputFilter;
    :cond_1
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 860
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/EditFdnContactScreen;->access$2100(Lcom/android/phone/EditFdnContactScreen;Z)V

    .line 861
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    if-lez p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/EditFdnContactScreen;->access$2200(Lcom/android/phone/EditFdnContactScreen;ZZ)V

    .line 862
    return-void

    :cond_0
    move v1, v2

    .line 861
    goto :goto_0
.end method
