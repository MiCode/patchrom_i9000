.class Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LogsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/LogsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 60
    const-string v0, "logs.db"

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 61
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 64
    const-string v0, "CREATE TABLE logs (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,address TEXT,date INTEGER,duration INTEGER,type INTEGER,new INTEGER,name TEXT,name_reversed TEXT,numbertype INTEGER,numberlabel TEXT,messageid TEXT,logtype INTEGER NOT NULL,frequent INTEGER,contactid INTEGER NOT NULL,raw_contact_id INTEGER,m_subject TEXT,m_content TEXT,sns_tid TEXT,sns_pkey TEXT,account_name TEXT,sns_receiver_count TEXT,sp_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string v0, "CREATE TABLE sns_msg_receiver_map (_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER,receiver_id TEXT,receiver_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v0, "CREATE TABLE duration_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,last_voice INTEGER,last_video INTEGER,dial_voice INTEGER,dial_video INTEGER,rece_voice INTEGER,rece_video INTEGER,all_voice INTEGER,all_video INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "INSERT INTO duration_table VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "CREATE TRIGGER duration_update INSERT ON logs BEGIN UPDATE duration_table SET last_voice = new.duration WHERE new.logtype = 100;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 500;UPDATE duration_table SET dial_voice = dial_voice + new.duration WHERE new.logtype = 100 AND new.type = 2;UPDATE duration_table SET dial_video = dial_video + new.duration WHERE new.logtype = 500 AND new.type = 2;UPDATE duration_table SET rece_voice = rece_voice + new.duration WHERE new.logtype = 100 AND new.type = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 500 AND new.type = 1;UPDATE duration_table SET all_voice = all_voice + new.duration WHERE new.logtype = 100;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 500; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const-string v0, "CREATE INDEX sns_map_id ON sns_msg_receiver_map (_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v0, "CREATE INDEX sns_message_id ON sns_msg_receiver_map (message_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    const-string v0, "CREATE INDEX logs_contact_id ON logs (contactid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v0, "CREATE INDEX logs_message_id ON logs (messageid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string v0, "CREATE INDEX logs_log_type ON logs (logtype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 148
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "DROP TABLE IF EXISTS logs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const-string v0, "DROP TABLE IF EXISTS sns_msg_receiver_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    const-string v0, "DROP TABLE IF EXISTS duration_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 155
    return-void
.end method
