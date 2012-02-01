.class Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;
.super Ljava/lang/Object;
.source "CscConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnRecord"
.end annotation


# instance fields
.field apn:Ljava/lang/String;

.field authtype:I

.field mcc:Ljava/lang/String;

.field mmsPort:Ljava/lang/String;

.field mmsProxy:Ljava/lang/String;

.field mmsc:Ljava/lang/String;

.field mnc:Ljava/lang/String;

.field nwkname:Ljava/lang/String;

.field passwd:Ljava/lang/String;

.field port:Ljava/lang/String;

.field profName:Ljava/lang/String;

.field proxy:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscConnection;

.field type:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/android/application/csc/CscConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;->this$0:Lcom/samsung/sec/android/application/csc/CscConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/samsung/sec/android/application/csc/CscConnection$ApnRecord;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;)V

    return-void
.end method
