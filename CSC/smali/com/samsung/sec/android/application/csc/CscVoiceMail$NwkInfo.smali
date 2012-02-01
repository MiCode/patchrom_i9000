.class Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;
.super Ljava/lang/Object;
.source "CscVoiceMail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/android/application/csc/CscVoiceMail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NwkInfo"
.end annotation


# instance fields
.field mMccMnc:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mVoiceMailName:Ljava/lang/String;

.field mVoiceMailNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/sec/android/application/csc/CscVoiceMail;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/android/application/csc/CscVoiceMail;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;->this$0:Lcom/samsung/sec/android/application/csc/CscVoiceMail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/android/application/csc/CscVoiceMail;Lcom/samsung/sec/android/application/csc/CscVoiceMail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/sec/android/application/csc/CscVoiceMail$NwkInfo;-><init>(Lcom/samsung/sec/android/application/csc/CscVoiceMail;)V

    return-void
.end method
