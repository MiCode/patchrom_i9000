.class public Landroid/provider/Notes$Body;
.super Ljava/lang/Object;
.source "Notes.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/SyncConstValue;
.implements Landroid/provider/Notes$BodyColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# static fields
.field public static final BODY_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SYNC_DIRTY:Ljava/lang/String; = "_sync_dirty"

.field public static final TABLE_NAME:Ljava/lang/String; = "Body"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final _CLIENT_ID:Ljava/lang/String; = "clientId"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "noteKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "textContent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "htmlContent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "truncated"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Notes$Body;->BODY_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "cr"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    sget-object v0, Landroid/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    sget-object v1, Landroid/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
