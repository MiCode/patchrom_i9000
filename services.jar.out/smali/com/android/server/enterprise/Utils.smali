.class public Lcom/android/server/enterprise/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static mLogEnbaled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeToLog(Ljava/lang/String;)V
    .locals 1
    .parameter "logMessage"

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_0

    const-string v0, "DM_Framework_API: "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "logMessage"

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
