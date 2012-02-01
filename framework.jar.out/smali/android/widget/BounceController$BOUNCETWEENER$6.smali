.class final Landroid/widget/BounceController$BOUNCETWEENER$6;
.super Ljava/lang/Object;
.source "BounceController.java"

# interfaces
.implements Landroid/widget/BounceController$Tweener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceController$BOUNCETWEENER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .locals 7
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const v2, 0x3e6353f8

    const/high16 v6, 0x3f80

    const v5, 0x3ecccccd

    const v4, 0x40490fdb

    const/high16 v3, 0x3f00

    const/4 v0, 0x0

    .local v0, ret:F
    if-eqz p1, :cond_3

    const v1, 0x3e926e98

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    const/high16 v1, 0x4060

    mul-float/2addr v1, p2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    sub-float v0, v6, v1

    :goto_0
    cmpl-float v1, v0, v6

    if-lez v1, :cond_7

    const/high16 v0, 0x3f80

    :cond_0
    :goto_1
    return v0

    :cond_1
    const v1, 0x3f249ba6

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    const v1, 0x3e926e98

    sub-float v1, p2, v1

    const v2, 0x40333333

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float v0, v5, v1

    goto :goto_0

    :cond_2
    const v1, 0x3f249ba6

    sub-float v1, p2, v1

    const v2, 0x40333333

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float/2addr v1, v5

    sub-float v0, v5, v1

    goto :goto_0

    :cond_3
    cmpg-float v1, p2, v2

    if-gez v1, :cond_4

    const/high16 v1, 0x4090

    mul-float/2addr v1, p2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    goto :goto_0

    :cond_4
    const v1, 0x3ee353f8

    cmpg-float v1, p2, v1

    if-gez v1, :cond_5

    sub-float v1, p2, v2

    const/high16 v2, 0x4090

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    sub-float v0, v6, v1

    goto :goto_0

    :cond_5
    const v1, 0x3f38d4fe

    cmpg-float v1, p2, v1

    if-gez v1, :cond_6

    const v1, 0x3ee353f8

    sub-float v1, p2, v1

    const v2, 0x40666666

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float v0, v5, v1

    goto :goto_0

    :cond_6
    const v1, 0x3f38d4fe

    sub-float v1, p2, v1

    const v2, 0x40666666

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float/2addr v1, v5

    sub-float v0, v5, v1

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1
.end method
