.class public Lcom/samsung/sec/android/application/csc/CscBrowser;
.super Ljava/lang/Object;
.source "CscBrowser.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# instance fields
.field private final DEFAULT_CSC_FILE:Ljava/lang/String;

.field private final OTHERS_CSC_FILE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHomepageUrlRcvr:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mParser:Lcom/samsung/sec/android/application/csc/CscParser;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->OTHERS_CSC_FILE:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mResolver:Landroid/content/ContentResolver;

    .line 84
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mIntentFilter:Landroid/content/IntentFilter;

    .line 90
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CSC_BROWSER_HOMEPAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/samsung/sec/android/application/csc/CscBrowser$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/android/application/csc/CscBrowser$1;-><init>(Lcom/samsung/sec/android/application/csc/CscBrowser;)V

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mHomepageUrlRcvr:Landroid/content/BroadcastReceiver;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/android/application/csc/CscBrowser;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/android/application/csc/CscBrowser;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mHomepageUrlRcvr:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public compare()Ljava/lang/String;
    .locals 21

    .prologue
    .line 249
    const-string v3, "CSCBrowser"

    const-string v4, " ** compare runs.."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v12, Ljava/lang/String;

    const-string v3, "NOERROR"

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 255
    .local v12, answer:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscBrowser;->OTHERS_CSC_FILE:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    move-object v3, v0

    const-string v4, "BrowserData.HomePage.URL"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 259
    .local v16, homeUrl:Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "csc.preferences_name"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 261
    .local v19, sp:Landroid/content/SharedPreferences;
    const-string v3, "homepage"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 263
    .local v20, url:Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 264
    const-string v3, "CSCBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ** compare : homeUrl - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    const-string v3, "CSCBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ** compare : different homepage URL ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ").."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v3, "BrowserData.HomePage.URL"

    .line 371
    .end local v19           #sp:Landroid/content/SharedPreferences;
    .end local v20           #url:Ljava/lang/String;
    .end local p0
    :goto_0
    return-object v3

    .line 274
    .restart local v19       #sp:Landroid/content/SharedPreferences;
    .restart local v20       #url:Ljava/lang/String;
    .restart local p0
    :cond_0
    const-string v3, "CSCBrowser"

    const-string v4, " ** compare : Homepage NOERROR.."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v19           #sp:Landroid/content/SharedPreferences;
    .end local v20           #url:Ljava/lang/String;
    :goto_1
    const/4 v10, 0x0

    .line 287
    .local v10, FOUND_NO:I
    const/4 v11, 0x1

    .line 288
    .local v11, FOUND_TITLE:I
    const/4 v9, 0x2

    .line 289
    .local v9, FOUND_ALL:I
    const/4 v15, 0x0

    .line 292
    .local v15, fnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscBrowser;->DEFAULT_CSC_FILE:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/android/application/csc/CscBrowser;->getBookmarks()Ljava/util/ArrayList;

    move-result-object v13

    .line 296
    .local v13, bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "title"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "bookmark"

    aput-object v7, v5, v6

    const-string v6, "bookmark == 1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 307
    .local v14, dbCur:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 310
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    const/16 v17, 0x0

    .end local p0
    .local v17, i:I
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_2

    .line 317
    const/16 v18, 0x0

    .local v18, j:I
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v18

    move v1, v3

    if-ge v0, v1, :cond_1

    .line 324
    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 325
    const/4 v15, 0x1

    .line 333
    add-int/lit8 v3, v17, 0x1

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 334
    const/4 v15, 0x2

    .line 343
    :cond_1
    const/4 v3, 0x1

    if-ne v15, v3, :cond_6

    .line 344
    const-string v3, "CSCBrowser"

    const-string v4, " ** compare : Bookmark URL is missied.."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v12, "Settings.Browser.URL"

    .line 361
    .end local v18           #j:I
    :cond_2
    :goto_4
    const-string v3, "CSCBrowser"

    const-string v4, " ** compare : Bookmarks DONE.."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v14           #dbCur:Landroid/database/Cursor;
    .end local v17           #i:I
    :goto_5
    move-object v3, v12

    .line 371
    goto/16 :goto_0

    .line 277
    .end local v9           #FOUND_ALL:I
    .end local v10           #FOUND_NO:I
    .end local v11           #FOUND_TITLE:I
    .end local v13           #bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #fnd:I
    .restart local v19       #sp:Landroid/content/SharedPreferences;
    .restart local v20       #url:Ljava/lang/String;
    .restart local p0
    :cond_3
    const-string v3, "CSCBrowser"

    const-string v4, " ** compare : homepage url in preference is null.."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v3, "BrowserData.HomePage.URL"

    goto/16 :goto_0

    .line 282
    .end local v19           #sp:Landroid/content/SharedPreferences;
    .end local v20           #url:Ljava/lang/String;
    :cond_4
    const-string v3, "CSCBrowser"

    const-string v4, " ** compare : homepage url in xml is null, NOERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 340
    .end local p0
    .restart local v9       #FOUND_ALL:I
    .restart local v10       #FOUND_NO:I
    .restart local v11       #FOUND_TITLE:I
    .restart local v13       #bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #dbCur:Landroid/database/Cursor;
    .restart local v15       #fnd:I
    .restart local v17       #i:I
    .restart local v18       #j:I
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 317
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 349
    :cond_6
    if-nez v15, :cond_7

    .line 350
    const-string v3, "CSCBrowser"

    const-string v4, " ** compare : Bookmark Name is missed.."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v12, "Settings.Browser.BookmarkName"

    .line 354
    goto :goto_4

    .line 356
    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 357
    const/4 v15, 0x0

    .line 316
    add-int/lit8 v17, v17, 0x2

    goto/16 :goto_2

    .line 363
    .end local v17           #i:I
    .end local v18           #j:I
    .restart local p0
    :cond_8
    const-string v3, "CSCBrowser"

    const-string v4, " ** compare : Browser DB is empty.."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v12, "Settings.Browser."

    goto :goto_5

    .line 368
    .end local v14           #dbCur:Landroid/database/Cursor;
    :cond_9
    const-string v3, "CSCBrowser"

    const-string v4, " ** compare : No bookmarks were given. NOERROR.."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getBookmarks()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v12, "CSCBrowser"

    const-string v11, " ** getBookmarks ("

    .line 116
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v4, bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v10, "Settings.Browser."

    invoke-virtual {v9, v10}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 119
    .local v5, browserNode:Lorg/w3c/dom/Node;
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v10, "Bookmark"

    invoke-virtual {v9, v5, v10}, Lcom/samsung/sec/android/application/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 120
    .local v6, browserNodeList:Lorg/w3c/dom/NodeList;
    if-eqz v6, :cond_2

    .line 122
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 123
    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 125
    .local v7, browserNodeListChild:Lorg/w3c/dom/Node;
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v10, "BookmarkName"

    invoke-virtual {v9, v7, v10}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 126
    .local v0, bookmarkName:Lorg/w3c/dom/Node;
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v9, v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, bookmarkNames:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 129
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v10, "URL"

    invoke-virtual {v9, v7, v10}, Lcom/samsung/sec/android/application/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 130
    .local v2, bookmarkUrl:Lorg/w3c/dom/Node;
    iget-object v9, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    invoke-virtual {v9, v2}, Lcom/samsung/sec/android/application/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, bookmarkUrls:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v9, "CSCBrowser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ** getBookmarks ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v2           #bookmarkUrl:Lorg/w3c/dom/Node;
    .end local v3           #bookmarkUrls:Ljava/lang/String;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 137
    .restart local v2       #bookmarkUrl:Lorg/w3c/dom/Node;
    .restart local v3       #bookmarkUrls:Ljava/lang/String;
    :cond_0
    const-string v9, "CSCBrowser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ** getBookmarks ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") : bookmark url is null. Skip.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    .end local v2           #bookmarkUrl:Lorg/w3c/dom/Node;
    .end local v3           #bookmarkUrls:Ljava/lang/String;
    :cond_1
    const-string v9, "CSCBrowser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ** getBookmarks ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") : bookmark name is null. Skip.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    .end local v0           #bookmarkName:Lorg/w3c/dom/Node;
    .end local v1           #bookmarkNames:Ljava/lang/String;
    .end local v7           #browserNodeListChild:Lorg/w3c/dom/Node;
    .end local v8           #i:I
    :cond_2
    return-object v4
.end method

.method public update()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mHomepageUrlRcvr:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscBrowser;->updateBookmarks()V

    .line 383
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscBrowser;->updateHomePage()V

    .line 386
    return-void
.end method

.method public updateBookmarks()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "CSCBrowser"

    .line 154
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 156
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v6, "Settings.Browser.HistoryList"

    invoke-virtual {v5, v6}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, keepOriginalDB:Ljava/lang/String;
    const-string v5, "CSCBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBookmarks : keepOriginalDB = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 166
    const-string v5, "CSCBrowser"

    const-string v5, " ** updateBookmarks : Google default bookmarks are deleted.."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/samsung/sec/android/application/csc/CscBrowser;->getBookmarks()Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    .local v0, bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 177
    .local v4, size:I
    if-le v4, v9, :cond_3

    .line 179
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 181
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 182
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v3, map:Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v6, "url"

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v5, "date"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v5, "visits"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v5, "created"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v5, "bookmark"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v5, "folder"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    iget-object v5, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 193
    const-string v5, "CSCBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ** updateBookmarks : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v3           #map:Landroid/content/ContentValues;
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    .line 195
    :cond_0
    const-string v5, "CSCBrowser"

    const-string v5, " ** updateBookmarks : skipping null.."

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    :cond_1
    const-string v5, "CSCBrowser"

    const-string v5, " ** updateBookmarks : Bookmarks update DONE.."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1           #i:I
    .end local v4           #size:I
    :cond_2
    :goto_2
    return-void

    .line 199
    .restart local v4       #size:I
    :cond_3
    if-ne v4, v9, :cond_4

    .line 200
    const-string v5, "CSCBrowser"

    const-string v5, " ** updateBookmarks : only one filed is given. Give up updating."

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 202
    :cond_4
    const-string v5, "CSCBrowser"

    const-string v5, " ** updateBookmarks : Nothing to update.."

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateHomePage()V
    .locals 9

    .prologue
    const-string v8, "homepage"

    const-string v7, "CSCBrowser"

    .line 213
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 215
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v5, "BrowserData.HomePage.URL"

    invoke-virtual {v4, v5}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, homeUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 218
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, it:Landroid/content/Intent;
    const-string v4, "homepage"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    iget-object v4, p0, Lcom/samsung/sec/android/application/csc/CscBrowser;->mContext:Landroid/content/Context;

    const-string v5, "csc.preferences_name"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 224
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "homepage"

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    const-string v4, "CSCBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ** Homepage set DONE.. homeURL - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v2           #it:Landroid/content/Intent;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v4, "CSCBrowser"

    const-string v4, " ** Homepage URL is NULL. Nothing\'s configured."

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
