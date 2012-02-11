.class final Lcom/android/providers/media/MediaProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mAlbumCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mArtistCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mInternal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "internal"

    .prologue
    .line 828
    const/4 v0, 0x0

    const/16 v1, 0x65

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 824
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 825
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 829
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 830
    iput-boolean p3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    .line 831
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const/4 v1, 0x0

    const/16 v2, 0x65

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {p1, v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->access$1200(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 839
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 20
    .parameter "db"

    .prologue
    .line 859
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 921
    :cond_0
    return-void

    .line 865
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 866
    .local v4, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 867
    .local v10, now:J
    invoke-virtual {v4, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, databases:[Ljava/lang/String;
    array-length v2, v3

    .line 872
    .local v2, count:I
    const/4 v6, 0x3

    .line 875
    .local v6, limit:I
    const-wide v17, 0x134fd9000L

    sub-long v15, v10, v17

    .line 876
    .local v15, twoMonthsAgo:J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object v0, v3

    array-length v0, v0

    move/from16 v17, v0

    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    aget-object v18, v3, v5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 878
    .local v12, other:Ljava/io/File;
    const-string v17, "internal.db"

    aget-object v18, v3, v5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v4, v12}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 879
    :cond_2
    const/16 v17, 0x0

    aput-object v17, v3, v5

    .line 880
    add-int/lit8 v2, v2, -0x1

    .line 881
    invoke-virtual {v4, v12}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 884
    add-int/lit8 v6, v6, -0x1

    .line 876
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 887
    :cond_4
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    .line 888
    .local v13, time:J
    cmp-long v17, v13, v15

    if-gez v17, :cond_3

    .line 889
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Deleting old database "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v3, v5

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    aget-object v18, v3, v5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 891
    const/16 v17, 0x0

    aput-object v17, v3, v5

    .line 892
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 914
    .end local v12           #other:Ljava/io/File;
    .end local v13           #time:J
    .local v7, lruIndex:I
    .local v8, lruTime:J
    :cond_5
    const/16 v17, -0x1

    move v0, v7

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    .line 915
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Deleting old database "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v3, v7

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    aget-object v18, v3, v7

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 917
    const/16 v17, 0x0

    aput-object v17, v3, v7

    .line 918
    add-int/lit8 v2, v2, -0x1

    .line 899
    .end local v7           #lruIndex:I
    .end local v8           #lruTime:J
    :cond_6
    if-le v2, v6, :cond_0

    .line 900
    const/4 v7, -0x1

    .line 901
    .restart local v7       #lruIndex:I
    const-wide/16 v8, 0x0

    .line 903
    .restart local v8       #lruTime:J
    const/4 v5, 0x0

    :goto_2
    move-object v0, v3

    array-length v0, v0

    move/from16 v17, v0

    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 904
    aget-object v17, v3, v5

    if-eqz v17, :cond_8

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    aget-object v18, v3, v5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    .line 906
    .restart local v13       #time:J
    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-eqz v17, :cond_7

    cmp-long v17, v13, v8

    if-gez v17, :cond_8

    .line 907
    :cond_7
    move v7, v5

    .line 908
    move-wide v8, v13

    .line 903
    .end local v13           #time:J
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {p1, v0, p2, p3}, Lcom/android/providers/media/MediaProvider;->access$1200(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 848
    return-void
.end method
