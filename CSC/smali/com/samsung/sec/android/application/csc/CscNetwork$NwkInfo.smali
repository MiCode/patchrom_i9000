.class Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;
.super Ljava/lang/Object;
.source "CscNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NwkInfo"
.end annotation


# instance fields
.field mMccMnc:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mNoSimSosNumber:Ljava/lang/String;

.field mSosNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscNetwork;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/android/application/csc/CscNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;->this$0:Lcom/samsung/sec/android/application/csc/CscNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/android/application/csc/CscNetwork;Lcom/samsung/sec/android/application/csc/CscNetwork$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/sec/android/application/csc/CscNetwork$NwkInfo;-><init>(Lcom/samsung/sec/android/application/csc/CscNetwork;)V

    return-void
.end method
