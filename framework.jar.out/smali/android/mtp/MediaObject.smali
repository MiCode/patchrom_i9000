.class Landroid/mtp/MediaObject;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public creationDate:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:I

.field public filename:Ljava/lang/String;

.field public genreName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public modificationDate:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Inside MediaObject Constructor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "album"
    .parameter "artist"
    .parameter "composer"
    .parameter "creationDate"
    .parameter "description"
    .parameter "duration"
    .parameter "id"
    .parameter "language"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "mimeType"
    .parameter "modificationDate"
    .parameter "path"
    .parameter "size"
    .parameter "title"
    .parameter "year"
    .parameter "genreName"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    iput-object p1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    iput-object p2, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    iput-object p3, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    iput-object p4, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    iput-object p5, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    iput-object p6, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    if-eqz p7, :cond_0

    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/mtp/MediaObject;->duration:I

    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/mtp/MediaObject;->duration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-object p8, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    iput-object p9, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    iput-object p10, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    if-eqz p17, :cond_1

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/mtp/MediaObject;->year:I

    :goto_1
    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Genre:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/mtp/MediaObject;->duration:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/mtp/MediaObject;->year:I

    goto :goto_1
.end method
