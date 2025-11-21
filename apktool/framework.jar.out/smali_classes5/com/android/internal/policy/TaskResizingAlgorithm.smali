.class public Lcom/android/internal/policy/TaskResizingAlgorithm;
.super Ljava/lang/Object;
.source "TaskResizingAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/TaskResizingAlgorithm$CtrlType;
    }
.end annotation


# static fields
.field public static final blacklist CTRL_BOTTOM:I = 0x8

.field public static final blacklist CTRL_LEFT:I = 0x1

.field public static final blacklist CTRL_NONE:I = 0x0

.field public static final blacklist CTRL_RIGHT:I = 0x2

.field public static final blacklist CTRL_TOP:I = 0x4

.field public static final blacklist MIN_ASPECT:F = 1.2f


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;
    .locals 18

    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p8

    sub-float v4, p0, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-float v5, p1, p3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v8, v6

    sub-int v10, v0, v7

    and-int/lit8 v11, p5, 0x1

    if-eqz v11, :cond_0

    sub-int v4, v9, v4

    iget v12, v3, Landroid/graphics/Point;->x:I

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_0
    and-int/lit8 v12, p5, 0x2

    if-eqz v12, :cond_1

    add-int/2addr v4, v9

    iget v12, v3, Landroid/graphics/Point;->x:I

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v9

    :goto_0
    and-int/lit8 v12, p5, 0x4

    if-eqz v12, :cond_2

    sub-int v5, v10, v5

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_2
    and-int/lit8 v13, p5, 0x8

    if-eqz v13, :cond_3

    add-int/2addr v5, v10

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_3
    move v5, v10

    :goto_1
    int-to-float v13, v4

    int-to-float v14, v5

    div-float/2addr v13, v14

    if-eqz p9, :cond_e

    const v14, 0x3f99999a    # 1.2f

    if-eqz p10, :cond_5

    cmpg-float v15, v13, v14

    if-ltz v15, :cond_4

    goto :goto_2

    :cond_4
    move/from16 p0, v14

    goto :goto_3

    :cond_5
    :goto_2
    if-nez p10, :cond_e

    move/from16 p0, v14

    float-to-double v14, v13

    const-wide v16, 0x3feaaaaa98e38e45L    # 0.8333333002196431

    cmpl-double v13, v14, v16

    if-lez v13, :cond_e

    :goto_3
    if-eqz p10, :cond_7

    iget v13, v3, Landroid/graphics/Point;->x:I

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v14, v13

    div-float v14, v14, p0

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ge v14, v2, :cond_6

    iget v13, v3, Landroid/graphics/Point;->x:I

    int-to-float v14, v2

    mul-float v14, v14, p0

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v14, v2

    :cond_6
    iget v15, v3, Landroid/graphics/Point;->y:I

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v16, v0

    int-to-float v0, v15

    mul-float v0, v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v0, v1, :cond_9

    iget v0, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    div-float v3, v3, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_5

    :cond_7
    move/from16 v16, v0

    iget v0, v3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v13, v0

    mul-float v13, v13, p0

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-ge v13, v2, :cond_8

    iget v0, v3, Landroid/graphics/Point;->x:I

    int-to-float v13, v2

    div-float v13, v13, p0

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v14, v2

    goto :goto_4

    :cond_8
    move v14, v13

    :goto_4
    move v13, v0

    iget v0, v3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v0, v15

    div-float v0, v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v0, v1, :cond_9

    iget v0, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    mul-float v3, v3, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    :goto_5
    move v0, v1

    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v4, v9, :cond_b

    if-le v5, v10, :cond_a

    goto :goto_6

    :cond_a
    move v3, v1

    goto :goto_7

    :cond_b
    :goto_6
    move v3, v2

    :goto_7
    mul-int v4, v13, v14

    mul-int v5, v0, v15

    if-le v4, v5, :cond_c

    move v1, v2

    :cond_c
    if-ne v3, v1, :cond_d

    move v4, v13

    move v5, v14

    goto :goto_8

    :cond_d
    move v4, v0

    move v5, v15

    goto :goto_8

    :cond_e
    move/from16 v16, v0

    :goto_8
    if-eqz v11, :cond_f

    sub-int v6, v8, v4

    goto :goto_9

    :cond_f
    add-int v8, v6, v4

    :goto_9
    if-eqz v12, :cond_10

    sub-int v7, v16, v5

    move/from16 v0, v16

    goto :goto_a

    :cond_10
    add-int v0, v7, v5

    :goto_a
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method
