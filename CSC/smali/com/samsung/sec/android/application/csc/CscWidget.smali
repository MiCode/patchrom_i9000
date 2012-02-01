.class public Lcom/samsung/sec/android/application/csc/CscWidget;
.super Ljava/lang/Object;
.source "CscWidget.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# instance fields
.field private final NOERROR:Ljava/lang/String;

.field private final OTHERS_CSC_FILE:Ljava/lang/String;

.field private ct:Landroid/content/Context;

.field private mParser:Lcom/samsung/sec/android/application/csc/CscParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "NOERROR"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscWidget;->NOERROR:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscWidget;->OTHERS_CSC_FILE:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscWidget;->ct:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private updateOthers()V
    .locals 10

    .prologue
    const-string v3, "content://InfoAlarm/INFOALARM_PREFERENCE"

    const-string v3, "FINANCE_VISIBLE"

    const-string v9, "CSC_WIDGET"

    .line 84
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscWidget;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/android/application/csc/CscWidget;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 86
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscWidget;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v4, "AppWidget.Yahoo"

    invoke-virtual {v3, v4}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, yahooWidget:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 89
    const-string v2, "ON"

    .line 110
    :cond_0
    :try_start_0
    const-string v3, "OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "pref_value"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscWidget;->ct:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://InfoAlarm/INFOALARM_PREFERENCE"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "pref_key = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "FINANCE_VISIBLE"

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    const-string v3, "CSC_WIDGET"

    const-string v4, " ** Yahoo Widget setting is off"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 121
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .restart local v0       #cv:Landroid/content/ContentValues;
    const-string v3, "pref_value"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/samsung/sec/android/application/csc/CscWidget;->ct:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://InfoAlarm/INFOALARM_PREFERENCE"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "pref_key = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "FINANCE_VISIBLE"

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    const-string v3, "CSC_WIDGET"

    const-string v4, " ** Yahoo Widget setting is on"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v0           #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 134
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "CSC_WIDGET"

    const-string v3, "infoalarm database not found."

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public compare()Ljava/lang/String;
    .locals 14

    .prologue
    const-string v13, "CSC_WIDGET"

    .line 33
    const-string v7, "NOERROR"

    .line 35
    .local v7, answer:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscWidget;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v8

    .line 37
    .local v8, cscParser:Lcom/samsung/sec/android/application/csc/CscParser;
    const-string v0, "AppWidget.Yahoo"

    invoke-virtual {v8, v0}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 38
    .local v11, yahooWidget:Ljava/lang/String;
    const/4 v6, 0x0

    .line 42
    .local v6, FinanceVisible:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscWidget;->ct:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://InfoAlarm/INFOALARM_PREFERENCE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "PREF_VALUE"

    aput-object v4, v2, v3

    const-string v3, "PREF_KEY = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "FINANCE_VISIBLE"

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 48
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 49
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 52
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_1
    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OFF"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-string v7, "Compare Fail: AppWidget.Yahoo"

    .line 57
    const-string v0, "CSC_WIDGET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 59
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_2
    const-string v7, "NOERROR"

    .line 60
    const-string v0, "CSC_WIDGET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result(OFF): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 65
    .local v10, ex:Ljava/lang/Exception;
    const-string v0, "CSC_WIDGET"

    const-string v0, "infoalarm database not found."

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v7, "NOERROR"

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscWidget;->updateOthers()V

    .line 76
    return-void
.end method
