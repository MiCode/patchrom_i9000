.class Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;
.super Ljava/lang/Object;
.source "CscConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileType"
.end annotation


# instance fields
.field profile:Lcom/samsung/sec/android/application/csc/CscConnection$Profile;

.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscConnection;

.field type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/android/application/csc/CscConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;->this$0:Lcom/samsung/sec/android/application/csc/CscConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/android/application/csc/CscConnection;Lcom/samsung/sec/android/application/csc/CscConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/samsung/sec/android/application/csc/CscConnection$ProfileType;-><init>(Lcom/samsung/sec/android/application/csc/CscConnection;)V

    return-void
.end method
