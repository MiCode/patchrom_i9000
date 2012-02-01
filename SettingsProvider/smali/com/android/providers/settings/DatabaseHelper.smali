.class public Lcom/android/providers/settings/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final mValidTables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    .line 75
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bluetooth_devices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "gservices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "old_favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    const-string v0, "settings.db"

    const/4 v1, 0x0

    const/16 v2, 0x39

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 88
    iput-object p1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method private createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 96
    const-string v0, "CREATE TABLE secure (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string v0, "CREATE INDEX secureIndex1 ON secure (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static isValidTable(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 92
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 24
    .parameter "db"
    .parameter "startingIndex"

    .prologue
    .line 874
    new-instance v11, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    const/16 v22, 0x0

    move-object v0, v11

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 875
    .local v11, intent:Landroid/content/Intent;
    const-string v21, "android.intent.category.LAUNCHER"

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 878
    .local v20, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 879
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    move/from16 v9, p2

    .line 882
    .local v9, i:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/high16 v22, 0x7f03

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 883
    .local v15, parser:Landroid/content/res/XmlResourceParser;
    const-string v21, "bookmarks"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 885
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 889
    .local v6, depth:I
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v19

    .local v19, type:I
    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    move/from16 v0, v21

    move v1, v6

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 891
    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 895
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 896
    .local v12, name:Ljava/lang/String;
    const-string v21, "bookmark"

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 941
    .end local v6           #depth:I
    .end local v12           #name:Ljava/lang/String;
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v19           #type:I
    :cond_2
    :goto_1
    return v9

    .line 900
    .restart local v6       #depth:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v15       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v19       #type:I
    :cond_3
    const/16 v21, 0x0

    const-string v22, "package"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 901
    .local v16, pkg:Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "class"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 902
    .local v4, cls:Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "shortcut"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 904
    .local v17, shortcutStr:Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 905
    .local v18, shortcutValue:I
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 906
    const-string v21, "SettingsProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to get shortcut for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_4
    const/4 v10, 0x0

    .line 910
    .local v10, info:Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object v0, v5

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 912
    .local v5, cn:Landroid/content/ComponentName;
    const/16 v21, 0x0

    :try_start_1
    move-object v0, v13

    move-object v1, v5

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v10

    .line 924
    :goto_2
    if-eqz v10, :cond_0

    .line 925
    :try_start_2
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 926
    const/high16 v21, 0x1000

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 927
    const-string v21, "intent"

    const/16 v22, 0x0

    move-object v0, v11

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v21, "title"

    invoke-virtual {v10, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v21, "shortcut"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 931
    const-string v21, "bookmarks"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 932
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 913
    :catch_0
    move-exception v7

    .line 914
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v16, v21, v22

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 916
    .local v14, packages:[Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    .end local v5           #cn:Landroid/content/ComponentName;
    const/16 v21, 0x0

    aget-object v21, v14, v21

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 918
    .restart local v5       #cn:Landroid/content/ComponentName;
    const/16 v21, 0x0

    :try_start_3
    move-object v0, v13

    move-object v1, v5

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    goto :goto_2

    .line 919
    :catch_1
    move-exception v8

    .line 920
    .local v8, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v21, "SettingsProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to add bookmark: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 935
    .end local v4           #cls:Ljava/lang/String;
    .end local v5           #cn:Landroid/content/ComponentName;
    .end local v6           #depth:I
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #info:Landroid/content/pm/ActivityInfo;
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #packages:[Ljava/lang/String;
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v17           #shortcutStr:Ljava/lang/String;
    .end local v18           #shortcutValue:I
    .end local v19           #type:I
    :catch_2
    move-exception v21

    move-object/from16 v7, v21

    .line 936
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v21, "SettingsProvider"

    const-string v22, "Got execption parsing bookmarks."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 937
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v21

    move-object/from16 v7, v21

    .line 938
    .local v7, e:Ljava/io/IOException;
    const-string v21, "SettingsProvider"

    const-string v22, "Got execption parsing bookmarks."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 950
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 951
    return-void
.end method

.method private loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1286
    return-void

    .line 1284
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1172
    const-string v0, "window_animation_scale"

    const/high16 v1, 0x7f07

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 1174
    const-string v0, "transition_animation_scale"

    const v1, 0x7f070001

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 1176
    return-void
.end method

.method private loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter

    .prologue
    .line 1179
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040005

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1181
    return-void
.end method

.method private loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"
    .parameter "base"

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1296
    return-void
.end method

.method private loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1291
    return-void
.end method

.method private loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter

    .prologue
    .line 1266
    const-string v0, "backup_enabled"

    const v1, 0x7f04000c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1269
    const-string v0, "backup_transport"

    const v1, 0x7f060003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1271
    return-void
.end method

.method private loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1184
    const/4 v0, 0x0

    .line 1186
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1189
    :try_start_1
    const-string v1, "bluetooth_on"

    const v2, 0x7f040006

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1193
    const-string v1, "data_roaming"

    const-string v2, "true"

    const-string v3, "ro.com.android.dataroaming"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1198
    const-string v1, "install_non_market_apps"

    const v2, 0x7f040007

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1201
    const-string v1, "location_providers_allowed"

    const v2, 0x7f060002

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1204
    const-string v1, "assisted_gps_enabled"

    const v2, 0x7f040008

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1207
    const-string v1, "network_preference"

    const v2, 0x7f050002

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1210
    const-string v1, "usb_mass_storage_enabled"

    const v2, 0x7f040009

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1213
    const-string v1, "wifi_on"

    const v2, 0x7f04000a

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1215
    const-string v1, "wifi_networks_available_notification_on"

    const v2, 0x7f04000b

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1218
    const-string v1, "ro.com.android.wifi-watchlist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1220
    const-string v2, "wifi_watchdog_watch_list"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1224
    :cond_0
    const-string v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1226
    const-string v2, "preferred_network_mode"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1229
    const-string v1, "cdma_cell_broadcast_sms"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1233
    const-string v1, "preferred_cdma_subscription"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1241
    const-string v1, "mock_location"

    const-string v2, "1"

    const-string v3, "ro.allow.mock.location"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1245
    const-string v1, "usb_setting_mode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1247
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1249
    const-string v1, "mount_play_not_snd"

    const v2, 0x7f04000e

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1252
    const-string v1, "mount_ums_autostart"

    const v2, 0x7f04000f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1255
    const-string v1, "mount_ums_prompt"

    const v2, 0x7f040010

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1258
    const-string v1, "mount_ums_notify_enabled"

    const v2, 0x7f040011

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    const-string v1, "device_provisioned"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1261
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1263
    :cond_1
    return-void

    :cond_2
    move v2, v5

    .line 1193
    goto/16 :goto_0

    :cond_3
    move v2, v5

    .line 1241
    goto :goto_1

    .line 1261
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "stmt"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1274
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1275
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1276
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1277
    return-void
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1030
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1031
    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1281
    return-void
.end method

.method private loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "notifications_use_ring_volume"

    .line 1034
    const/4 v0, 0x0

    .line 1036
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1039
    :try_start_1
    const-string v1, "dim_screen"

    const/high16 v2, 0x7f04

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1041
    const-string v1, "stay_on_while_plugged_in"

    const-string v2, "1"

    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1043
    const-string v1, "screen_off_timeout"

    const/high16 v2, 0x7f05

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1047
    const-string v1, "emergency_tone"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1050
    const-string v1, "call_auto_retry"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1053
    const-string v1, "dtmf_tone"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1054
    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1057
    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1060
    const-string v1, "hearing_aid"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1063
    const-string v1, "tty_mode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1065
    const-string v1, "airplane_mode_on"

    const v2, 0x7f040001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1068
    const-string v1, "airplane_mode_radios"

    const/high16 v2, 0x7f06

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1071
    const-string v1, "airplane_mode_toggleable_radios"

    const v2, 0x7f060001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1074
    const-string v1, "auto_time"

    const v2, 0x7f040002

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1077
    const-string v1, "screen_brightness"

    const v2, 0x7f050001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1080
    const-string v1, "screen_brightness_mode"

    const v2, 0x7f040004

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1083
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1085
    const-string v1, "accelerometer_rotation"

    const v2, 0x7f040003

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1088
    const-string v1, "uartapcpmode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1091
    const-string v1, "usbapcpmode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1094
    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    const/16 v2, 0x25e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1097
    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1100
    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1103
    const-string v1, "power_saving_mode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1106
    const-string v1, "una_setting"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1109
    const-string v1, "notifications_use_ring_volume"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1110
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1115
    const-string v1, "tv_out"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1118
    const-string v1, "tv_system"

    const v2, 0x7f050007

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1121
    const-string v1, "notification_light_pulse"

    const v2, 0x7f04000d

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1123
    const-string v1, "set_install_location"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1124
    const-string v1, "default_install_location"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1127
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1129
    const-string v1, "vibrate_in_silent"

    const v2, 0x7f040013

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1133
    const-string v1, "notifications_use_ring_volume"

    const v2, 0x7f040012

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1136
    const-string v1, "driving_mode_on"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1138
    const-string v1, "date_format"

    const v2, 0x7f06000b

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1140
    const-string v1, "show_password"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1142
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1144
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 1041
    goto/16 :goto_0

    .line 1142
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method private loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter

    .prologue
    .line 1147
    const-string v0, "power_sounds_enabled"

    const v1, 0x7f050003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1149
    const-string v0, "low_battery_sound"

    const v1, 0x7f060004

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1152
    const-string v0, "dock_sounds_enabled"

    const v1, 0x7f050004

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1154
    const-string v0, "desk_dock_sound"

    const v1, 0x7f060005

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1156
    const-string v0, "desk_undock_sound"

    const v1, 0x7f060006

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1158
    const-string v0, "car_dock_sound"

    const v1, 0x7f060007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1160
    const-string v0, "car_undock_sound"

    const v1, 0x7f060008

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1163
    const-string v0, "lockscreen_sounds_enabled"

    const v1, 0x7f050005

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1165
    const-string v0, "lock_sound"

    const v1, 0x7f060009

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1167
    const-string v0, "unlock_sound"

    const v1, 0x7f06000a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1169
    return-void
.end method

.method private loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .parameter "db"
    .parameter "deleteOld"

    .prologue
    .line 1007
    if-eqz p2, :cond_0

    .line 1008
    const-string v2, "DELETE FROM system WHERE name=\'vibrate_on\'"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1011
    :cond_0
    const/4 v0, 0x0

    .line 1013
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1017
    const/4 v1, 0x0

    .line 1018
    .local v1, vibrate:I
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 1020
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v2

    or-int/2addr v1, v2

    .line 1022
    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1026
    :cond_1
    return-void

    .line 1024
    .end local v1           #vibrate:I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 960
    const/4 v0, 0x0

    .line 962
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 965
    const-string v1, "volume_music"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    const-string v1, "volume_ring"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 969
    const-string v1, "volume_system"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 971
    const-string v1, "volume_voice"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 975
    const-string v1, "volume_alarm"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 977
    const-string v1, "volume_notification"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 981
    const-string v1, "volume_bluetooth_sco"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 986
    const-string v1, "mode_ringer"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 989
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 992
    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0xa6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 996
    const-string v1, "mute_streams_affected"

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1004
    :cond_0
    return-void

    .line 1002
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v1
.end method

.method private moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 7
    .parameter "db"
    .parameter "settingsToMove"

    .prologue
    .line 789
    const/4 v3, 0x0

    .line 790
    .local v3, insertStmt:Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 792
    .local v1, deleteStmt:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 794
    :try_start_0
    const-string v6, "INSERT INTO secure (name,value) SELECT name,value FROM system WHERE name=?"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 797
    const-string v6, "DELETE FROM system WHERE name=?"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 800
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 801
    .local v5, setting:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 802
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 804
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 805
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 800
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    .end local v5           #setting:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 810
    if-eqz v3, :cond_1

    .line 811
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 813
    :cond_1
    if-eqz v1, :cond_2

    .line 814
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 817
    :cond_2
    return-void

    .line 809
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 810
    if-eqz v3, :cond_3

    .line 811
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 813
    :cond_3
    if-eqz v1, :cond_4

    .line 814
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v6
.end method

.method private upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    const-string v1, "system"

    const-string v3, "name=\'lock_pattern\'"

    .line 820
    const-string v0, "system"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    const-string v0, "value"

    aput-object v0, v2, v12

    const-string v0, "name=\'lock_pattern\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 822
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 823
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 824
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 825
    .local v10, lockPattern:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    :try_start_0
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 829
    .local v11, lpu:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 831
    .local v9, cellPattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v11, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    .end local v9           #cellPattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v11           #lpu:Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 837
    const-string v0, "system"

    const-string v0, "name=\'lock_pattern\'"

    invoke-virtual {p1, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 841
    .end local v10           #lockPattern:Ljava/lang/String;
    :goto_1
    return-void

    .line 839
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 832
    .restart local v10       #lockPattern:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "db"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v10, "screen_off_timeout"

    .line 845
    const-string v1, "system"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "value"

    aput-object v0, v2, v7

    const-string v3, "name=? AND value=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "screen_off_timeout"

    aput-object v10, v4, v6

    const-string v0, "-1"

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 849
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 850
    .local v9, stmt:Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 851
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 853
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 857
    const-string v0, "screen_off_timeout"

    const v1, 0x1b7740

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 860
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0

    .line 863
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 106
    const-string v0, "CREATE TABLE system (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "CREATE INDEX systemIndex1 ON system (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    const-string v0, "CREATE TABLE bluetooth_devices (_id INTEGER PRIMARY KEY,name TEXT,addr TEXT,channel INTEGER,type INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,folder TEXT,intent TEXT,shortcut INTEGER,ordering INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    const-string v0, "CREATE INDEX bookmarksIndex1 ON bookmarks (folder);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    const-string v0, "CREATE INDEX bookmarksIndex2 ON bookmarks (shortcut);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 143
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 147
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upgrading settings database from version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    move v4, p2

    .line 159
    .local v4, upgradeVersion:I
    const/16 v8, 0x14

    if-ne v4, v8, :cond_0

    .line 166
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 168
    const/16 v4, 0x15

    .line 171
    :cond_0
    const/16 v8, 0x16

    if-ge v4, v8, :cond_1

    .line 172
    const/16 v4, 0x16

    .line 174
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 177
    :cond_1
    const/16 v8, 0x17

    if-ge v4, v8, :cond_2

    .line 178
    const-string v8, "UPDATE favorites SET iconResource=0 WHERE iconType=0"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const/16 v4, 0x17

    .line 182
    :cond_2
    const/16 v8, 0x17

    if-ne v4, v8, :cond_3

    .line 183
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 185
    :try_start_0
    const-string v8, "ALTER TABLE favorites ADD spanX INTEGER"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    const-string v8, "ALTER TABLE favorites ADD spanY INTEGER"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string v8, "UPDATE favorites SET spanX=1, spanY=1 WHERE itemType<=0"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    const-string v8, "UPDATE favorites SET spanX=2, spanY=2 WHERE itemType=1000 or itemType=1002"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v8, "UPDATE favorites SET spanX=4, spanY=1 WHERE itemType=1001"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 198
    const/16 v4, 0x18

    .line 201
    :cond_3
    const/16 v8, 0x18

    if-ne v4, v8, :cond_4

    .line 202
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 206
    :try_start_1
    const-string v8, "DELETE FROM system WHERE name=\'network_preference\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    const-string v8, "INSERT INTO system (\'name\', \'value\') values (\'network_preference\', \'1\')"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 213
    const/16 v4, 0x19

    .line 216
    :cond_4
    const/16 v8, 0x19

    if-ne v4, v8, :cond_5

    .line 217
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 219
    :try_start_2
    const-string v8, "ALTER TABLE favorites ADD uri TEXT"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    const-string v8, "ALTER TABLE favorites ADD displayMode INTEGER"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 223
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 225
    const/16 v4, 0x1a

    .line 228
    :cond_5
    const/16 v8, 0x1a

    if-ne v4, v8, :cond_6

    .line 230
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 232
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 233
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 235
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 237
    const/16 v4, 0x1b

    .line 240
    :cond_6
    const/16 v8, 0x1b

    if-ne v4, v8, :cond_7

    .line 241
    const/16 v8, 0x1f

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adb_enabled"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "android_id"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string v9, "bluetooth_on"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "data_roaming"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string v9, "device_provisioned"

    aput-object v9, v1, v8

    const/4 v8, 0x5

    const-string v9, "http_proxy"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string v9, "install_non_market_apps"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string v9, "location_providers_allowed"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string v9, "logging_id"

    aput-object v9, v1, v8

    const/16 v8, 0x9

    const-string v9, "network_preference"

    aput-object v9, v1, v8

    const/16 v8, 0xa

    const-string v9, "parental_control_enabled"

    aput-object v9, v1, v8

    const/16 v8, 0xb

    const-string v9, "parental_control_last_update"

    aput-object v9, v1, v8

    const/16 v8, 0xc

    const-string v9, "parental_control_redirect_url"

    aput-object v9, v1, v8

    const/16 v8, 0xd

    const-string v9, "settings_classname"

    aput-object v9, v1, v8

    const/16 v8, 0xe

    const-string v9, "usb_mass_storage_enabled"

    aput-object v9, v1, v8

    const/16 v8, 0xf

    const-string v9, "use_google_mail"

    aput-object v9, v1, v8

    const/16 v8, 0x10

    const-string v9, "wifi_networks_available_notification_on"

    aput-object v9, v1, v8

    const/16 v8, 0x11

    const-string v9, "wifi_networks_available_repeat_delay"

    aput-object v9, v1, v8

    const/16 v8, 0x12

    const-string v9, "wifi_num_open_networks_kept"

    aput-object v9, v1, v8

    const/16 v8, 0x13

    const-string v9, "wifi_on"

    aput-object v9, v1, v8

    const/16 v8, 0x14

    const-string v9, "wifi_watchdog_acceptable_packet_loss_percentage"

    aput-object v9, v1, v8

    const/16 v8, 0x15

    const-string v9, "wifi_watchdog_ap_count"

    aput-object v9, v1, v8

    const/16 v8, 0x16

    const-string v9, "wifi_watchdog_background_check_delay_ms"

    aput-object v9, v1, v8

    const/16 v8, 0x17

    const-string v9, "wifi_watchdog_background_check_enabled"

    aput-object v9, v1, v8

    const/16 v8, 0x18

    const-string v9, "wifi_watchdog_background_check_timeout_ms"

    aput-object v9, v1, v8

    const/16 v8, 0x19

    const-string v9, "wifi_watchdog_initial_ignored_ping_count"

    aput-object v9, v1, v8

    const/16 v8, 0x1a

    const-string v9, "wifi_watchdog_max_ap_checks"

    aput-object v9, v1, v8

    const/16 v8, 0x1b

    const-string v9, "wifi_watchdog_on"

    aput-object v9, v1, v8

    const/16 v8, 0x1c

    const-string v9, "wifi_watchdog_ping_count"

    aput-object v9, v1, v8

    const/16 v8, 0x1d

    const-string v9, "wifi_watchdog_ping_delay_ms"

    aput-object v9, v1, v8

    const/16 v8, 0x1e

    const-string v9, "wifi_watchdog_ping_timeout_ms"

    aput-object v9, v1, v8

    .line 274
    .local v1, settingsToMove:[Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 275
    const/16 v4, 0x1c

    .line 278
    .end local v1           #settingsToMove:[Ljava/lang/String;
    :cond_7
    const/16 v8, 0x1c

    if-eq v4, v8, :cond_8

    const/16 v8, 0x1d

    if-ne v4, v8, :cond_9

    .line 285
    :cond_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 287
    :try_start_4
    const-string v8, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    const/16 v0, 0x26

    .line 292
    .local v0, newValue:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 297
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 300
    const/16 v4, 0x1e

    .line 303
    .end local v0           #newValue:I
    :cond_9
    const/16 v8, 0x1e

    if-ne v4, v8, :cond_a

    .line 309
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 311
    :try_start_5
    const-string v8, "UPDATE bookmarks SET folder = \'@quicklaunch\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    const-string v8, "UPDATE bookmarks SET title = \'\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 315
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 317
    const/16 v4, 0x1f

    .line 320
    :cond_a
    const/16 v8, 0x1f

    if-ne v4, v8, :cond_c

    .line 325
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 326
    const/4 v2, 0x0

    .line 328
    .local v2, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_6
    const-string v8, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    const-string v8, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 332
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 334
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 335
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 337
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 338
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 340
    :cond_b
    const/16 v4, 0x20

    .line 343
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_c
    const/16 v8, 0x20

    if-ne v4, v8, :cond_e

    .line 346
    const-string v8, "ro.com.android.wifi-watchlist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, wifiWatchList:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 348
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 350
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT OR IGNORE INTO secure(name,value) values(\'wifi_watchdog_watch_list\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 355
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 358
    :cond_d
    const/16 v4, 0x21

    .line 361
    .end local v6           #wifiWatchList:Ljava/lang/String;
    :cond_e
    const/16 v8, 0x21

    if-ne v4, v8, :cond_f

    .line 363
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 365
    :try_start_8
    const-string v8, "INSERT INTO system(name,value) values(\'zoom\',\'2\');"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 368
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 370
    const/16 v4, 0x22

    .line 373
    :cond_f
    const/16 v8, 0x22

    if-ne v4, v8, :cond_11

    .line 374
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 375
    const/4 v2, 0x0

    .line 377
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_9
    const-string v8, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 379
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 380
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 382
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 383
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 385
    :cond_10
    const/16 v4, 0x23

    .line 391
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_11
    const/16 v8, 0x23

    if-ne v4, v8, :cond_12

    .line 392
    const/16 v4, 0x24

    .line 395
    :cond_12
    const/16 v8, 0x24

    if-ne v4, v8, :cond_13

    .line 398
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 400
    :try_start_a
    const-string v8, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 402
    const/16 v0, 0xa6

    .line 406
    .restart local v0       #newValue:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 411
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 413
    const/16 v4, 0x25

    .line 416
    .end local v0           #newValue:I
    :cond_13
    const/16 v8, 0x25

    if-ne v4, v8, :cond_15

    .line 417
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 418
    const/4 v2, 0x0

    .line 420
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_b
    const-string v8, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 422
    const-string v8, "airplane_mode_toggleable_radios"

    const v9, 0x7f060001

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 424
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 426
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 427
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 429
    :cond_14
    const/16 v4, 0x26

    .line 432
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_15
    const/16 v8, 0x26

    if-ne v4, v8, :cond_16

    .line 433
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 435
    :try_start_c
    iget-object v8, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_38

    const-string v8, "1"

    move-object v5, v8

    .line 437
    .local v5, value:Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT OR IGNORE INTO secure(name,value) values(\'assisted_gps_enabled\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 441
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 444
    const/16 v4, 0x27

    .line 447
    .end local v5           #value:Ljava/lang/String;
    :cond_16
    const/16 v8, 0x27

    if-ne v4, v8, :cond_17

    .line 448
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 450
    :try_start_d
    iget-object v8, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_39

    const-string v8, "1"

    move-object v5, v8

    .line 453
    .restart local v5       #value:Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT OR IGNORE INTO system(name,value) values(\'screen_brightness_mode\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 457
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 460
    const/16 v4, 0x28

    .line 463
    .end local v5           #value:Ljava/lang/String;
    :cond_17
    const/16 v8, 0x28

    if-ne v4, v8, :cond_19

    .line 467
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 468
    const/4 v2, 0x0

    .line 470
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_e
    const-string v8, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 472
    const-string v8, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 474
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 476
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 477
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 479
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 480
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 482
    :cond_18
    const/16 v4, 0x29

    .line 485
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_19
    const/16 v8, 0x29

    if-ne v4, v8, :cond_1b

    .line 489
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 490
    const/4 v2, 0x0

    .line 492
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_f
    const-string v8, "DELETE FROM system WHERE name=\'haptic_feedback_enabled\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 494
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 496
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 497
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 499
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 500
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 502
    :cond_1a
    const/16 v4, 0x2a

    .line 505
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_1b
    const/16 v8, 0x2a

    if-ne v4, v8, :cond_1d

    .line 509
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 510
    const/4 v2, 0x0

    .line 512
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_10
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 514
    const-string v8, "notification_light_pulse"

    const v9, 0x7f04000d

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 516
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 518
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 519
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 521
    :cond_1c
    const/16 v4, 0x2b

    .line 524
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_1d
    const/16 v8, 0x2b

    if-ne v4, v8, :cond_1f

    .line 528
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 529
    const/4 v2, 0x0

    .line 531
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_11
    const-string v8, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 533
    const-string v8, "volume_bluetooth_sco"

    sget-object v9, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v10, 0x6

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 537
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 538
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 540
    :cond_1e
    const/16 v4, 0x2c

    .line 543
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_1f
    const/16 v8, 0x2c

    if-ne v4, v8, :cond_20

    .line 547
    const-string v8, "DROP TABLE IF EXISTS gservices"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 548
    const-string v8, "DROP INDEX IF EXISTS gservicesIndex1"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 549
    const/16 v4, 0x2d

    .line 552
    :cond_20
    const/16 v8, 0x2d

    if-ne v4, v8, :cond_21

    .line 556
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 558
    :try_start_12
    const-string v8, "INSERT INTO secure(name,value) values(\'mount_play_not_snd\',\'1\');"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 560
    const-string v8, "INSERT INTO secure(name,value) values(\'mount_ums_autostart\',\'0\');"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 562
    const-string v8, "INSERT INTO secure(name,value) values(\'mount_ums_prompt\',\'1\');"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 564
    const-string v8, "INSERT INTO secure(name,value) values(\'mount_ums_notify_enabled\',\'1\');"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 568
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 570
    const/16 v4, 0x2e

    .line 573
    :cond_21
    const/16 v8, 0x2e

    if-ne v4, v8, :cond_22

    .line 578
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 580
    :try_start_13
    const-string v8, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 583
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 585
    const/16 v4, 0x2f

    .line 589
    :cond_22
    const/16 v8, 0x2f

    if-ne v4, v8, :cond_23

    .line 594
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 596
    :try_start_14
    const-string v8, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 599
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 601
    const/16 v4, 0x30

    .line 604
    :cond_23
    const/16 v8, 0x30

    if-ne v4, v8, :cond_24

    .line 609
    const/16 v4, 0x31

    .line 612
    :cond_24
    const/16 v8, 0x31

    if-ne v4, v8, :cond_26

    .line 616
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 617
    const/4 v2, 0x0

    .line 619
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_15
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 621
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 622
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 624
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 625
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 628
    :cond_25
    const/16 v4, 0x32

    .line 631
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_26
    const/16 v8, 0x32

    if-ne v4, v8, :cond_27

    .line 635
    const/16 v4, 0x33

    .line 638
    :cond_27
    const/16 v8, 0x33

    if-ne v4, v8, :cond_28

    .line 640
    const/16 v8, 0x9

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "lock_pattern_autolock"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "lock_pattern_visible_pattern"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string v9, "lock_pattern_tactile_feedback_enabled"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "lockscreen.password_type"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string v9, "lockscreen.lockoutattemptdeadline"

    aput-object v9, v1, v8

    const/4 v8, 0x5

    const-string v9, "lockscreen.patterneverchosen"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string v9, "lock_pattern_autolock"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string v9, "lockscreen.lockedoutpermanently"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string v9, "lockscreen.password_salt"

    aput-object v9, v1, v8

    .line 651
    .restart local v1       #settingsToMove:[Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 652
    const/16 v4, 0x34

    .line 655
    .end local v1           #settingsToMove:[Ljava/lang/String;
    :cond_28
    const/16 v8, 0x34

    if-ne v4, v8, :cond_2a

    .line 657
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 658
    const/4 v2, 0x0

    .line 660
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_16
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 662
    const-string v8, "vibrate_in_silent"

    const v9, 0x7f040013

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 664
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 666
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 667
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 670
    :cond_29
    const/16 v4, 0x35

    .line 673
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_2a
    const/16 v8, 0x35

    if-ne v4, v8, :cond_2b

    .line 677
    const/16 v4, 0x36

    .line 680
    :cond_2b
    const/16 v8, 0x36

    if-ne v4, v8, :cond_2c

    .line 684
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 686
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 687
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 689
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 692
    const/16 v4, 0x37

    .line 695
    :cond_2c
    const/16 v8, 0x37

    if-ne v4, v8, :cond_2f

    .line 697
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "set_install_location"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "default_install_location"

    aput-object v9, v1, v8

    .line 701
    .restart local v1       #settingsToMove:[Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 702
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 704
    const/4 v2, 0x0

    .line 705
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x0

    .line 707
    .local v3, stmt2:Landroid/database/sqlite/SQLiteStatement;
    :try_start_18
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 709
    const-string v8, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 711
    const-string v8, "set_install_location"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 712
    const-string v8, "default_install_location"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 715
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set USB mode as default"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v8, "usb_setting_mode"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v3, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 718
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 720
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 721
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 722
    :cond_2d
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 724
    :cond_2e
    const/16 v4, 0x38

    .line 727
    .end local v1           #settingsToMove:[Ljava/lang/String;
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    .end local v3           #stmt2:Landroid/database/sqlite/SQLiteStatement;
    :cond_2f
    const/16 v8, 0x37

    if-lt v4, v8, :cond_31

    .line 728
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 729
    const/4 v2, 0x0

    .line 731
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    const-string v8, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 733
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set USB mode as default"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v8, "usb_setting_mode"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 735
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 737
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 738
    :cond_30
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 742
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_31
    const/16 v8, 0x38

    if-ne v4, v8, :cond_33

    .line 746
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 747
    const/4 v2, 0x0

    .line 749
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1a
    const-string v8, "DELETE FROM system WHERE name=\'airplane_mode_toggleable_radios\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 751
    const-string v8, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 753
    const-string v8, "airplane_mode_toggleable_radios"

    const v9, 0x7f060001

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 755
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 757
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 758
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 760
    :cond_32
    const/16 v4, 0x39

    .line 764
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_33
    if-eq v4, p3, :cond_34

    .line 765
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got stuck trying to upgrade from version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", must wipe the settings provider"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const-string v8, "DROP TABLE IF EXISTS system"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 768
    const-string v8, "DROP INDEX IF EXISTS systemIndex1"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 769
    const-string v8, "DROP TABLE IF EXISTS secure"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 770
    const-string v8, "DROP INDEX IF EXISTS secureIndex1"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 771
    const-string v8, "DROP TABLE IF EXISTS gservices"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 772
    const-string v8, "DROP INDEX IF EXISTS gservicesIndex1"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 773
    const-string v8, "DROP TABLE IF EXISTS bluetooth_devices"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 774
    const-string v8, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 775
    const-string v8, "DROP INDEX IF EXISTS bookmarksIndex1"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 776
    const-string v8, "DROP INDEX IF EXISTS bookmarksIndex2"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 777
    const-string v8, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 781
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 782
    .local v7, wipeReason:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT INTO secure(name,value) values(\'wiped_db_reason\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 785
    .end local v7           #wipeReason:Ljava/lang/String;
    :cond_34
    return-void

    .line 196
    :catchall_0
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 211
    :catchall_1
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 223
    :catchall_2
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 235
    :catchall_3
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 297
    :catchall_4
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 315
    :catchall_5
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 337
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_6
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 338
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_35
    throw v8

    .line 355
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    .restart local v6       #wifiWatchList:Ljava/lang/String;
    :catchall_7
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 368
    .end local v6           #wifiWatchList:Ljava/lang/String;
    :catchall_8
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 382
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_9
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 383
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_36
    throw v8

    .line 411
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_a
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 426
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_b
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 427
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_37
    throw v8

    .line 435
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_38
    :try_start_1b
    const-string v8, "0"
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    move-object v5, v8

    goto/16 :goto_0

    .line 441
    :catchall_c
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 450
    :cond_39
    :try_start_1c
    const-string v8, "0"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    move-object v5, v8

    goto/16 :goto_1

    .line 457
    :catchall_d
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 479
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_e
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 480
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3a
    throw v8

    .line 499
    :catchall_f
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 500
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3b
    throw v8

    .line 518
    :catchall_10
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 519
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3c
    throw v8

    .line 537
    :catchall_11
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 538
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3d
    throw v8

    .line 568
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_12
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 583
    :catchall_13
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 599
    :catchall_14
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 624
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_15
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 625
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3e
    throw v8

    .line 666
    :catchall_16
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 667
    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3f
    throw v8

    .line 689
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_17
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 720
    .restart local v1       #settingsToMove:[Ljava/lang/String;
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    .restart local v3       #stmt2:Landroid/database/sqlite/SQLiteStatement;
    :catchall_18
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 721
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 722
    :cond_40
    if-eqz v3, :cond_41

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_41
    throw v8

    .line 737
    .end local v1           #settingsToMove:[Ljava/lang/String;
    .end local v3           #stmt2:Landroid/database/sqlite/SQLiteStatement;
    :catchall_19
    move-exception v8

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 738
    :cond_42
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 757
    :catchall_1a
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 758
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_43
    throw v8
.end method
