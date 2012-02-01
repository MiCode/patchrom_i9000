.class public Landroid/sec/clipboard/util/ClipboardProcText;
.super Ljava/lang/Object;
.source "ClipboardProcText.java"


# static fields
.field private static body_found:Z

.field private static href:Ljava/lang/String;

.field private static in_body:Z

.field private static pre:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    const-string v0, ""

    sput-object v0, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .local v4, result:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, result2:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .local v3, input:Ljava/io/StringReader;
    const/4 v8, 0x0

    .local v8, text:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v1

    .local v1, dChar:I
    :goto_0
    const/4 v9, -0x1

    if-eq v1, v9, :cond_15

    const-string v8, ""

    const/16 v9, 0x3c

    if-ne v1, v9, :cond_0

    invoke-static {v3}, Landroid/sec/clipboard/util/ClipboardProcText;->getTag(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .local v0, CurrentTag:Ljava/lang/String;
    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardProcText;->convertTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .end local v0           #CurrentTag:Ljava/lang/String;
    :goto_1
    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    if-eqz v9, :cond_14

    move-object v6, v4

    .local v6, s:Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v1

    goto :goto_0

    .end local v6           #s:Ljava/lang/StringBuffer;
    :cond_0
    const/16 v9, 0x26

    if-ne v1, v9, :cond_10

    invoke-static {v3}, Landroid/sec/clipboard/util/ClipboardProcText;->getSpecial(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7

    .local v7, specialchar:Ljava/lang/String;
    const-string v9, "lt;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "#60"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const-string v8, "<"

    goto :goto_1

    :cond_2
    const-string v9, "gt;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "#62"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const-string v8, ">"

    goto :goto_1

    :cond_4
    const-string v9, "amp;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "#38"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const-string v8, "&"

    goto :goto_1

    :cond_6
    const-string v9, "nbsp;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v8, " "

    goto :goto_1

    :cond_7
    const-string v9, "quot;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "#34"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    const-string v8, "\""

    goto :goto_1

    :cond_9
    const-string v9, "copy;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "#169"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    const-string v8, "[Copyright]"

    goto :goto_1

    :cond_b
    const-string v9, "reg;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "#174"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_c
    const-string v8, "[Registered]"

    goto/16 :goto_1

    :cond_d
    const-string v9, "trade;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "#153"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_e
    const-string v8, "[Trademark]"

    goto/16 :goto_1

    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .end local v7           #specialchar:Ljava/lang/String;
    :cond_10
    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    if-nez v9, :cond_13

    int-to-char v9, v1

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_13

    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    if-eqz v9, :cond_11

    move-object v6, v4

    .restart local v6       #s:Ljava/lang/StringBuffer;
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_12

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v8, ""

    goto/16 :goto_1

    .end local v6           #s:Ljava/lang/StringBuffer;
    :cond_11
    move-object v6, v5

    goto :goto_3

    .restart local v6       #s:Ljava/lang/StringBuffer;
    :cond_12
    const-string v8, " "

    goto/16 :goto_1

    .end local v6           #s:Ljava/lang/StringBuffer;
    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_1

    :cond_14
    move-object v6, v5

    goto/16 :goto_2

    .end local v1           #dChar:I
    :catch_0
    move-exception v9

    move-object v2, v9

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V

    throw v2

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #dChar:I
    :cond_15
    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    if-eqz v9, :cond_16

    move-object v6, v4

    .restart local v6       #s:Ljava/lang/StringBuffer;
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v6           #s:Ljava/lang/StringBuffer;
    :cond_16
    move-object v6, v5

    goto :goto_4
.end method

.method private static convertTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "sText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const-string v7, "\""

    const-string v2, ""

    .local v2, result:Ljava/lang/String;
    const-string v3, "body"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sput-boolean v4, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    sput-boolean v4, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v3, "/body"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sput-boolean v6, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    const-string v2, ""

    goto :goto_0

    :cond_2
    const-string v3, "center"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, ""

    goto :goto_0

    :cond_3
    const-string v3, "/center"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, ""

    goto :goto_0

    :cond_4
    const-string v3, "pre"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, ""

    sput-boolean v4, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    goto :goto_0

    :cond_5
    const-string v3, "/pre"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, ""

    sput-boolean v6, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    goto :goto_0

    :cond_6
    const-string v3, "p"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v2, "\n"

    goto :goto_0

    :cond_7
    const-string v3, "br"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v2, "\n"

    goto :goto_0

    :cond_8
    const-string v3, "h1"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "h2"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "h3"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "h4"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "h5"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "h6"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "h7"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const-string v2, ""

    goto/16 :goto_0

    :cond_a
    const-string v3, "/h1"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "/h2"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "/h3"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "/h4"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "/h5"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "/h6"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "/h7"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const-string v2, ""

    goto/16 :goto_0

    :cond_c
    const-string v3, "/dl"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v2, ""

    goto/16 :goto_0

    :cond_d
    const-string v3, "dd"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v2, "  * "

    goto/16 :goto_0

    :cond_e
    const-string v3, "dt"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v2, "      "

    goto/16 :goto_0

    :cond_f
    const-string v3, "li"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v2, "\n  * "

    goto/16 :goto_0

    :cond_10
    const-string v3, "/ul"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v2, ""

    goto/16 :goto_0

    :cond_11
    const-string v3, "/ol"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v2, ""

    goto/16 :goto_0

    :cond_12
    const-string v3, "hr"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v2, "_________________________________________"

    goto/16 :goto_0

    :cond_13
    const-string v3, "table"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v2, ""

    goto/16 :goto_0

    :cond_14
    const-string v3, "/table"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v2, ""

    goto/16 :goto_0

    :cond_15
    const-string v3, "form"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v2, ""

    goto/16 :goto_0

    :cond_16
    const-string v3, "/form"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v2, ""

    goto/16 :goto_0

    :cond_17
    const-string v3, "b"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v2, "*"

    goto/16 :goto_0

    :cond_18
    const-string v3, "/b"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v2, "*"

    goto/16 :goto_0

    :cond_19
    const-string v3, "i"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v2, "\""

    goto/16 :goto_0

    :cond_1a
    const-string v3, "/i"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v2, "\""

    goto/16 :goto_0

    :cond_1b
    const-string v3, "img"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "alt=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, idx:I
    if-eq v0, v5, :cond_0

    add-int/lit8 v0, v0, 0x5

    const-string v3, "\""

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, idx2:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .end local v0           #idx:I
    .end local v1           #idx2:I
    :cond_1c
    const-string v3, "a"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "href=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #idx:I
    if-eq v0, v5, :cond_1d

    add-int/lit8 v0, v0, 0x6

    const-string v3, "\""

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #idx2:I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    goto/16 :goto_0

    .end local v1           #idx2:I
    :cond_1d
    const-string v3, ""

    sput-object v3, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    goto/16 :goto_0

    .end local v0           #idx:I
    :cond_1e
    const-string v3, "/a"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v2, "\n"

    goto/16 :goto_0

    :cond_1f
    const-string v3, "/tr"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "\n"

    goto/16 :goto_0
.end method

.method public static getImgUrlFormHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "sSource"

    .prologue
    const/4 v9, 0x0

    const-string v11, "src=\""

    const-string v10, "<img"

    const-string v1, "src=\""

    .local v1, IMG_SRC:Ljava/lang/String;
    const-string v0, "<img"

    .local v0, IMG_BEGIN:Ljava/lang/String;
    const-string v5, ""

    .local v5, sResult:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, iIndex:I
    const/4 v4, 0x0

    .local v4, iSubIndex:I
    const-string v7, "<img"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :goto_0
    const/4 v7, -0x1

    if-le v3, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v7, "src=\""

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    const-string v7, "src=\""

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v7, "\""

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, i1:I
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, spp:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardProcText;->makeFileName(Ljava/lang/String;)Ljava/lang/String;

    .end local v2           #i1:I
    .end local v6           #spp:Ljava/lang/String;
    :cond_0
    const-string v7, "<img"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getSpecial(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .parameter "rReader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3b

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, result:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .local v0, dCharacter:I
    :goto_0
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    goto :goto_1
.end method

.method private static getTag(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3c

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, level:I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .local v0, dChar:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .end local v0           #dChar:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .restart local v0       #dChar:I
    :cond_2
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v0, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private static isTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "sSentence"
    .parameter "sTag"

    .prologue
    const-string v4, "<"

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, sTagType_1:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, sTagType_2:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static makeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "sFileName"

    .prologue
    return-object p0
.end method
