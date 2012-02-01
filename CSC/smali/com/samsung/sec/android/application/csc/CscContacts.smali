.class public Lcom/samsung/sec/android/application/csc/CscContacts;
.super Ljava/lang/Object;
.source "CscContacts.java"

# interfaces
.implements Lcom/samsung/sec/android/application/csc/Comparable;
.implements Lcom/samsung/sec/android/application/csc/Updatable;


# static fields
.field public static final DATA_URI:Landroid/net/Uri;


# instance fields
.field private final DEFAULT_CSC_FILE:Ljava/lang/String;

.field private final NOERROR:Ljava/lang/String;

.field private final OTHERS_CSC_FILE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mParser:Lcom/samsung/sec/android/application/csc/CscParser;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "content://com.android.contacts/data/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/android/application/csc/CscContacts;->DATA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "NOERROR"

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->NOERROR:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/samsung/sec/android/application/csc/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->OTHERS_CSC_FILE:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->mResolver:Landroid/content/ContentResolver;

    .line 43
    return-void
.end method

.method private updateOthers()V
    .locals 15

    .prologue
    const-string v14, "vnd.sec.contact.phone"

    const-string v13, "raw_contact_id"

    const-string v12, "mimetype"

    const-string v11, "data1"

    const-string v10, "CSCContacts"

    .line 89
    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 91
    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v9, "ContactsData.Information.Name"

    invoke-virtual {v8, v9}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, InformationName:Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v9, "ContactsData.Information.Number"

    invoke-virtual {v8, v9}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, InformationNumber:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 100
    const/4 v7, 0x0

    .line 102
    .local v7, results:[Landroid/content/ContentProviderResult;
    iget-object v8, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "content://com.android.contacts"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4

    .line 103
    .local v4, client:Landroid/content/ContentProviderClient;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v2, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 107
    .local v6, rawContactIdIndex:I
    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 109
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "account_name"

    const-string v9, "vnd.sec.contact.phone"

    invoke-virtual {v3, v8, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 110
    const-string v8, "account_type"

    const-string v9, "vnd.sec.contact.phone"

    invoke-virtual {v3, v8, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 113
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    if-eqz v0, :cond_0

    .line 116
    sget-object v8, Lcom/samsung/sec/android/application/csc/CscContacts;->DATA_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 117
    const-string v8, "raw_contact_id"

    invoke-virtual {v3, v13, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 118
    const-string v8, "mimetype"

    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v12, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 119
    const-string v8, "data1"

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 120
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    if-eqz v1, :cond_1

    .line 123
    sget-object v8, Lcom/samsung/sec/android/application/csc/CscContacts;->DATA_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 124
    const-string v8, "raw_contact_id"

    invoke-virtual {v3, v13, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 125
    const-string v8, "mimetype"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v12, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 126
    const-string v8, "data2"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 127
    const-string v8, "data1"

    invoke-virtual {v3, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 128
    const-string v8, "is_primary"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 129
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 140
    :goto_0
    const-string v8, "CSCContacts"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ** Information Contact "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v2           #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #client:Landroid/content/ContentProviderClient;
    .end local v6           #rawContactIdIndex:I
    .end local v7           #results:[Landroid/content/ContentProviderResult;
    :goto_1
    return-void

    .line 136
    .restart local v2       #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v4       #client:Landroid/content/ContentProviderClient;
    .restart local v6       #rawContactIdIndex:I
    .restart local v7       #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v5

    .line 137
    .local v5, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v2           #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #client:Landroid/content/ContentProviderClient;
    .end local v5           #e:Landroid/content/OperationApplicationException;
    .end local v6           #rawContactIdIndex:I
    .end local v7           #results:[Landroid/content/ContentProviderResult;
    :cond_2
    const-string v8, "CSCContacts"

    const-string v8, " ** Information Contact is not existed "

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    .restart local v2       #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v4       #client:Landroid/content/ContentProviderClient;
    .restart local v6       #rawContactIdIndex:I
    .restart local v7       #results:[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method public compare()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const-string v11, "data1"

    const-string v10, "CscContacts"

    const-string v5, "\'"

    .line 48
    const-string v8, "NOERROR"

    .line 51
    .local v8, answer:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->OTHERS_CSC_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/sec/android/application/csc/CscParser;->getInstance(Ljava/lang/String;)Lcom/samsung/sec/android/application/csc/CscParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    .line 52
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "ContactsData.Information.Name"

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, InformationName:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->mParser:Lcom/samsung/sec/android/application/csc/CscParser;

    const-string v1, "ContactsData.Information.Number"

    invoke-virtual {v0, v1}, Lcom/samsung/sec/android/application/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, InformationNumber:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND display_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, selectString:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "data1"

    aput-object v11, v2, v0

    const/4 v0, 0x1

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "mimetype"

    aput-object v1, v2, v0

    .line 65
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/sec/android/application/csc/CscContacts;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 66
    .local v9, cscCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    const-string v0, "CscContacts"

    const-string v0, " ** Information Contact is not saved "

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "ContactsData.Information"

    .line 74
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selectString:Ljava/lang/String;
    .end local v9           #cscCursor:Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 70
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selectString:Ljava/lang/String;
    .restart local v9       #cscCursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "CscContacts"

    const-string v0, " ** Information Contact is saved "

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selectString:Ljava/lang/String;
    .end local v9           #cscCursor:Landroid/database/Cursor;
    :goto_1
    move-object v0, v8

    .line 74
    goto :goto_0

    .line 73
    :cond_2
    const-string v0, "CscContacts"

    const-string v0, " ** Information Contact is not needed "

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public update()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/sec/android/application/csc/CscContacts;->updateOthers()V

    .line 81
    return-void
.end method
