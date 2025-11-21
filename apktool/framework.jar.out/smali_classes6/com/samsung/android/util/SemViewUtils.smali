.class public Lcom/samsung/android/util/SemViewUtils;
.super Ljava/lang/Object;
.source "SemViewUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemViewUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSmoothCornerRectPath(FFF)Landroid/graphics/Path;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SemViewUtils"

    const-string v1, "This method is deprecated. Use getSmoothCornerRectPath(float, float, float, float, float) instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lcom/samsung/android/util/SemViewUtils;->getSmoothCornerRectPath(FFFFF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSmoothCornerRectPath(FFFFF)Landroid/graphics/Path;
    .locals 6

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/util/SemViewUtils;->getSmoothCornerRectPath(Landroid/graphics/Path;FFFFF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSmoothCornerRectPath(Landroid/graphics/Path;FFFFF)Landroid/graphics/Path;
    .locals 35

    move/from16 v2, p3

    move/from16 v0, p4

    if-nez p0, :cond_0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p0

    :goto_0
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    cmpg-float v3, v0, v1

    if-lez v3, :cond_4

    cmpg-float v3, p5, v1

    if-gtz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    div-float v15, v0, v3

    div-float v9, p5, v3

    invoke-static {v15, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move/from16 v4, p1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float v3, v1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v5, v3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v5, :cond_2

    sub-float v4, v3, v4

    const v5, 0x3ecccccd    # 0.4f

    div-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, 0x3e0e1bf0

    mul-float/2addr v4, v5

    sub-float v4, v6, v4

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    float-to-double v10, v3

    const-wide v12, 0x3fe3333333333333L    # 0.6

    cmpl-double v5, v10, v12

    if-lez v5, :cond_3

    const v5, 0x3f19999a    # 0.6f

    sub-float/2addr v3, v5

    const v5, 0x3e99999a    # 0.3f

    div-float/2addr v3, v5

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v5, 0x3d2de440

    mul-float/2addr v3, v5

    add-float/2addr v6, v3

    :cond_3
    add-float v3, p2, v15

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v10, v1, v3

    const v1, 0x430030a4    # 128.19f

    mul-float/2addr v1, v10

    mul-float v11, v1, v4

    sub-float v12, v0, v11

    invoke-static {v15, v12}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float v1, p2, v1

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v16, p2, v0

    const v0, 0x42a73d71    # 83.62f

    mul-float/2addr v0, v10

    mul-float v17, v0, v6

    sub-float v1, v16, v17

    const v0, 0x4286e666    # 67.45f

    mul-float v18, v10, v0

    sub-float v3, v16, v18

    const v0, 0x40947ae1    # 4.64f

    mul-float v19, v10, v0

    add-float v4, v2, v19

    const v0, 0x424ca3d7    # 51.16f

    mul-float v20, v10, v0

    sub-float v5, v16, v20

    const v0, 0x4155c28f    # 13.36f

    mul-float v21, v10, v0

    add-float v6, v2, v21

    move-object v0, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v2, v0

    move v0, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    const v3, 0x420b70a4    # 34.86f

    mul-float v25, v10, v3

    sub-float v5, v16, v25

    const v3, 0x41b08f5c    # 22.07f

    mul-float v26, v10, v3

    add-float v10, p3, v26

    sub-float v3, v16, v26

    add-float v4, p3, v25

    sub-float v13, v16, v21

    add-float v14, p3, v20

    move v8, v11

    move v11, v3

    move v3, v8

    move v8, v12

    move v12, v4

    move v4, v8

    move-object v8, v2

    move v2, v9

    move v9, v5

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v5, p5

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move v7, v13

    move/from16 v31, v14

    sub-float v9, v16, v19

    add-float v10, p3, v18

    add-float v12, p3, v17

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v14, p3, v6

    move/from16 v13, v16

    move/from16 v11, v16

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v13, v5, v3

    invoke-static {v2, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v6, p3, v6

    invoke-virtual {v8, v11, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v14, p3, v5

    move v5, v4

    sub-float v4, v14, v17

    sub-float v6, v14, v18

    move/from16 v16, v2

    move-object v2, v8

    sub-float v8, v14, v20

    move/from16 p0, v11

    move v11, v3

    move/from16 v3, p0

    move/from16 p0, v0

    move v0, v5

    move v5, v9

    move/from16 v9, v16

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v16, v4

    move/from16 v32, v6

    move/from16 v33, v8

    sub-float v4, v14, v25

    sub-float v6, v14, v26

    sub-float v8, v14, v21

    move/from16 v7, v23

    move/from16 v5, v27

    move/from16 v3, v29

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v23, v4

    move/from16 v27, v6

    move/from16 v29, v8

    sub-float v4, v14, v19

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v7, p2, v0

    move v8, v14

    move/from16 v3, p0

    move v5, v1

    move v6, v14

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v34, v6

    move v6, v4

    move/from16 v4, v34

    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v0, p2, v0

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v3, p2, v17

    add-float v1, p2, v18

    add-float v7, p2, v20

    move v5, v1

    move/from16 v8, v29

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v14, v3

    move/from16 v17, v5

    move/from16 v18, v7

    add-float v3, p2, v25

    add-float v5, p2, v26

    add-float v7, p2, v21

    move/from16 v6, v23

    move/from16 v4, v27

    move/from16 v8, v33

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v8, v5

    move/from16 v20, v7

    move v7, v3

    add-float v1, p2, v19

    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v6, p3, v0

    move/from16 v5, p2

    move/from16 v3, p2

    move-object v0, v2

    move/from16 v4, v16

    move/from16 v2, v32

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v2, v3

    move v3, v1

    move v1, v2

    move-object v2, v0

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v0, p3, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v0, v2

    move v4, v10

    move v2, v12

    move/from16 v5, v20

    move/from16 v6, v31

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v2, v0

    move v5, v7

    move v3, v8

    move/from16 v7, v18

    move/from16 v8, v24

    move/from16 v6, v28

    move/from16 v4, v30

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v5, p2, v0

    move/from16 v6, p3

    move/from16 v4, p3

    move-object v0, v2

    move v3, v14

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    return-object v2

    :cond_4
    :goto_2
    move/from16 v5, p5

    move-object v2, v8

    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IllegalArguments : width="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", Callers="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemViewUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v2
.end method

.method public static blacklist isDeviceDefaultFamily(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x11200b3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public static blacklist isLightTheme(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1010590

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
