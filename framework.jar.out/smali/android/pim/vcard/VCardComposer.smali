.class public Landroid/pim/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;,
        Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    }
.end annotation


# static fields
.field public static final CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri; = null

.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field public static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final LOG_TAG:Ljava/lang/String; = "VCardComposer"

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final VCARD_TEST_AUTHORITY:Ljava/lang/String; = "com.android.unit_tests.vcard"

.field public static final VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final VCARD_TYPE_STRING_DOCOMO:Ljava/lang/String; = "docomo"

.field private static final sContactsProjection:[Ljava/lang/String;

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCareHandlerErrors:Z

.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardComposer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIdColumn:I

.field private final mIsDoCoMo:Z

.field private mTerminateIsCalled:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    const-string v0, "content://com.android.unit_tests.vcard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardComposer;->VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri;

    .line 133
    sget-object v0, Landroid/pim/vcard/VCardComposer;->VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardComposer;->CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    .line 140
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/pim/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 281
    sget v0, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "vcardType"

    .prologue
    .line 288
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"

    .prologue
    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 8
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "careHandlerErrors"

    .prologue
    const-string v7, "Career-specific \""

    const-string v6, "\" was not found (as usual). "

    const-string v3, "UTF-8"

    const-string v5, "SHIFT_JIS"

    const-string v4, "VCardComposer"

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const-string v2, "No error"

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 315
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    .line 316
    iput p2, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    .line 317
    iput-boolean p4, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 320
    invoke-static {p2}, Landroid/pim/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    .line 323
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "UTF-8"

    move-object p3, v3

    .line 324
    :cond_0
    invoke-static {p2}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "UTF-8"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    move v1, v2

    .line 327
    .local v1, shouldAppendCharsetParam:Z
    :goto_0
    iget-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_7

    .line 328
    :cond_2
    const-string v2, "SHIFT_JIS"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 329
    iget-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v2, :cond_4

    .line 331
    :try_start_0
    const-string v2, "SHIFT_JIS"

    const-string v3, "docomo"

    invoke-static {v2, v3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 348
    :goto_1
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    .line 381
    :goto_2
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use the charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void

    .line 324
    .end local v1           #shouldAppendCharsetParam:Z
    :cond_3
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 332
    .restart local v1       #shouldAppendCharsetParam:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 333
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    const-string v2, "DoCoMo-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string p3, "SHIFT_JIS"

    .line 337
    goto :goto_1

    .line 340
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_4
    :try_start_1
    const-string v2, "SHIFT_JIS"

    invoke-static {v2}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p3

    goto :goto_1

    .line 341
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 342
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    const-string v2, "Career-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string p3, "SHIFT_JIS"

    goto :goto_1

    .line 350
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_5
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is used while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SHIFT_JIS"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is needed to be used."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 354
    const-string v2, "SHIFT_JIS"

    iput-object v5, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 357
    :cond_6
    :try_start_2
    invoke-static {p3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_2
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p3

    .line 363
    :goto_3
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_2

    .line 358
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 359
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Career-specific \""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found (as usual). "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Use it as is."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 367
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 368
    const-string v2, "UTF-8"

    iput-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_2

    .line 371
    :cond_8
    :try_start_3
    invoke-static {p3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_3
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object p3

    .line 377
    :goto_4
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_2

    .line 372
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 373
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Career-specific \""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found (as usual). "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Use it as is."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 301
    return-void
.end method

.method static synthetic access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/pim/vcard/VCardComposer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    return v0
.end method

.method static synthetic access$300(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 23
    .parameter "contactId"
    .parameter "getEntityIteratorMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 521
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 526
    .local v12, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/16 v16, 0x0

    .line 528
    .local v16, entityIterator:Landroid/content/EntityIterator;
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 532
    .local v4, uri:Landroid/net/Uri;
    const-string v21, "contact_id=?"

    .line 533
    .local v21, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .local v7, selectionArgs:[Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 537
    const/4 v3, 0x0

    const/4 v5, 0x5

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v8, v0

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/4 v4, 0x2

    const-string v6, "contact_id=?"

    .end local v4           #uri:Landroid/net/Uri;
    aput-object v6, v5, v4

    const/4 v4, 0x3

    aput-object v7, v5, v4

    const/4 v4, 0x4

    const/4 v6, 0x0

    aput-object v6, v5, v4

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/content/EntityIterator;

    move-object/from16 v16, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 559
    :goto_0
    if-nez v16, :cond_4

    .line 560
    :try_start_2
    const-string v3, "VCardComposer"

    const-string v4, "EntityIterator is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v3, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    if-eqz v16, :cond_0

    .line 587
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    .line 591
    :cond_0
    :goto_1
    return-object v3

    .line 539
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 540
    .local v13, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 586
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .end local v21           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_1

    .line 587
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    :cond_1
    throw v3

    .line 542
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v21       #selection:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v13, v3

    .line 543
    .local v13, e:Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalAccessException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 545
    .end local v13           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    move-object v13, v3

    .line 546
    .local v13, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "VCardComposer"

    const-string v4, "InvocationTargetException has been thrown: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v22

    .line 548
    .local v22, stackTraceElements:[Ljava/lang/StackTraceElement;
    move-object/from16 v9, v22

    .local v9, arr$:[Ljava/lang/StackTraceElement;
    move-object v0, v9

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v14, v9, v17

    .line 549
    .local v14, element:Ljava/lang/StackTraceElement;
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 551
    .end local v14           #element:Ljava/lang/StackTraceElement;
    :cond_2
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvocationTargetException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 555
    .end local v9           #arr$:[Ljava/lang/StackTraceElement;
    .end local v13           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v17           #i$:I
    .end local v19           #len$:I
    .end local v22           #stackTraceElements:[Ljava/lang/StackTraceElement;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const/4 v5, 0x0

    const-string v6, "contact_id=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v16

    goto/16 :goto_0

    .line 564
    .end local v4           #uri:Landroid/net/Uri;
    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 565
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data does not exist. contactId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v3, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 586
    if-eqz v16, :cond_0

    .line 587
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_1

    .line 569
    :cond_5
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 570
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Entity;

    .line 571
    .local v15, entity:Landroid/content/Entity;
    invoke-virtual {v15}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Entity$NamedContentValues;

    .line 572
    .local v20, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object v10, v0

    .line 573
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v3, "mimetype"

    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 574
    .local v18, key:Ljava/lang/String;
    if-eqz v18, :cond_6

    .line 575
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 577
    .local v11, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v11, :cond_7

    .line 578
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .restart local v11       #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object v0, v12

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_7
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 586
    .end local v10           #contentValues:Landroid/content/ContentValues;
    .end local v11           #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v15           #entity:Landroid/content/Entity;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #key:Ljava/lang/String;
    .end local v20           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    :cond_8
    if-eqz v16, :cond_9

    .line 587
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    .line 591
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method


# virtual methods
.method public addHandler(Landroid/pim/vcard/VCardComposer$OneEntryHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 388
    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_0
    return-void
.end method

.method public buildVCard(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    if-nez p1, :cond_0

    .line 600
    const-string v1, "VCardComposer"

    const-string v2, "The given map is null. Ignore and return empty String"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v1, ""

    .line 618
    .end local p0
    :goto_0
    return-object v1

    .line 603
    .restart local p0
    :cond_0
    new-instance v0, Landroid/pim/vcard/VCardBuilder;

    iget v1, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 604
    .local v0, builder:Landroid/pim/vcard/VCardBuilder;
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendPhones(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 611
    iget v1, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 612
    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/pim/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 614
    :cond_1
    const-string/jumbo v1, "vnd.android.cursor.item/note"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/pim/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Landroid/pim/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.item/im"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Landroid/pim/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Landroid/pim/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 618
    invoke-virtual {v0}, Landroid/pim/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public createOneEntry()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardComposer;->createOneEntry(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Z
    .locals 11
    .parameter "getEntityIteratorMethod"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "VCardComposer"

    .line 474
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 475
    :cond_0
    const-string v6, "The vCard composer object is not correctly initialized"

    iput-object v6, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    move v6, v9

    .line 516
    :goto_0
    return v6

    .line 480
    :cond_1
    :try_start_0
    iget v6, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    if-ltz v6, :cond_3

    .line 481
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Landroid/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 498
    .local v5, vcard:Ljava/lang/String;
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 502
    iget-boolean v6, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    if-eqz v6, :cond_4

    .line 503
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    .local v2, finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 506
    .local v3, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v3, v5}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v9

    .line 507
    goto :goto_0

    .line 484
    .end local v2           #finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v3           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #vcard:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v6, "VCardComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect mIdColumn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v10

    goto :goto_0

    .line 487
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 488
    .local v0, e:Landroid/pim/vcard/exception/VCardException;
    :try_start_2
    const-string v6, "VCardComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VCardException has been thrown: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/pim/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 498
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v9

    goto/16 :goto_0

    .line 490
    .end local v0           #e:Landroid/pim/vcard/exception/VCardException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 493
    .local v1, error:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v6, "VCardComposer"

    const-string v7, "OutOfMemoryError occured. Ignore the entry."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v10

    goto/16 :goto_0

    .end local v1           #error:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    throw v6

    .line 511
    .restart local v5       #vcard:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 512
    .restart local v3       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v3, v5}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    goto :goto_1

    .end local v3           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_5
    move v6, v10

    .line 516
    goto/16 :goto_0
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 641
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 642
    const-string v0, "VCardComposer"

    const-string/jumbo v1, "terminate() is not called yet. We call it in finalize() step."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer;->terminate()V

    .line 645
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 654
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x0

    .line 657
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, v0, v0}, Landroid/pim/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "contentUri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 410
    if-nez p1, :cond_0

    .line 411
    const/4 v0, 0x0

    .line 462
    :goto_0
    return v0

    .line 414
    :cond_0
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_3

    .line 415
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 417
    .local v8, finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 418
    .local v9, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 420
    .local v7, finished:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v7}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_1

    .line 422
    .end local v7           #finished:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 427
    .end local v8           #finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v9           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 428
    .restart local v9       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_2

    .line 433
    .end local v9           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_4
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/pim/vcard/VCardComposer;->CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 435
    :cond_5
    sget-object v2, Landroid/pim/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    .line 440
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 443
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_7

    .line 444
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 445
    const/4 v0, 0x0

    goto :goto_0

    .line 437
    .end local v2           #projection:[Ljava/lang/String;
    :cond_6
    const-string v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 438
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 448
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer;->getCount()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9

    .line 450
    :cond_8
    :try_start_0
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 455
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 457
    .end local v2           #projection:[Ljava/lang/String;
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 451
    .restart local v2       #projection:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 452
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "VCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    .end local v2           #projection:[Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 455
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_3

    .line 454
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 455
    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    throw v0

    .line 460
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    .line 462
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 402
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/pim/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 666
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v0, 0x0

    .line 669
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public terminate()V
    .locals 6

    .prologue
    .line 623
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 624
    .local v1, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v1}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_0

    .line 627
    .end local v1           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_0
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 629
    :try_start_0
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 636
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/pim/vcard/VCardComposer;->mTerminateIsCalled:Z

    .line 637
    return-void

    .line 630
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 631
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException on Cursor#close(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
