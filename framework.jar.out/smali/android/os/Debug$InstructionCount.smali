.class public Landroid/os/Debug$InstructionCount;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstructionCount"
.end annotation


# static fields
.field private static final NUM_INSTR:I = 0x100


# instance fields
.field private mCounts:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    .line 846
    return-void
.end method


# virtual methods
.method public collect()Z
    .locals 2

    .prologue
    .line 870
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->stopInstructionCounting()V

    .line 871
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    invoke-static {v1}, Ldalvik/system/VMDebug;->getInstructionCount([I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 872
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 873
    .local v0, uoe:Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public globalMethodInvocations()I
    .locals 3

    .prologue
    .line 894
    const/4 v0, 0x0

    .line 897
    .local v0, count:I
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x6e

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 898
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x6f

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 899
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x70

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 900
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 901
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x72

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 902
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x74

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 903
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 904
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x76

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 905
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x77

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 906
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0x78

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 908
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0xf8

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 909
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0xf9

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 910
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0xfa

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 911
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    const/16 v2, 0xfb

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 912
    return v0
.end method

.method public globalTotal()I
    .locals 3

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 884
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 885
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 884
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :cond_0
    return v0
.end method

.method public resetAndStart()Z
    .locals 2

    .prologue
    .line 856
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->startInstructionCounting()V

    .line 857
    invoke-static {}, Ldalvik/system/VMDebug;->resetInstructionCount()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 858
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 859
    .local v0, uoe:Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    goto :goto_0
.end method
