.class Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncUpdateInfo"
.end annotation


# instance fields
.field deletedTable:Ljava/lang/String;

.field foreignKey:Ljava/lang/String;

.field masterTable:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "masterTable"
    .parameter "deletedTable"
    .parameter "foreignKey"

    .prologue
    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;->masterTable:Ljava/lang/String;

    .line 773
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    .line 774
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;->foreignKey:Ljava/lang/String;

    .line 775
    return-void
.end method
