.class Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;
.super Ljava/lang/Object;
.source "CscConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfHandle"
.end annotation


# instance fields
.field nwkName:Ljava/lang/String;

.field profActiveSync:Ljava/lang/String;

.field profBrowser:Ljava/lang/String;

.field profDun:Ljava/lang/String;

.field profEmail:Ljava/lang/String;

.field profIm:Ljava/lang/String;

.field profMms:Ljava/lang/String;

.field profStream:Ljava/lang/String;

.field profSupl:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscConnection;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/android/application/csc/CscConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;->this$0:Lcom/samsung/sec/android/application/csc/CscConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfHandle;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;)V

    return-void
.end method
